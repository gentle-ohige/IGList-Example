//
//  IGCollectionViewCell.swift
//  GListExample
//
//  Created by ShichoChin on 2018/10/25.
//  Copyright © 2018 Chin ShiChou. All rights reserved.
//

import UIKit

class IGCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var nikeName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func updateWith(model: IGModel)  {
        nikeName.text = model.nickname
    }
}
