//
//  QuestionsTableViewController.swift
//  StackOverflowViper
//
//  Created by Moral on 17/12/15.
//  Copyright © 2015 Alberto Moral. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController, tableViewQuestionsDelegate {
    
    var questions: [ItemModel]?
    var presenter: Presenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter!.getQuestions()
    }
    
    //  MARK: Delegate & Source Table View
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let x = self.questions?.count {
            return x
        } else {
            return 0
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "questionCell")
        
        let item: ItemModel = questions![indexPath.row]
        cell.textLabel?.text = item.title
        
        return cell
    }
    
    //  MARK: View Delegate
    
    func updateQuestions(objects: NSArray) {
        self.questions = objects as? [ItemModel]
        
        dispatch_async(dispatch_get_main_queue(), {
            self.tableView.reloadData()
        })
    }
}
