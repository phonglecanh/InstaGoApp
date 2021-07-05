//
//  AnalyticsManager.swift
//  InstaGo
//
//  Created by Lê Cảnh Phong on 05/07/2021.
//

import Foundation
import FirebaseAnalytics

final class AnalyticsManager {
    static let shared = AnalyticsManager()
    
    private init() {}
    
    func logEvent() {
        Analytics.logEvent("", parameters: [:])
    }
}
 
