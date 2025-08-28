//
//  TrackingPermissionManager.swift
//  TaxAI
//
//  Created by 트루디 on 8/28/25.
//

import Foundation
import AppTrackingTransparency
import AdSupport

// 추적 허용 요청 -> 앱 처음 켤 때 한 번만 나옴. 권한 거부시 설정 앱으로 이동해야만 변경 가능
struct TrackingPermissionManager {
    static func requestPermission() {
        if #available(iOS 14, *) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                ATTrackingManager.requestTrackingAuthorization { status in
                    switch status {
                    case .authorized:
                        print("권한 허용됨")
                    case .denied:
                        print("권한 거부됨")
                    case .restricted:
                        print("제한됨")
                    case .notDetermined:
                        print("아직 선택하지 않음")
                    @unknown default:
                        break
                    }
                }
            }
        }
    }
}
