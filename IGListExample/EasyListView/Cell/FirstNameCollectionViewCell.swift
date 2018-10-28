//
//  FirstNameCollectionViewCell.swift
//  IGListExample
//
//  Created by ShichoChin on 2018/10/27.
//  Copyright © 2018 Chin ShiChou. All rights reserved.
//

import UIKit
import IGListKit

class FirstNameCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    static func getCell(controller: ListSectionController,at index: Int,model :EasyListModel) -> UICollectionViewCell? {
        guard let ctx = controller.collectionContext else {
            return UICollectionViewCell()
        }
        let nibName = String(describing: self)
        let cell = ctx.dequeueReusableCell(withNibName: nibName , bundle: nil, for: controller, at: index)
        return cell
    }
    
}
