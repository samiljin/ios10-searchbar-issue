//
//  NavigationVC.swift
//  SearchBarBugTest
//
//  Created by Sami Iljin on 12/09/16.
//  Copyright © 2016 Sami Iljin. All rights reserved.
//

import UIKit

class NavigationBar: UINavigationBar {
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        let original = super.sizeThatFits(size)
        
        return CGSize(width: original.width, height: 100)
    }
    
}

class NavigationVC: UINavigationController {
    
}
