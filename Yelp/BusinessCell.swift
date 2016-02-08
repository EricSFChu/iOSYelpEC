//
//  BusinessCell.swift
//  Yelp
//
//  Created by EricDev on 2/2/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var ratingsImage: UIImageView!
    @IBOutlet weak var businessLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!

    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!

    @IBOutlet weak var categoriesLabel: UILabel!

    var business: Business! {
        didSet {
            posterImage.setImageWithURL(business.imageURL!)
            ratingsImage.setImageWithURL(business.ratingImageURL!)
            businessLabel.text = business.name
            businessLabel.sizeToFit()
            distanceLabel.text = business.distance
            distanceLabel.sizeToFit()
            addressLabel.text = business.address
            addressLabel.sizeToFit()
            
            categoriesLabel.text = business.categories
            categoriesLabel.sizeToFit()
            reviewLabel.text = "\(business.reviewCount)"
            
        }
    }
    
    override func awakeFromNib() {
        posterImage.layer.cornerRadius = 4
        posterImage.clipsToBounds = true
        businessLabel.preferredMaxLayoutWidth = businessLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        businessLabel.preferredMaxLayoutWidth = businessLabel.frame.size.width
    }

}
