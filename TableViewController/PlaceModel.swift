//
//  PlaceModel.swift
//  TableViewController
//
//  Created by Sergey Vorobey on 25/01/2020.
//  Copyright © 2020 Сергей. All rights reserved.
//

import Foundation


struct Place {

    var name: String
    var lotation: String
    var type: String
    var image: String
    
    static let restaurantNames = [
            "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
            "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
            "Speak Easy", "Morris Pub", "Вкусные истории",
            "Классик", "Love&Life", "Шок", "Бочка"
        ]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantNames {
            
            places.append(Place(name: place, lotation: "Moscow", type: "Fast-Food", image: place))
        }
        
        return places
    }
    
}
