//
//  IGLsitSectionController.swift
//  GListExample
//
//  Created by ShichoChin on 2018/10/25.
//  Copyright © 2018 Chin ShiChou. All rights reserved.
//

import UIKit
import IGListKit

class IGLsitSectionController: ListSectionController {
    var currentModel: IGModel?
    
    override func didUpdate(to object: Any) {
        guard let model = object as? IGModel else {
            return
        }
        currentModel = model
    }
    
    override func numberOfItems() -> Int {
        return 1
    }

    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let nibName = String(describing: IGCollectionViewCell.self)
        guard let ctx = collectionContext, let model = currentModel else {
            return UICollectionViewCell()
        }
        
        let cell = ctx.dequeueReusableCell(withNibName: nibName, bundle: nil, for: self, at: index)
        
        guard let cellViewCell = cell as? IGCollectionViewCell else {
            return cell
        }
        
        cellViewCell.updateWith(model: model)
        return cellViewCell
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        let width = collectionContext?.containerSize.width ?? 0
        return CGSize(width: width, height: 50)
    }
    
}
