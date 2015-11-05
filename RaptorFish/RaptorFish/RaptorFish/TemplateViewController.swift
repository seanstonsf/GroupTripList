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
        
        let url = NSURL(string: "http://api.rottentomatoes.com/api/public/v1.0/lists/movies/box_office.json?apikey=dagqdghwaq3e3mxyrp7kmmj5&limit=20&country=us")!
        let request = NSURLRequest(URL: url)
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (response: NSURLResponse?, data: NSData?, error: NSError?) -> Void in
            
            let json = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments) as! NSDictionary
            
//            print(json)
            self.templates = json["movies"] as! [NSDictionary]
            
            self.templateTableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        
        cell.previewTitleLabel.text = template["title"] as? String
        cell.previewAuthorNameLabel.text = template["synopsis"] as? String
        
        let urlString = template.valueForKeyPath("posters.original") as! String
        let url = NSURL(string: urlString)!
        cell.previewBackgroundImageView.setImageWithURL(url)
        
        return cell
    }

    
    @IBAction func closeButtonPress(sender: AnyObject) {
        dismissViewControllerAnimated(
            true, completion: nil)
    }
}
