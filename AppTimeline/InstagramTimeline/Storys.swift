//
//  Storys.swift
//  AppTimeline
//
//  Created by Doniyor on 18/06/22.
//

import SwiftUI

struct Storys: View {
    var avatarImage: String = "avatar_1"
    var avatarName: String = "Lily Amora"
    
    var body: some View {
        VStack {
            Image(avatarImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(25)
                .frame(width: 65, height: 65)
                .overlay(
                    RoundedRectangle(cornerRadius: 35)
                        .stroke(Color.red, lineWidth: 2)
                )
                
            Text(avatarName)
                .font(.footnote)
        }
        .padding(.all, 3)
    }
}

struct Storys_Previews: PreviewProvider {
    static var previews: some View {
        Storys()
    }
}
