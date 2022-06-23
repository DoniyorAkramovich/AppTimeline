//
//  HomeView.swift
//  AppTimeline
//
//  Created by Doniyor on 18/06/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(showsIndicators: false) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            AddStroys()
                            Storys(avatarImage: "avatar_2", avatarName: "John Kelly")
                            Storys(avatarImage: "avatar_3", avatarName: "Susan Jr.")
                            Storys(avatarImage: "avatar_1", avatarName: "Helena")
                            Storys(avatarImage: "avatar_2", avatarName: "Adam Smith")
                            Storys(avatarImage: "avatar_3", avatarName: "Tailor Swift.")
                            Storys(avatarImage: "avatar_1", avatarName: "Dua Lipa")
                            Storys(avatarImage: "avatar_2", avatarName: "John Kelly")
                            Storys(avatarImage: "avatar_3", avatarName: "Susan Jr.")
                            Storys(avatarImage: "avatar_1", avatarName: "Lilly")
                        }
                    }
                    
                    VStack {
                        Posts(avatarImage: "avatar_3", avatarName: "Samanta Rose", postImages_1: "image_1", postImages_2: "image_2")
                        Posts(avatarImage: "avatar_1", avatarName: "Helena Ruby", postImages_1: "image_3", postImages_2: "image_1")
                        Posts(avatarImage: "avatar_2", avatarName: "Richard Gage", postImages_1: "image_2", postImages_2: "image_3")
                        Posts(avatarImage: "avatar_3", avatarName: "Anna Carlson", postImages_1: "image_1", postImages_2: "image_2")
                        Posts(avatarImage: "avatar_2", avatarName: "Boby Rush", postImages_1: "image_3", postImages_2: "image_1")
                    }
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarTitle("Home Page", displayMode: .inline)
            
            .navigationBarItems(
                leading: Button(action: { }, label: { Image(systemName: "camera") .foregroundColor(.red)}),
                trailing: Button(
                    action: {
                        UserDefaults.standard.set(false, forKey: "Status")
                        NotificationCenter.default.post(name: NSNotification.Name("Status"), object: nil)
                    }, label: {
                        Image(systemName: "person")
                            .foregroundColor(.red)
                    }
                )
            )
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
