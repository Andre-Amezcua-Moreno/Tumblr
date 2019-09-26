//
//  PhotoCell.swift
//  tumblr
//
//  Created by Andrea Amezcua Moreno on 9/18/19.
//  Copyright © 2019 Andrea Amezcua Moreno. All rights reserved.
//

import UIKit

class PhotoCell: UITableViewCell {

    
    @IBOutlet weak var picView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
