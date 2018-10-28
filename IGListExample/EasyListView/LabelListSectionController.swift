//
//  LabelListSectionController.swift
//  IGListExample
//
//  Created by ShichoChin on 2018/10/27.
//  Copyright © 2018 Chin ShiChou. All rights reserved.
//

import UIKit
import IGListKit

class LabelListSectionController: ListSectionController {
    var model :LabelListModel?
    
    override func numberOfItems() -> Int {
        return 1
    }
    
    override func didUpdate(to object: Any) {
        guard let model = object as? LabelListModel else {
            return
        }
        self.model = model
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let ctx = collectionContext, let model = self.model else {
            return UICollectionViewCell()
        }
        
        let nibName = String(describing: LabelListCollectionViewCell.self)
        let cell = ctx.dequeueReusableCell(withNibName: nibName, bundle: nil, for: self, at: index) as! LabelListCollectionViewCell
        cell.updateWith(model: model)
        return cell
    }
    override func sizeForItem(at index: Int) -> CGSize {
        let width = collectionContext?.containerSize.width ?? 0
        return CGSize(width: width, height: 30)
    }
}
