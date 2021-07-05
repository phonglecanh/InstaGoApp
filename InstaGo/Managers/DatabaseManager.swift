//
//  DatabaseManager.swift
//  InstaGo
//
//  Created by Lê Cảnh Phong on 05/07/2021.
//

import Foundation
import FirebaseFirestore

final class DatabaseManager {
    static let shared = DatabaseManager()
    
    private init() {}
    let database = Firestore.firestore()
}
