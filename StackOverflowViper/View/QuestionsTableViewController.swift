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
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "questionCell")
        cell.backgroundColor = UIColor.redColor()
        
        return cell
    }
    
    //  MARK: Delegate
    
//    func updateQuestions(questions: [String]) {
    func updateQuestions() {
        print("Table View Updated")
//        self.questions = questions
//        self.tableView.reloadData()
    }
}
