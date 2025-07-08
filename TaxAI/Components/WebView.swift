//
//  WebView.swift
//  TaxAI
//
//  Created by 트루디 on 7/7/25.
//

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
