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
    let spacing = 5
    let starCount = 5
    
    // MARK: Initialization
    required init?(coder aDecoder: NSCoder)
    {
        let filledStarImage = UIImage(named: "filledStar")
        let emptyStarImage = UIImage(named: "emptyStar")

        //Calls super Class's Initializer
        super.init(coder: aDecoder)
        
        //Create Total of 5 Buttons
        for _ in 0..<starCount
        {
            //Create Buttons
            let button = UIButton(frame: CGRect(x:0, y:0, width: 44, height: 44))
            
            //Set Images on Buttons as per State of Button
            button.setImage(emptyStarImage, forState: .Normal)
            button.setImage(filledStarImage, forState: .Selected)
            //At the time of Tapping Image
            button.setImage(filledStarImage, forState: [.Highlighted, .Selected])
        
            //Set Background Color of Button
            //button.backgroundColor = UIColor.greenColor()
            
            //No abberetions while selecting Image
            button.adjustsImageWhenHighlighted = false
        
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
        //Button Size (height)
        let buttonSize = Int(frame.size.height)
        
        //Generalised width
        let width = (buttonSize * starCount) + (spacing * (starCount - 1))
        
        return CGSize(width: width, height: buttonSize)
    }
    
    //Avoid Stacking of Buttons over First one by this override method
    override func layoutSubviews()
    {
        //Make button size as size of Container
        let buttonSize = Int(frame.size.height)
        
        //Frame for first Button
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        
        //For each index in ratingButtons Array
        for (index, button) in ratingButtons.enumerate()
        {
            //Increase x of each button as it is created
            buttonFrame.origin.x = CGFloat(index * (buttonSize + spacing))
            
            //Assign framesize to button that is enumerated
            button.frame = buttonFrame
        }
    }
    
    // MARK: Button Action
    func ratingButtonTapped(sender: UIButton)
    {
        print("Button Pressed 👍")
    }

}
