//
//  StarterView.swift
//  AppTimeline
//
//  Created by Doniyor on 18/06/22.
//

import SwiftUI

struct StarterView: View {
    @State var status = UserDefaults.standard.value(forKey: "Status") as? Bool ?? false
    
    var body: some View {
        VStack {
            if self.status {
                HomeView()
            } else {
                SignInView()
            }
        }
        .onAppear {
            let name = NSNotification.Name("Status")
            NotificationCenter.default.addObserver(forName: name, object: nil, queue: .main) { _ in
                print("Call Notification Center!")
                self.status = UserDefaults.standard.value(forKey: "Status") as? Bool ?? false
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
