//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let workingDictionary = ["nameKey" : "Derek", "ageKey" : 28, "favMovieKey" : "Zoolander"]
let brokenDictionary = ["nameKey" : "Steve", "ageKey" : 27]

class Person {
    
    let nameKey = "nameKey"
    let ageKey = "ageKey"
    let favMovieKey = "favMovieKey"
    
    var name: String
    let age: Int
    let favMovie: String
    
    init?(dictionary: [String: AnyObject]) {
        guard let name = dictionary[nameKey] as? String, let age = dictionary[ageKey] as? Int, let favoriteMovie = dictionary[favMovieKey] as? String else {
            return nil
        }
        
        self.name = name
        self.age = age
        self.favMovie = favoriteMovie
    }
    
    var dictionaryRepresentation: [String: AnyObject] {
        let workingDictionary: [String: AnyObject] = ["nameKey": "Derek", "ageKey": 28, "favMovieKey": "Zoolander"]
        return workingDictionary
    }
}

