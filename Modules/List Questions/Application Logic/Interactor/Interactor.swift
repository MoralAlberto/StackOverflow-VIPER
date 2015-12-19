//
//  Interactor.swift
//  StackOverflowViper
//
//  Created by Alberto Moral on 18/12/15.
//  Copyright © 2015 Alberto Moral. All rights reserved.
//

import Foundation

class Interactor: InteractorProtocolInput {
    
    var presenter: Presenter?
    
    func getQuestions() {
        
        //  API REST, when we have the result we need to notify to the presenter, and the presenter will notify to the view.
        API.getQuestions { (result: Question?) -> Void in
            let items: [ItemModel] = (result?.items!.map {
                let itemModel = ItemModel(title: $0.title!)
                return itemModel
            })!
            
            self.presenter!.updateQuestions(items)
        }
    }
}