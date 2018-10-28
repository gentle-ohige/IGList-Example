//
//  IGLsitSectionController.swift
//  GListExample
//
//  Created by ShichoChin on 2018/10/25.
//  Copyright © 2018 Chin ShiChou. All rights reserved.
//

import UIKit
import IGListKit

class EasyListSectionController: ListSectionController {
    
    enum Index: Int{
        case firstName
        case lastName
        case nickname
    }
    var currentModel:EasyListModel?
    var collapsed: Bool = true
    override func didUpdate(to object: Any) {
        guard let model = object as? EasyListModel else {
            return
        }
        currentModel = model
    }
    
    override func numberOfItems() -> Int {
        return collapsed ? 1 : 2
    }

    override func cellForItem(at index: Int) -> UICollectionViewCell {

        print("cellForItem \(index)")
        guard let model = currentModel else {
            return UICollectionViewCell()
        }
        
       var cell: UICollectionViewCell?
        switch index {
        case Index.firstName.rawValue:
            if let firstNameCell = FirstNameCollectionViewCell.getCell(controller: self,
                                                                       at: index,
                                                                       model: model){
                cell = firstNameCell
            }
        case Index.lastName.rawValue:
            if let lastNameCell = LastNameCollectionViewCell.getCell(controller: self,
                                                                     at: index,
                                                                     model: model){
                cell = lastNameCell
            }
        default:
            cell = UICollectionViewCell()
        }
        
        return cell ??  UICollectionViewCell()
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        let width = collectionContext?.containerSize.width ?? 0
        return CGSize(width: width, height: 50)
    }
}

extension EasyListSectionController {
    override func didSelectItem(at index: Int) {
        collectionContext?.performBatch(animated: true, updates:{
            (batchContext) in
            self.collapsed = !self.collapsed
            batchContext.reload(self)
        })
    }
}
