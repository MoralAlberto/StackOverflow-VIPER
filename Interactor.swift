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
        //  API CALL, when we have the result we need to notify to the presenter, and the presenter will notify to the view.
        NSLog("Call to stackoverflow API")
        API.getQuestions { (result) -> Void in
            let dictionary = result as! NSDictionary
            let array = dictionary["items"] as! NSArray
            
            self.presenter!.updateQuestions(array)
        }
    }
}