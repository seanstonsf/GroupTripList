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
    
    var tasks: [NSDictionary]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 
        
        self.tasksTableView.contentOffset = CGPointMake(0,45);
        
        tasksTableView.delegate = self
        tasksTableView.dataSource = self
        
        
                tasks = [
                    [ "title" : "List Item One",
                    ],
                    [ "title" : "List Item Two",
                    ],
                    [ "title" : "List Item Three",
                    ],
                
                ]
    


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tasksTableView.dequeueReusableCellWithIdentifier("taskCell") as! TasksTableViewCell
        
        let task = tasks[indexPath.row]
        
        cell.taskLabel.text = task["title"] as? String
        
        return cell
    }
    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
