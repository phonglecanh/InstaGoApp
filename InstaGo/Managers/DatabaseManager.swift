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
    public func createUser(newUser: User, completion: @escaping(Bool) -> Void) {
        let reference = database.document("users/\(newUser.username)")
        guard let data = newUser.asDictionary() else {
            completion(true)
            return
        }
            
        reference.setData([:]) { error in
            completion(error == nil)
        }
    }
}
