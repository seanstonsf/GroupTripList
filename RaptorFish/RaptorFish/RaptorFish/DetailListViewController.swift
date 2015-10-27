//
//  DetailListViewController.swift
//  RaptorFish
//
//  Created by Sean Smith on 10/25/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class DetailListViewController: UIViewController {
    @IBOutlet weak var detailScrollview: UIScrollView!
    @IBOutlet weak var detailScrollImageView: UIImageView!
    @IBOutlet weak var detailHeaderImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        detailScrollview.contentSize.height = detailScrollImageView.frame.height
        
//        detailScrollImageView.frame.origin = detailScrollImageView.frame.offsetBy(dx: 0, dy: -60)
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

    @IBAction func saveTemplateButtonPress(sender: AnyObject) {
        print("Save Template")
    }

    @IBAction func detailBackButton(sender: AnyObject) {
        print("Back Button Press")
//        navigationController?.popViewControllerAnimated(true)
        navigationController?.popToRootViewControllerAnimated(true)

    }
    
}
