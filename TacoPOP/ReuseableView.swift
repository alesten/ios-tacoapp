//
//  ReuseableView.swift
//  TacoPOP
//
//  Created by Sara Henriksen on 28/01/2017.
//  Copyright © 2017 Alexander Steen. All rights reserved.
//

import UIKit

protocol ReuseableView: class { }

extension ReuseableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
