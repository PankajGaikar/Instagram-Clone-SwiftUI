//
//  ReelInfoView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 24/05/21.
//

import SwiftUI

struct ReelInfoView: View {
    var body: some View {
        VStack{
            Spacer()
            HStack {
                Spacer()
                VStack(spacing: 10){
                    Button(action: {
                        
                    }) {
                        Image("pic")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                    }
                    
                    Button(action: {
                        
                    }) {
                        
                        VStack(spacing: 8){
                            Image(systemName: "heart")
                                .font(.title)
                                .foregroundColor(.white)
                            Text("1M")
                                .foregroundColor(.white)
                        }
                    }
                    
                    Button(action: {
                        
                    }) {
                        
                        VStack(spacing: 8){
                            Image(systemName: "message")
                                .font(.title)
                                .foregroundColor(.white)
                            Text("27.2k")
                                .foregroundColor(.white)
                        }
                    }
                    
                    Button(action: {
                        
                    }) {
                        
                        VStack(spacing: 8){
                            Image(systemName: "arrowshape.turn.up.right")
                                .font(.title)
                                .foregroundColor(.white)
                            Text("Share")
                                .foregroundColor(.white)
                        }
                    }
                    
                    Button(action: {
                        
                    }) {
                        Image("menu")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                    }
                    
                    Image("user_13")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 3))
                }
                .padding(.bottom, 60)
                .padding(.trailing)
            }
        }
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
        .padding(.bottom, (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! + 5)
    }
}

struct ReelInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ReelInfoView()
    }
}
