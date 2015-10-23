//
//  TemplateViewController.swift
//  RaptorFish
//
//  Created by Sean Smith on 10/22/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class TemplateViewController: UIViewController {

    @IBOutlet weak var templateScrollView: UIScrollView!
    @IBOutlet weak var templateImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        templateScrollView.contentSize.height = templateImageView.frame.height
        
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

    @IBAction func closeButtonPress(sender: AnyObject) {
        dismissViewControllerAnimated(
            true, completion: nil)
    }
}
