//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Jane Appleseed on 5/23/15.
//  Copyright © 2015 Apple Inc. All rights reserved.
//

import UIKit
import XCTest

class FoodTrackerTests: XCTestCase
{
    //MARK: FoodTracker Tests
    
    //Test to confirm that Meal Initializer returns when no name or negative rating provided
    func testMealInitialization()
    {
        //Success Case
        let potentialItem = Meal(name: "Beleryn Sandwich", photo: nil, rating: 5)
        
        //Tests that Meal object is not nil after initialization, successfully meal created
        XCTAssertNotNil(potentialItem)
        
        //Failure Case
        let noName = Meal(name: "", photo: nil, rating: 8)
        
        //Meal Not Created
        XCTAssertNil(noName, "Empty Name is Invalid")
        
        //Yet Another Bad Case
        let badRating = Meal(name: "Mc Egg", photo: nil, rating: -2)
        
        //Assert Not nil
        XCTAssertNil(badRating)
    }
}
