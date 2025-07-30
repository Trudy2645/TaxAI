//
//  CustomTabBarView.swift
//  TaxAI
//
//  Created by 트루디 on 7/7/25.
//

import SwiftUI

struct CustomTabBarView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    let controller: WebViewController
    let homeURL: URL
    
    var isPad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }

    var body: some View {
        HStack(spacing: 0) {
            // 뒤로 가기
            toolbarButton(action: { controller.goBack() }, imageName: "icon_Chevron_left", isPad: isPad)
            Spacer()
            
            // 앞으로 가기
            toolbarButton(action: { controller.goForward() }, imageName: "icon_Chevron_right", isPad: isPad)
            Spacer()
            
            // 새로고침
            toolbarButton(action: { controller.refresh() }, imageName: "icon_Refresh", isPad: isPad)
            Spacer()

            // 홈으로 가기
            toolbarButton(action: { controller.goHome(url: homeURL) }, imageName: "icon_Home", isPad: isPad)
            Spacer()

            // 공유하기
            toolbarButton(action: {
                if let rootVC = UIApplication.shared.connectedScenes
                    .compactMap({ $0 as? UIWindowScene })
                    .first?.windows
                    .first(where: { $0.isKeyWindow })?.rootViewController {
                    controller.share(from: rootVC)
                }
            }, imageName: "icon_Share", isPad: isPad)
        }
        .padding(.horizontal, isPad ? 30 : 16)
    }
}
