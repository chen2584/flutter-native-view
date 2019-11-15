//
//  NewssViewController.swift
//  Runner
//
//  Created by Worameth Semapat on 15/11/2019.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
    var coordinatorDelegate: NewsCoordinatorDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func goToFlutter(_ sender: Any){
        coordinatorDelegate?.navigateToFlutter()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = true
    }
}
