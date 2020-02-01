//
//  StorageManager.swift
//  TableViewController
//
//  Created by Sergey Vorobey on 31/01/2020.
//  Copyright © 2020 Сергей. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place ) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}
