//
//  NewsCoordinator.swift
//  Runner
//
//  Created by Worameth Semapat on 15/11/2019.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

import Foundation
import UIKit
final class NewsCoordinator: BaseCoordinator{
    weak var navigationController: UINavigationController?
    weak var delegate: NewsToAppCoordinatorDelegate?
    
    override func start() {
        super.start()
        let storyboard = UIStoryboard(name: "News", bundle: nil)
        if let container =  storyboard.instantiateViewController(withIdentifier: "NewsViewController") as? NewsViewController {
            container.coordinatorDelegate = self
            navigationController?.isNavigationBarHidden = false
            navigationController?.pushViewController(container, animated: true)
        }
    }
    init(navigationController: UINavigationController?) {
        super.init()
        self.navigationController = navigationController
    }
}
protocol NewsCoordinatorDelegate {
    func navigateToFlutter()
}
extension NewsCoordinator: NewsCoordinatorDelegate{
    func navigateToFlutter(){
        self.delegate?.navigateToFlutterViewController()
    }
}
