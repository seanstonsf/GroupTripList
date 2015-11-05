//
//  TemplateViewController.swift
//  RaptorFish
//
//  Created by Sean Smith on 10/22/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit
import AFNetworking


class TemplateViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var templateTableView: UITableView!
//    @IBOutlet weak var templateScrollView: UIScrollView!
    @IBOutlet weak var templateImageView: UIImageView!
    
    var templates: [NSDictionary]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        templateScrollView.contentSize.height = templateImageView.frame.height
        
        templateTableView.delegate = self
        templateTableView.dataSource = self
        
        templates = []
        
        templates = [
            
            [ "address" : "http://i.imgur.com/ha51Zez.png",
            ], [ "address" : "http://i.imgur.com/rHLzmc9.png",
            
            ], [ "address" : "http://i.imgur.com/LvqPCBR.png",
                
            ], [ "address" : "http://i.imgur.com/b81O8d2.png",
                
            ], [ "address" : "http://i.imgur.com/LvqPCBR.png",
                
            ], [ "address" : "http://i.imgur.com/ch4RWEB.png",
                
            ], [ "address" : "http://i.imgur.com/mUi9Tes.png",
                
            ], [ "address" : "http://i.imgur.com/uATlae9.png",
                
            ], [ "address" : "http://i.imgur.com/wI7zkub.png",
                
            ], [ "address" : "http://i.imgur.com/LvqPCBR.png",
                
            ],
            
        ]
            self.templateTableView.reloadData()
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return templates.count
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = templateTableView.dequeueReusableCellWithIdentifier("templatePreviewCell") as! TemplatePreviewTableViewCell
        
        let template = templates[indexPath.row]
        let urlString = template.valueForKeyPath("address") as! String
        let url = NSURL(string: urlString)!
        cell.previewBackgroundImageView.setImageWithURL(url)
        
        return cell
    }

    
    @IBAction func closeButtonPress(sender: AnyObject) {
        dismissViewControllerAnimated(
            true, completion: nil)
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let next_view = segue.destinationViewController
//        
//        if(next_view is TemplatePreviewViewController){
//            let cell = sender as! UITableViewCell
//            let indexPath = templateTableView.indexPathForCell(cell)!
//            print("Details")
//            let templatePreviewViewController = segue.destinationViewController as! TemplatePreviewViewController
//            
////            templatePreviewViewController.list = templates[indexPath.row]
//            
//        } else {}
//    }

    
    
}
