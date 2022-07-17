//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by Magued Fouad on 7/17/22.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
