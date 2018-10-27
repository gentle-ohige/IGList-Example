//
//  ViewController.swift
//  GListExample
//
//  Created by ShichoChin on 2018/10/24.
//  Copyright © 2018 Chin ShiChou. All rights reserved.
//

import UIKit
import IGListKit


class ViewController: UIViewController{
    
    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
    }()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let dataSource = IGModelDataSource()
    
    let demos: [IGModel] =  [IGModel(firstName: "YAMADA",
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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(collectionView)
        adapter.collectionView = collectionView
        adapter.dataSource = dataSource
      
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
    
   
    
}

