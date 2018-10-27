//
//  IGModel.swift
//  GListExample
//
//  Created by ShichoChin on 2018/10/24.
//  Copyright © 2018 Chin ShiChou. All rights reserved.
//

import UIKit
import IGListKit

class IGModel {
    private var identifier: String = UUID().uuidString
    private(set) var firstName: String
    private(set) var lastName: String
    private(set) var nickname: String
    private(set) var icon: String
    
    init(firstName: String,lastName: String,nickname: String,icon: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.nickname = nickname
        self.icon = icon
    }
}

extension IGModel: ListDiffable {
    func  diffIdentifier() -> NSObjectProtocol {
        return identifier as NSString
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? IGModel else {
            return false
        }
        return self.identifier == object.identifier
    }
}
