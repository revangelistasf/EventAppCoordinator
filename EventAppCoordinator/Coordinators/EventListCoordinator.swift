//
//  EventListCoordinator.swift
//  EventAppCoordinator
//
//  Created by Roberto Evangelista on 18/10/20.
//

import UIKit

final class EventListCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let eventListViewController = EventListViewController.instantiate()

        navigationController.setViewControllers([eventListViewController], animated: false)
    }
}
