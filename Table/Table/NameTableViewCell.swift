//
//  NameTableViewCell.swift
//  Table
//
//  Created by Bimal@AppStation on 28/04/22.
//

import UIKit

class NameTableViewCell: UITableViewCell {
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setName(strName: String) {
        self.labelName.text = strName
      
        
    }

}
