//
//  Routing.swift
//  StackOverflowViper
//
//  Created by Alberto Moral on 18/12/15.
//  Copyright © 2015 Alberto Moral. All rights reserved.
//

import UIKit

class Routing {
    var vc: QuestionsTableViewController = QuestionsTableViewController()
    var presenter = Presenter()
    var interactor = Interactor()
    var navigationController: UINavigationController?
    
    
    init() {
        vc.presenter = self.presenter
        presenter.view = vc
        presenter.interactor = interactor
        presenter.routing = self
        
        interactor.presenter = self.presenter
        navigationController = UINavigationController(rootViewController: vc)
    }
}