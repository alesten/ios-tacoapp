//
//  DropShadow.swift
//  TacoPOP
//
//  Created by Sara Henriksen on 28/01/2017.
//  Copyright © 2017 Alexander Steen. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
    func addDropShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}
