//
//  Posts.swift
//  AppTimeline
//
//  Created by Doniyor on 18/06/22.
//

import SwiftUI

struct Posts: View {
    var avatarImage: String = "avatar_1"
    var avatarName: String = "name_1"
    var postImages_1: String = "image_1"
    var postImages_2: String = "image_3"
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(avatarImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45, height: 45)
                    .cornerRadius(25)
                    .padding(.leading, -10)
                
                Text(avatarName)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("||")
                    .fontWeight(.semibold)
                Button {
                    
                } label: {
                    HStack {
                        Text("Follow")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                    }
                }
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "location")
                        .foregroundColor(.blue)
                }


            }
            
            HStack(spacing: 0) {
                Image(postImages_1)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width / 2, height: 300)
                 
                Image(postImages_2)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width / 2, height: 300)
            }
            .padding(.horizontal, -10)
            
            HStack(spacing: 10) {
                Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            .foregroundColor(.blue)
            .padding(.vertical, 5)
            
            Text("Liked John and 1245 others")
                .font(.caption)
                .fontWeight(.semibold)
                .padding(.bottom, 5)
            Text("This is so fantastic! I like it 🤯 I think this is best photo all of time! 🔥🔥🔥")
                .lineLimit(4)
                .font(.subheadline)
                .padding(.bottom, 10)
        }
    }
}

struct Posts_Previews: PreviewProvider {
    static var previews: some View {
        Posts()
    }
}
