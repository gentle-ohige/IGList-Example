//
//  IGModelDataSource.swift
//  GListExample
//
//  Created by ShichoChin on 2018/10/25.
//  Copyright © 2018 Chin ShiChou. All rights reserved.
//

import UIKit
import IGListKit

class IGModelDataSource:NSObject, ListAdapterDataSource {


    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return [IGModel(firstName: "YAMADA",
                        lastName: "TAROU",
                        nickname: "SpiderMan",
                        icon: ""),
                IGModel(firstName: "SHIMIZU",
                        lastName: "NANAMI",
                        nickname: "Batman",
                        icon: ""),
                IGModel(firstName: "TANAKA",
                        lastName: "MAKOTO",
                        nickname: "Ironman",
                        icon: ""),
                IGModel(firstName: "SATOU",
                        lastName: "Banner",
                        nickname: "Incredible Hulk",
                        icon: "")]
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return IGLsitSectionController()
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}
