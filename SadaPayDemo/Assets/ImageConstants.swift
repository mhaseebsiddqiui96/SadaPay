//
//  ImageConstants.swift
//  SadaPayDemo
//
//  Created by Muhammad Haseeb Siddiqui on 6/20/22.
//

import UIKit

struct ImageConstant {
    static let imgStar = "img_Star"
}

struct ColorConstants {
    static let whiteColor = "whiteColor"
    static let blackColor = "blackColor"
}

extension UIColor {
    static var blackColor: UIColor {
        return UIColor(named: ColorConstants.blackColor) ?? .black
    }
    
    static var whiteColor: UIColor {
        return UIColor(named: ColorConstants.whiteColor) ?? .white
    }

}
