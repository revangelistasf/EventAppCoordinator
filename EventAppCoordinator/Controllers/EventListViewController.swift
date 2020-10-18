//
//  EventListViewController.swift
//  EventAppCoordinator
//
//  Created by Roberto Evangelista on 18/10/20.
//

import UIKit
import CoreData

class EventListViewController: UIViewController, Storyboarded {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
    }
    
    private func configureNavigationBar() {
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let plusBarButtonItem = UIBarButtonItem(image: plusImage,
                                                style: .plain,
                                                target: self,
                                                action: #selector(tappedRightBarButton))
        plusBarButtonItem.tintColor = .primaryAccent
        navigationItem.rightBarButtonItem = plusBarButtonItem
        navigationItem.title = "Events"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc private func tappedRightBarButton() {
        print(#function)
    }
}
