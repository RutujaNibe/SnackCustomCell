//
//  MainCourseTableViewCell.swift
//  customcellsnacks
//
//  Created by Mac on 09/04/34.
//

import UIKit

class MainCourseTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mainCourseName: UILabel!
    
    @IBOutlet weak var mainCourseDescription: UILabel!
    
    @IBOutlet weak var mainCoursePrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
