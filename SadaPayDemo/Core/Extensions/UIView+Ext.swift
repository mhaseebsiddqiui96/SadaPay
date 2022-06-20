//
//  UIView+Ext.swift
//  SadaPayDemo
//
//  Created by Muhammad Haseeb Siddiqui on 6/20/22.
//

import UIKit
import Lottie

extension UIView {
    
    static var noInternetViewTag = 123499
    
    func showNoInternetView(retryTapped: @escaping () -> Void) {
        let animationView: NoInternetView = NoInternetView(frame: self.bounds)
        animationView.retryTapped = retryTapped
        animationView.tag = UIView.noInternetViewTag
        
        animationView.frame = self.bounds
        
        
        animationView.contentMode = .scaleAspectFit
        
        
        self.addSubview(animationView)
        
        NSLayoutConstraint.activate([animationView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
                                     animationView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
                                     animationView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
                                     animationView.topAnchor.constraint(equalTo: topAnchor)])
        
        // 6. Play animation
        
    }
    
    func hideNoInternetView() {
        let view = viewWithTag(UIView.noInternetViewTag) as? NoInternetView
        view?.stopAnimation()
        view?.removeFromSuperview()
    }
    
}
