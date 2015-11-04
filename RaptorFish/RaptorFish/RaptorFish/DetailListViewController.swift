//
//  DetailListViewController.swift
//  RaptorFish
//
//  Created by Sean Smith on 10/25/15.
//  Copyright © 2015 Sean Smith. All rights reserved.

//.transforlm = cgaffineIdentity
//

import UIKit

class DetailListViewController: UIViewController {
    
    @IBOutlet weak var tabBgImage: UIView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var tabButtons: [UIButton]!
    
    
    var taskViewController: UIViewController!
    var activityViewController: UIViewController!
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBgImage.alpha = 0.5
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        taskViewController = storyboard.instantiateViewControllerWithIdentifier("TaskListViewController")
        activityViewController = storyboard.instantiateViewControllerWithIdentifier("ActivityListViewController")
        
        viewControllers = [taskViewController, activityViewController]
        
        tabButtons[selectedIndex].selected = true
        didPressTab(tabButtons[selectedIndex])

        //detailScrollview.contentSize.height = detailScrollImageView.frame.height
        
//        detailScrollImageView.frame.origin = detailScrollImageView.frame.offsetBy(dx: 0, dy: -60)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @IBAction func didPressTab(sender: UIButton) {
        
        //tabStateView.transform = CGAffineTransformMakeTranslation(100, 100)
        
        let previousIndex = selectedIndex
        
        selectedIndex = sender.tag
        
        tabButtons[previousIndex].selected = false
        
        //print(viewControllers[previousIndex])
        
        let previousVC = viewControllers[previousIndex]
        
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        
        let vc = viewControllers[selectedIndex]
        
        addChildViewController(vc)
        
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        vc.didMoveToParentViewController(self)
        
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
