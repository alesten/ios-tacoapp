//
//  UICollectionView+Ext.swift
//  TacoPOP
//
//  Created by Sara Henriksen on 28/01/2017.
//  Copyright © 2017 Alexander Steen. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReuseableView, T: NibLoadableView{
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReuseableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReuseableView {
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier \(T.reuseIdentifier)")
        }
        return cell
    }
}


extension UICollectionViewCell: ReuseableView {}
