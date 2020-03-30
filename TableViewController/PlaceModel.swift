//
//  PlaceModel.swift
//  TableViewController
//
//  Created by Sergey Vorobey on 25/01/2020.
//  Copyright © 2020 Сергей. All rights reserved.
//

import RealmSwift


class Place: Object {

    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    @objc dynamic var restaurantImage: String?
    @objc dynamic var date = Date()
    
    convenience init(name: String, location: String?, type: String?, imageData: Data?) {
        self.init()
        self.name = name
        self.location = location
        self.type = type
        self.imageData = imageData
    }
    
}
