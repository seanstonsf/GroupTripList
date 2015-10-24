//
//  SettingsViewController.swift
//  RaptorFish
//
//  Created by Sean Smith on 10/24/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingScrollView: UIScrollView!
    @IBOutlet weak var setttingsImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingScrollView.contentSize.height = setttingsImageView.frame.height + 10
        // Do any additional setup after loading the view.
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

    @IBAction func backButtonPress(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
//        navigationController?.popViewControllerAnimated(true)

    }
}
