//
//  UIButtonExtension.swift
//  Shuffle
//
//  Created by 김민서 on 2017. 11. 5..
//  Copyright © 2017년 김민서. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.15
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 0
        pulse.initialVelocity = 0.5
        pulse.damping = 0
        
        layer.add(pulse, forKey: nil)
    }
}
