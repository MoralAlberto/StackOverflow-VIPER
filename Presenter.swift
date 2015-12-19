//
//  Presenter.swift
//  StackOverflowViper
//
//  Created by Alberto Moral on 18/12/15.
//  Copyright © 2015 Alberto Moral. All rights reserved.
//

import Foundation

class Presenter: InteractorProtocolOutput {
    
    var view: QuestionsTableViewController?
    var interactor: Interactor?
    var routing: Routing?
    
    func getQuestions() {
        interactor!.getQuestions()
    }
    
    func updateQuestions() {
        NSLog("Notify to the view with the new questions")
        view!.updateQuestions()
    }
}