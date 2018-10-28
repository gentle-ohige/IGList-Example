//
//  StroyboardExtension.swift
//  IGListExample
//
//  Created by ShichoChin on 2018/10/27.
//  Copyright © 2018 Chin ShiChou. All rights reserved.
//

import UIKit

extension UIStoryboard {
    enum  StoryboardName: String{
        case Main
        var str:String{
            return rawValue.capitalized
        }
    }
    
    static func initWithName(_ name:StoryboardName) -> UIStoryboard{
        return UIStoryboard.init(name: name.str
            , bundle: nil)
    }
    func instantiateViewController<T: UIViewController>() -> T where T: StoryboardIdentifier {
        guard let viewController = self.instantiateViewController(withIdentifier: T.storyboardIdentifier) as? T else {
            fatalError("Couldn't instantiate view controller with identifier \(T.storyboardIdentifier) ")
        }
        return viewController
    }
}
