//
//  Interactor.swift
//  StackOverflowViper
//
//  Created by Alberto Moral on 18/12/15.
//  Copyright © 2015 Alberto Moral. All rights reserved.
//

import Foundation

protocol InteractorProtocolInput {
    func getQuestions()
}

protocol InteractorProtocolOutput {
    func updateQuestions(objects: NSArray)
}