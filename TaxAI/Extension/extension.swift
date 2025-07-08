//
//  extension.swift
//  TaxAI
//
//  Created by 트루디 on 7/7/25.
//
import SwiftUI

extension View {
    func iconStyle() -> some View {
        self
            .font(.system(
                size: min(20, 20 / 852 * UIScreen.main.bounds.height),
                weight: .semibold
            ))            .foregroundStyle(Color.main)
            .padding(.horizontal)
    }
}
