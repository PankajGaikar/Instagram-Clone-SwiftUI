//
//  PlayerView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 24/05/21.
//

import SwiftUI
import AVKit

struct Player : UIViewControllerRepresentable {
    
    var player : AVPlayer
    
    func makeUIViewController(context: Context) -> AVPlayerViewController{
        let view = AVPlayerViewController()
        view.player = player
        view.showsPlaybackControls = false
        view.videoGravity = .resizeAspectFill
        return view
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        
    }
}

struct PlayerView : View {
    @Binding var videos : [Video]
    
    var body: some View{
        VStack(spacing: 0){
            ForEach(0..<self.videos.count){i in
                ZStack{
                    Player(player: self.videos[i].player)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .offset(y: -5)
                    ReelInfoView(video: self.videos[i])
                }
            }
        }
        .onAppear {
            self.videos[0].player.play()
            self.videos[0].player.actionAtItemEnd = .none
            NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: self.videos[0].player.currentItem, queue: .main) { (_) in
                self.videos[0].player.seek(to: .zero)
                self.videos[0].player.play()
            }
        }
        .onDisappear {
            for i in 0..<videos.count{
                videos[i].player.seek(to: .zero)
                videos[i].player.pause()
            }
        }
    }
}

struct PlayerPageView : UIViewRepresentable {

    func makeCoordinator() -> Coordinator {
        return PlayerPageView.Coordinator(parent1: self)
    }
    
    @Binding var videos : [Video]
    
    func makeUIView(context: Context) -> UIScrollView{
        
        let view = UIScrollView()
        
        let childView = UIHostingController(rootView: PlayerView(videos: self.$videos))
        childView.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((videos.count)))
        view.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((videos.count)))
        
        view.addSubview(childView.view)
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        view.contentInsetAdjustmentBehavior = .never
        view.isPagingEnabled = true
        view.delegate = context.coordinator
        return view
    }
    
    func updateUIView(_ uiView: UIScrollView, context: Context) {
        uiView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((videos.count)))
        
        for i in 0..<uiView.subviews.count{
            uiView.subviews[i].frame = CGRect(x: 0, y: 0,width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((videos.count)))
        }
    }
    
    class Coordinator : NSObject,UIScrollViewDelegate{
        
        var parent : PlayerPageView
        var index = 0
        
        init(parent1 : PlayerPageView) {
            parent = parent1
        }
        
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let currentindex = Int(scrollView.contentOffset.y / UIScreen.main.bounds.height)
            
            if index != currentindex{
                index = currentindex
                
                for i in 0..<parent.videos.count{
                    parent.videos[i].player.seek(to: .zero)
                    parent.videos[i].player.pause()
                }
                parent.videos[index].player.play()
                parent.videos[index].player.actionAtItemEnd = .none
                NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: parent.videos[index].player.currentItem, queue: .main) { (_) in
                    self.parent.videos[self.index].player.seek(to: .zero)
                    self.parent.videos[self.index].player.play()
                }
            }
        }
    }
}
