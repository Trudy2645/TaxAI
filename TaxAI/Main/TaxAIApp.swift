//
//  TaxAIApp.swift
//  TaxAI
//
//  Created by 트루디 on 7/7/25.
//

import SwiftUI

// 앱 실행시 보여주는 곳
@main
struct TaxAIApp: App {
    var body: some Scene {
        WindowGroup {
            TaxAIWebView()
                .onAppear {
                    TrackingPermissionManager.requestPermission()
                }
        }
    }
}
