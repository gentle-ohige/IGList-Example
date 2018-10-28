//
//  IGModelDataSource.swift
//  GListExample
//
//  Created by ShichoChin on 2018/10/25.
//  Copyright © 2018 Chin ShiChou. All rights reserved.
//

import UIKit
import IGListKit

class EasyListDataSource:NSObject, ListAdapterDataSource {


    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return [EasyListModel(firstName: "YAMADA",
                        lastName: "TAROU",
                        nickname: "SpiderMan",
                        icon: ""),
                LabelListModel(title: "TESTLABEL"),
                EasyListModel(firstName: "SHIMIZU",
                        lastName: "NANAMI",
                        nickname: "Batman",
                        icon: ""),
                EasyListModel(firstName: "TANAKA",
                        lastName: "MAKOTO",
                        nickname: "Ironman",
                        icon: ""),
                EasyListModel(firstName: "SATOU",
                        lastName: "Banner",
                        nickname: "Incredible Hulk",
                        icon: "")]
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        if object is EasyListModel {
            return EasyListSectionController()
        } else{
            return LabelListSectionController()
        }
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}
