//
//  PlayerView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 24/05/21.
//

import SwiftUI
import AVKit

protocol ViewLifecycleDelegate {
    func onAppear()
    func onDisappear()
}

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
    let lifecycleDelegate: ViewLifecycleDelegate?
    
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
            self.lifecycleDelegate?.onAppear()
        }
        .onDisappear {
            self.lifecycleDelegate?.onDisappear()
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
        
        let childView = UIHostingController(rootView: PlayerView(videos: self.$videos, lifecycleDelegate: context.coordinator))
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
    
    class Coordinator : NSObject, UIScrollViewDelegate, ViewLifecycleDelegate{
        
        var parent : PlayerPageView
        var index = 0
        init(parent1 : PlayerPageView) {
            parent = parent1
        }
        
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let currentindex = Int(scrollView.contentOffset.y / UIScreen.main.bounds.height)
            
            if index != currentindex{
                parent.videos[index].player.seek(to: .zero)
                parent.videos[index].player.pause()
                index = currentindex
                parent.videos[index].player.play()
                parent.videos[index].player.actionAtItemEnd = .none
                NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: parent.videos[index].player.currentItem, queue: .main) { (_) in
                    self.parent.videos[self.index].player.seek(to: .zero)
                    self.parent.videos[self.index].player.play()
                }
            }
        }
        
        func onAppear() {
            parent.videos[self.index].player.seek(to: .zero)
            parent.videos[self.index].player.play()
        }
        
        func onDisappear() {
            parent.videos[self.index].player.seek(to: .zero)
            parent.videos[self.index].player.pause()
        }

    }
}
