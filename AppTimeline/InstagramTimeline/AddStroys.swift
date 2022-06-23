//
//  AddStroys.swift
//  AppTimeline
//
//  Created by Doniyor on 18/06/22.
//

import SwiftUI

struct AddStroys: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image("avatar_1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(25)
                    .frame(width: 65, height: 65)
                    .overlay(
                        RoundedRectangle(cornerRadius: 35)
                            .stroke(Color.red, lineWidth: 2)
                )
                
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(.green)
                    .background(
                        Circle()
                            .fill(Color.white)
                            .frame(width: 10, height: 10)
                    )
            }
                
            Text("Lily Amora")
                .font(.footnote)
        }
        .padding(.all, 3)
    }
}

struct AddStroys_Previews: PreviewProvider {
    static var previews: some View {
        AddStroys()
    }
}
