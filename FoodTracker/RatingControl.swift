//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Ankit Yadav on 21/05/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    // MARK: Properties
    var rating = 0
    var ratingButtons = [UIButton]()

    // MARK: Initialization
    required init?(coder aDecoder: NSCoder)
    {
        //Calls super Class's Initializer
        super.init(coder: aDecoder)
        
        //Create Total of 5 Buttons
        for _ in 0..<5
        {
            //Create Buttons
            let button = UIButton(frame: CGRect(x:0, y:0, width: 44, height: 44))
        
            //Set Background Color of Button
            button.backgroundColor = UIColor.greenColor()
        
            //Add Target for the Created Button
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(_:)), forControlEvents: .TouchDown)
        
            //Add each button as it is created to ratingButtons so as to keep track of it 
            ratingButtons += [button]
            
            //Add button created here to the Rating Control view
            addSubview(button)
        }
    }
    
    //Overrides Intrinsic Content Size
    override func intrinsicContentSize() -> CGSize
    {
        return CGSize(width: 240, height: 40)
    }
    
    // MARK: Button Action
    func ratingButtonTapped(sender: UIButton)
    {
        print("Button Pressed 👍")
    }

}
