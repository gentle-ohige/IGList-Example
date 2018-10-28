//
//  ViewController.swift
//  GListExample
//
//  Created by ShichoChin on 2018/10/24.
//  Copyright © 2018 Chin ShiChou. All rights reserved.
//

import UIKit
import IGListKit


class EasyListViewController: UIViewController{
    
    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
    }()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let dataSource = EasyListDataSource()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(collectionView)
        adapter.collectionView = collectionView
        adapter.dataSource = dataSource
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

    }
    
    
    
}

