//
//  StorageManager.swift
//  InstaGo
//
//  Created by Lê Cảnh Phong on 05/07/2021.
//

import Foundation

import Foundation
import FirebaseStorage

final class StorageManager {
    static let shared = StorageManager()
    
    private init() {}
    let storage = Storage.storage()
}
