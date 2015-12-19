//
//  API.swift
//  StackOverflowViper
//
//  Created by Alberto Moral on 19/12/15.
//  Copyright © 2015 Alberto Moral. All rights reserved.
//

import Foundation

class API: NSObject {
    
    static func getQuestions(completion: (result: Question?) -> Void) {
        
        let url = NSURL(string: "\(APIConstants.API.EndPoint)\(APIConstants.API.Questions)")
        
        NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) in
        
            let questions: Question? = ParserManager.parse(data!, toClass: Question.self)
            completion(result: questions!)
            
        }.resume()
    }
}
