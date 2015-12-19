//
//  API.swift
//  StackOverflowViper
//
//  Created by Alberto Moral on 19/12/15.
//  Copyright © 2015 Alberto Moral. All rights reserved.
//

import Foundation

class API: NSObject {
    
    static func getQuestions(completion: (result: AnyObject?) -> Void) {
        
        let url = NSURL(string: "\(Constants.API.EndPoint)\(Constants.API.Questions)")
        
        var parsedObject: AnyObject?
        
        NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) in
        
            do {
                parsedObject = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
            } catch _ as NSError {
                parsedObject = nil
            }
            completion(result: parsedObject!)
        }.resume()
    }
}
