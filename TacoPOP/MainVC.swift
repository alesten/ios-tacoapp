//
//  MainVC.swift
//  TacoPOP
//
//  Created by Sara Henriksen on 28/01/2017.
//  Copyright © 2017 Alexander Steen. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var headerView: HeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        headerView.addDropShadow()
    }
}
