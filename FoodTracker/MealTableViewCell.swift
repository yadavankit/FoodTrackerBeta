//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by Ankit Yadav on 22/05/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell
{
    // MARK: Properties
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var ratingControl: RatingControl!
    

    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
