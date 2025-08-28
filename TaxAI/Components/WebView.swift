//
//  WebView.swift
//  TaxAI
//
//  Created by 트루디 on 7/7/25.
//

// SwiftUI에서 URL을 받아서 웹뷰 띄우고, WebViewController를 통해 제어할 수 있게 해주는 래퍼
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL
    @ObservedObject var controller: WebViewController

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        controller.webView = webView
        webView.load(URLRequest(url: url))
        
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
