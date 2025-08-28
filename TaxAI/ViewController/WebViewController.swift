//
//  WebViewController.swift
//  TaxAI
//
//  Created by 트루디 on 7/7/25.
//

import WebKit
import SwiftUI

// 앞으로 가기, 뒤로 가기 등 웹 뷰 기능
class WebViewController: ObservableObject {
    var webView: WKWebView?

    // 뒤로가기
    func goBack() {
        webView?.goBack()
    }
    
    // 앞으로 가기
    func goForward() {
        webView?.goForward()
    }
    
    // 새로고침
    func refresh() {
        webView?.reload()
    }

    // 홈버튼
    func goHome(url: URL) {
        webView?.load(URLRequest(url: url))
    }
    
    // 공유하기
    func share(from viewController: UIViewController) {
//        guard let url = webView?.url else { return }
        let url = webView?.url ?? URL(string: "https://taxai.kr")!


        let activityVC = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        viewController.present(activityVC, animated: true)
    }
}
