//
//  TrackCell.swift
//  MusicPlayer
//
//  Created by Thamonwan choesuwan on 4/17/2558 BE.
//  Copyright (c) 2558 ist. All rights reserved.
//

import UIKit

class TrackCell: UITableViewCell {

    @IBOutlet weak var playIcon: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
