//
//  CreateTaskViewController.swift
//  RaptorFish
//
//  Created by Sean Smith on 10/22/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit
import Parse
import Bolts
import AFNetworking

class CreateTaskViewController: UIViewController{

    @IBOutlet weak var itemNameTextField: UITextField!
    @IBOutlet weak var itemDescriptionTextField: UITextField!
    @IBOutlet weak var membersTabSelectedBar: UIView!
    @IBOutlet weak var newItemCollectionView: UICollectionView!

    var members: [PFObject]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        newItemCollectionView.delegate = self
//        newItemCollectionView.dataSource = self
    
        members = []
        
        NSTimer.scheduledTimerWithTimeInterval(10, target: self, selector: "onTimer", userInfo: nil, repeats: true)
    }

    
    @IBAction func newItemCloseButtonPress(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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
