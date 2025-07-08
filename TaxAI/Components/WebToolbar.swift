//
//  WebToolbar.swift
//  TaxAI
//
//  Created by 트루디 on 7/7/25.
//

import SwiftUI

struct WebToolbar: View {
    let controller: WebViewController
    let homeURL: URL
    
    var body: some View {
        HStack(alignment: .center) {
            // 뒤로 가기
            Button(action: { controller.goBack() }) {
                Image(systemName: "chevron.backward")
            }
            Spacer()
            // 앞으로 가기
            Button(action: { controller.goForward() }) {
                Image(systemName: "chevron.forward")
            }
            Spacer()
            // 새로고침
            Button(action: { controller.refresh() }) {
                Image(systemName: "arrow.clockwise")
            }
            Spacer()
            // 홈으로 가기
            Button(action: { controller.goHome(url: homeURL) }) {
                Image(systemName: "house")
            }
            Spacer()
            // 공유하기
            Button(action: {
                if let rootVC = UIApplication.shared.connectedScenes
                        .compactMap({ $0 as? UIWindowScene })
                        .first?.windows
                        .first(where: { $0.isKeyWindow })?.rootViewController {
                        controller.share(from: rootVC)
                    }
            }) {
                Image(systemName: "square.and.arrow.up")    
            }
        }
        .iconStyle()
    }
}

