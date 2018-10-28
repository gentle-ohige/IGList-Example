//
//  StoryboardIdentifier.swift
//  IGListExample
//
//  Created by ShichoChin on 2018/10/27.
//  Copyright © 2018 Chin ShiChou. All rights reserved.
//

import UIKit

protocol StoryboardIdentifier {
    static var storyboardIdentifier: String { get }
}
extension StoryboardIdentifier where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}

protocol ViewControllerNavigtator {
    func setNavigationBarTitle()
}

extension ViewControllerNavigtator where Self: UIViewController {
    func setNavigationBarTitle() {
        var title = String(describing: type(of: self))
        if let range = title.range(of: "ViewController") {
            title.replaceSubrange(range, with: "")
        }
        self.navigationController?.navigationBar.topItem?.title = title
    }
}
