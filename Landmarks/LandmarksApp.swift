//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Mohammad Saifullah on 28/12/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
