//
//  Character.swift
//  Rick and Morty API Homework
//
//  Created by Serper Kurmanbek on 10.01.2024.
//

import Foundation
import SwiftyJSON

struct Character {
    var name = ""
    var gender = ""
    var species = ""
    var image = ""
    var url  = ""
    
    
    init(){
        
    }
    
    init(json:JSON) {
        if let item = json["name"].string {
            name = item
        }
        if let item = json["gender"].string {
            gender = item
        }
        if let item = json["species"].string {
            species = item
        }
        if let item = json["image"].string {
            image = item
        }
        if let item = json["url"].string {
            url = item
        }
    }
    
}
