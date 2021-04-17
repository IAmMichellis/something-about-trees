//
//  TreeTableViewCell.swift
//  Branches
//
//  Created by Michelle Ellis on 2021-04-16.
//

import UIKit

class TreeTableViewCell: UITableViewCell {

    //MARK: Properties
 
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingView: RatingControl!
    @IBOutlet weak var photoView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
