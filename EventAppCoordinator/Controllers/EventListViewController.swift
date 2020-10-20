//
//  EventListViewController.swift
//  EventAppCoordinator
//
//  Created by Roberto Evangelista on 18/10/20.
//

import UIKit
import CoreData

class EventListViewController: UIViewController, Storyboarded {
    
    var viewModel: EventListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
    }
    
    private func configureNavigationBar() {
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let plusBarButtonItem = UIBarButtonItem(image: plusImage,
                                                style: .plain,
                                                target: self,
                                                action: #selector(tappedAddEventButton))
        plusBarButtonItem.tintColor = .primaryAccent
        navigationItem.rightBarButtonItem = plusBarButtonItem
        navigationItem.title = viewModel.title
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc private func tappedAddEventButton() {
        viewModel.tappedAddEvent()
    }
}
