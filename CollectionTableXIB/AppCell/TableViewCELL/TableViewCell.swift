//
//  TableViewCell.swift
//  CollectionTableXIB
//
//  Created by MacMiniOld on 26/10/18.
//  Copyright © 2018 Xongolab. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var LblFirst: UILabel!
    
    @IBOutlet var TempLblSecond: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
