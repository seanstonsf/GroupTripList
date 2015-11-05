//
//  TasksViewController.swift
//  RaptorFish
//
//  Created by Randy on 11/3/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tasksTableView: UITableView!

    var checked = [Bool]() // Have an array equal to the number of cells in your table

    var task: [String] {
        get {
            let selectedItem = AppDelegate.shareAppDelegate().selectedListItem
            let list = AppDelegate.shareAppDelegate().lists[selectedItem!]
            let task = list["task"]
            return task as! [String]
        }
    }
    
//    var item: NSDictionary {
//        get {
//            let selectedListItem = AppDelegate.shareAppDelegate().selectedListItem
//            return AppDelegate.shareAppDelegate().lists[selectedListItem!]
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 
        
        self.tasksTableView.contentOffset = CGPointMake(0,45);
        
        tasksTableView.delegate = self
        tasksTableView.dataSource = self
        
        
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return task.count
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tasksTableView.dequeueReusableCellWithIdentifier("taskCell") as! TasksTableViewCell
        
        let item = task[indexPath.row]
        
        cell.taskLabel.text = item // task["task"] as? String
        
        cell.accessoryType = .None
        
        return cell
        
    }
//    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
//    {
//        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
//            if cell.accessoryType == .Checkmark
//            {
//                cell.accessoryType = .None
//                checked[indexPath.row] = false
//            }
//            else
//            {
//                cell.accessoryType = .Checkmark
//                checked[indexPath.row] = true
//            }
//        }    
//    }
//    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
