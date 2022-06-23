//
//  AppTimelineApp.swift
//  AppTimeline
//
//  Created by Doniyor on 17/06/22.
//

import SwiftUI

@main
struct AppTimelineApp: App {
    var body: some Scene {
        WindowGroup {
            StarterView()
        }
    } 
}

extension UIScreen {
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
