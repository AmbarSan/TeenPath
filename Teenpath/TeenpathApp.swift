//
//  TeenpathApp.swift
//  Teenpath
//
//  Created by Ámbar Aguilar Sánchez on 18/07/26.
//

import SwiftUI

@main
struct TeenPathApp: App {

    @State private var isShowingSplash = true

    var body: some Scene {
        WindowGroup {
            ZStack {
                ContentView()

                if isShowingSplash {
                    SplashScreenView()
                        .transition(.opacity)
                        .zIndex(1)
                }
            }
            .task {
                try? await Task.sleep(for: .seconds(3))

                withAnimation(.easeInOut(duration: 0.45)) {
                    isShowingSplash = false
                }
            }
        }
    }
}
