//
//  NoInternetView.swift
//  SadaPayDemo
//
//  Created by Muhammad Haseeb Siddiqui on 6/20/22.
//

import UIKit
import Lottie

class NoInternetView: UIView {

    var retryTapped: (() -> Void)?
    
    lazy var animationView: AnimationView = {
        let animationView: AnimationView = AnimationView(name: "retryLotte")

         // 3. Set animation content mode
         animationView.contentMode = .scaleAspectFit
         
         // 4. Set animation loop mode
         animationView.loopMode = .loop
         
         // 5. Adjust animation speed
         animationView.animationSpeed = 0.5
         
         self.addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false
       
        return animationView
    }()
    var retryButton: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setTitle("Retry", for: .normal)
        btn.layer.cornerRadius = 12
        btn.layer.borderColor = UIColor.green.cgColor
        btn.layer.borderWidth = 2
        btn.setTitleColor(.green, for: .normal)
        
        return btn
    }()
    
     override init(frame: CGRect) {
         super.init(frame: frame)
         setupView()
     }

     required init(coder aDecoder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
    private func setupView() {
        addSubview(retryButton)
        retryButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([retryButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
         retryButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
                                     retryButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -16),
                                     retryButton.heightAnchor.constraint(equalToConstant: 50)])
        
        retryButton.addTarget(self, action: #selector(retryTap), for: .touchUpInside)
        
        animationView.play()
        
        NSLayoutConstraint.activate([animationView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                                     animationView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                                     animationView.bottomAnchor.constraint(equalTo: retryButton.topAnchor, constant: -24),
                                     animationView.topAnchor.constraint(equalTo: topAnchor)])
        
        self.backgroundColor = .white

    }
    
    func stopAnimation() {
        animationView.stop()
    }
    
    @objc func retryTap() {
        retryTapped?()
    }

}
