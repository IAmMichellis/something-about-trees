//
//  Tree.swift
//  Branches
//
//  Created by Michelle Ellis on 2021-04-16.
//

import UIKit

class Tree {
    
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int = 0) {
        
        guard !name.isEmpty else {
            
         return nil
        }
        
        guard rating >= 0 && rating <= 5 else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}

