//
//  QuestionsTableViewController.swift
//  StackOverflowViper
//
//  Created by Moral on 17/12/15.
//  Copyright © 2015 Alberto Moral. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController, tableViewQuestionsDelegate {
    
    var questions: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func questions(questions: [String]) {
        self.questions = questions
        self.tableView.reloadData()
    }
    
    //MARK: Delegate & Source Table View
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        <#code#>
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        <#code#>
    }
    
    

}
