//
//  UINavigationBar+ Ext.swift
//  SadaPayDemo
//
//  Created by Muhammad Haseeb Siddiqui on 6/20/22.
//

import UIKit

extension UINavigationController {
    func setAppNavbar() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.whiteColor
        appearance.titleTextAttributes = [.foregroundColor: UIColor.blackColor]
        self.navigationBar.tintColor = UIColor.blackColor
        self.navigationBar.standardAppearance = appearance
        self.navigationBar.scrollEdgeAppearance = appearance
    }
}

