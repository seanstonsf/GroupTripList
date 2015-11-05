//
//  HomeViewController.swift
//  RaptorFish
//
//  Created by Sean Smith on 10/22/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit
import AFNetworking

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var createTaskButton: UIButton!
    @IBOutlet weak var createTemplateButton: UIButton!
    @IBOutlet weak var createListButton: UIButton!

    @IBOutlet weak var headerProfileImageView: UIImageView!
    @IBOutlet weak var homeListTableView: UITableView!
    
    var lists: [NSDictionary]! {
        get { return AppDelegate.shareAppDelegate().lists }
    }

    var createTaskOrigin: CGPoint!
    var createTemplateOrigin: CGPoint!
    var createListOrigin: CGPoint!
    
    var createTaskDestination = CGPoint(x: 192, y: 104)
    var createTemplateDestination = CGPoint(x: 106, y: 20)
    var createListDestination = CGPoint(x: 20, y: 104)
    
    var bgColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createListButton.alpha = 0
        createTaskButton.alpha = 0
        createTemplateButton.alpha = 0
        
        headerProfileImageView.layer.cornerRadius = headerProfileImageView.frame.size.width / 2

        
        createTaskOrigin = createTaskButton.frame.origin
        createTemplateOrigin = createTemplateButton.frame.origin
        createListOrigin = createListButton.frame.origin
        
        homeListTableView.delegate = self
        homeListTableView.dataSource = self

        
//        let url = NSURL(string: "http://api.rottentomatoes.com/api/public/v1.0/lists/movies/box_office.json?apikey=dagqdghwaq3e3mxyrp7kmmj5&limit=20&country=us")!
//        let request = NSURLRequest(URL: url)
//        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (response: NSURLResponse?, data: NSData?, error: NSError?) -> Void in
//            let json = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments) as! NSDictionary
//            self.lists = json["movies"] as! [NSDictionary]
//            self.homeListTableView.reloadData()
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = homeListTableView.dequeueReusableCellWithIdentifier("homeListCell") as! HomeListTableViewCell
        let list = lists[indexPath.row]
        cell.homeListCellTitleLabel.text = list["title"] as? String
        cell.homeListCellSubTitleLabel.text = list["sub"] as? String
        
        let urlString = list.valueForKeyPath("posters") as! String
        let url = NSURL(string: urlString)!
        cell.homeListCellBackgroundImageView.setImageWithURL(url)
        
        let urlString1 = list.valueForKeyPath("profileImage") as! String
        let url1 = NSURL(string: urlString1)!
        cell.homeListCellMember1ImageView.setImageWithURL(url1)
        
        let urlString2 = list.valueForKeyPath("profileImage2") as! String
        let url2 = NSURL(string: urlString2)!
        cell.homeListCellMember2ImageView.setImageWithURL(url2)
        
        let urlString3 = list.valueForKeyPath("profileImage3") as! String
        let url3 = NSURL(string: urlString3)!
        cell.homeListCellMember3ImageView.setImageWithURL(url3)

        
 
        return cell
    }
    
    
    
    @IBAction func addButtonPress(sender: AnyObject){
       
        UIView.animateWithDuration(0.2) { () -> Void in
            self.createListButton.alpha = 1
            self.createTaskButton.alpha = 1
            self.createTemplateButton.alpha = 1
        }
        UIView.animateWithDuration(0.5, delay: 0.1, usingSpringWithDamping: CGFloat(0.5), initialSpringVelocity: CGFloat(2.0), options: UIViewAnimationOptions.CurveEaseInOut , animations: { () -> Void in
            self.createTaskButton.frame.origin = self.createTaskDestination
            self.createTemplateButton.frame.origin = self.createTemplateDestination
            self.createListButton.frame.origin = self.createListDestination
            }, completion: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let next_view = segue.destinationViewController

        if(next_view is DetailListViewController){
            let cell = sender as! UITableViewCell
            let indexPath = homeListTableView.indexPathForCell(cell)!
            print("Details")
            let detailListViewController = segue.destinationViewController as! DetailListViewController
            
            AppDelegate.shareAppDelegate().selectedListItem = indexPath.row
            
//            detailListViewController.list = lists[indexPath.row]
            
            
        } else {}
    }
}
