//
//  TaxAIWebView.swift
//  TaxAI
//
//  Created by 트루디 on 7/7/25.
//

import SwiftUI
import WebKit

struct TaxAIWebView: View {
    private let url = URL(string: "https://taxai.kr")!
    @StateObject private var controller = WebViewController()
    
    var body: some View {
        VStack(spacing:0) {
            WebView(url: url, controller: controller)
            Rectangle()
                .fill(.gray.opacity(0.3))
                    .frame(height: 1)
                    .edgesIgnoringSafeArea(.horizontal)
            WebToolbar(controller: controller, homeURL: url)
                .frame(height: 40/852 * UIScreen.main.bounds.height)
                .frame(minHeight: 40)
                .padding(.horizontal)
        }
    }
}

#Preview {
    TaxAIWebView()
}
