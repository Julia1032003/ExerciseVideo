//
//  ExerciseTableViewCell.swift
//  ExerciseVideo
//
//  Created by Julia Wang on 2019/8/13.
//  Copyright © 2019 Julia Wang. All rights reserved.
//

import UIKit

class ExerciseTableViewCell: UITableViewCell {

    
    @IBOutlet weak var exerciseImageView: UIImageView!
    @IBOutlet weak var exerciseLabel: UILabel!
    @IBOutlet weak var exerciseIntro: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
