//
//  ProfileControlButtonsView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 23/05/21.
//

import SwiftUI

struct ProfileControlButtonsView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            Button(action:{

            }){
                Text("Edit Profile")
                    .font(Font.system(size: 13, weight: .medium))
                    .padding(.vertical, 9)
                    .foregroundColor(.primary)
                    .frame(maxWidth: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.primary, lineWidth: 0.2)
                    )
            }
            .padding(.leading)

            Button(action:{

            }){
                Text("Saved")
                    .font(Font.system(size: 13, weight: .medium))
                    .padding(.vertical, 9)
                    .foregroundColor(.primary)
                    .frame(maxWidth: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.primary, lineWidth: 0.2)
                    )
            }
            .padding(.trailing)
        }
    }
}

struct ProfileControlButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileControlButtonsView()
    }
}
