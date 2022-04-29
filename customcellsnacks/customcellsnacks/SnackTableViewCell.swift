//
//  SnackTableViewCell.swift
//  customcellsnacks
//
//  Created by Mac on 09/04/34.
//

import UIKit

class SnackTableViewCell: UITableViewCell {
    
    @IBOutlet weak var snackName: UILabel!
    @IBOutlet weak var snackPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
