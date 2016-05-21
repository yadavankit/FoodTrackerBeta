//
//  Meal.swift
//  FoodTracker
//
//  Created by Ankit Yadav on 22/05/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit

class Meal
{
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialization
    // Failable Initializer
    init?(name: String, photo: UIImage?, rating: Int)
    {
        //Initialize Stored Properties
        self.name = name
        self.photo = photo
        self.rating = rating
        
        //Initialization shoud fail if rating is negative or name is nil
        if name.isEmpty || rating < 0
        {
            return nil
        }
    }
    
    
}
