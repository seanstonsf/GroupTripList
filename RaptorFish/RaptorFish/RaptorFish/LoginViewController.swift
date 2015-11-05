//
//  LoginViewController.swift
//  RaptorFish
//
//  Created by Sean Smith on 10/24/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIViewControllerTransitioningDelegate, UINavigationControllerDelegate {
    
    var fadeTransition: Some3DTransition!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destinationViewController = segue.destinationViewController
        
        fadeTransition = Some3DTransition()
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        destinationViewController.transitioningDelegate = fadeTransition
        
        fadeTransition.duration = 0.8
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
   

}
