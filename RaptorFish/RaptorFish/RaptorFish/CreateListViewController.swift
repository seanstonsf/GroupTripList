//
//  CreateListViewController.swift
//  RaptorFish
//
//  Created by Sean Smith on 10/22/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class CreateListViewController: UIViewController {
    
    

    @IBOutlet weak var checkImageView: UIImageView!
    @IBOutlet weak var xImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       checkImageView.image = checkImageView.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        
        checkImageView.tintColor = UIColor.whiteColor()
        
        xImageView.image = xImageView.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        
        xImageView.tintColor = UIColor.whiteColor()

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

    @IBAction func newListCloseButton(sender: AnyObject) {
//        dismissViewControllerAnimated(true, completion: nil)
        navigationController?.popViewControllerAnimated(true)
    }
}
