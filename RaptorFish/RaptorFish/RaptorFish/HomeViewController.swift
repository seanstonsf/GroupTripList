//
//  HomeViewController.swift
//  RaptorFish
//
//  Created by Sean Smith on 10/22/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeScrollView: UIScrollView!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var createTaskButton: UIButton!
    @IBOutlet weak var createTemplateButton: UIButton!
    @IBOutlet weak var createListButton: UIButton!

    var bgColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1)
    
    override func viewDidLoad() {
        super.viewDidLoad()


        homeScrollView.contentSize.height = CGFloat(1857)
        createListButton.alpha = 0
        createTaskButton.alpha = 0
        createTemplateButton.alpha = 0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func addButtonPress(sender: AnyObject) {
        createListButton.alpha = 1
        createTaskButton.alpha = 1
        createTemplateButton.alpha = 1
   
    }
}
