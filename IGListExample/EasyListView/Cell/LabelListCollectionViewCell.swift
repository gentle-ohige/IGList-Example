//
//  LabelListCollectionViewCell.swift
//  IGListExample
//
//  Created by ShichoChin on 2018/10/27.
//  Copyright © 2018 Chin ShiChou. All rights reserved.
//

import UIKit

class LabelListCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateWith(model: LabelListModel){
        label.text = model.title
    }

}
