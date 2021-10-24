//
//  FoodTableViewCell.swift
//  WePlan
//
//  Created by Chandan Aulakh on 25/10/21.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var foodView: UIView!
    
    @IBOutlet weak var FoodName: UILabel!
    
    @IBOutlet weak var FoodImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
