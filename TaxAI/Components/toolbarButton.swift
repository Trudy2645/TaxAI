//
//  toolbarButton.swift
//  TaxAI
//
//  Created by 트루디 on 7/30/25.
//

import SwiftUI

// 공통 버튼 생성 함수
func toolbarButton(action: @escaping () -> Void, imageName: String, isPad: Bool) -> some View {
    Button(action: action) {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: isPad ? 30/1133 * UIScreen.main.bounds.height : 24/852 * UIScreen.main.bounds.height)
    }
}
