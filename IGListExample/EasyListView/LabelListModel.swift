//
//  LabelListModel.swift
//  IGListExample
//
//  Created by ShichoChin on 2018/10/27.
//  Copyright © 2018 Chin ShiChou. All rights reserved.
//

import UIKit
import IGListKit

class LabelListModel: NSObject {
    var title: String
    init(title: String) {
        self.title = title
    }
}

extension LabelListModel: ListDiffable {
    func diffIdentifier() -> NSObjectProtocol {
        return title as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        if self === object {return true}
        guard let object = object as? LabelListModel else { return false }
        return title == object.title
    }
}


