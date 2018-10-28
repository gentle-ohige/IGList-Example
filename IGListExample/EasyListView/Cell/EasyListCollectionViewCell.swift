//
//  IGCollectionViewCell.swift
//  GListExample
//
//  Created by ShichoChin on 2018/10/25.
//  Copyright © 2018 Chin ShiChou. All rights reserved.
//

import UIKit

class EasyListCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var nikeName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func updateWith(model: EasyListModel)  {
        nikeName.text = model.nickname
    }
    
}
