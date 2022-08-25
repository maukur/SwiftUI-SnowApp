//
//  SnowApp.swift
//  SnowApp
//
//  Created by Artem Tischenko on 25/8/2022.
//

import SwiftUI

@main
struct SnowApp: App {
    var body: some Scene {
        WindowGroup {
            ZStack {
                Image("bg")
                SnowView()
            }.ignoresSafeArea()
        }
    }
}
