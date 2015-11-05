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

    @IBOutlet weak var taskScrollView: UIScrollView!
    @IBOutlet weak var itemInfoContainerView: UIView!
    @IBOutlet weak var listContainerView: UIView!
    @IBOutlet weak var privacySwitch: UISwitch!
    @IBOutlet weak var itemNameTextField: UITextField!
    @IBOutlet weak var itemDescriptionTextField: UITextField!
    @IBOutlet weak var membersTabSelectedBar: UIView!

    @IBOutlet weak var listSelectedView: UIView!
    @IBOutlet weak var buttonOneCheckImageView: UIImageView!
    @IBOutlet weak var buttonTwoCheckImageView: UIImageView!
    @IBOutlet weak var buttonThreeCheckImageView: UIImageView!
    @IBOutlet weak var buttonFourCheckImageView: UIImageView!
    @IBOutlet weak var buttonFiveCheckImageView: UIImageView!
    @IBOutlet weak var buttonSixCheckImageView: UIImageView!
    
    @IBOutlet weak var rowOneButton: UIButton!
    @IBOutlet weak var rowTwoButton: UIButton!
    @IBOutlet weak var rowThreeButton: UIButton!
    @IBOutlet weak var rowFourButton: UIButton!
    @IBOutlet weak var rowFiveButton: UIButton!
    @IBOutlet weak var rowSixButton: UIButton!
    
    @IBOutlet weak var groupMembersContainer: UIView!
    @IBOutlet weak var addMembersButton: UIButton!
    @IBOutlet weak var membersFirstView: UIView!
    @IBOutlet weak var membersSecondView: UIView!
    @IBOutlet weak var membersThirdView: UIView!
    @IBOutlet weak var membersFirstImageView: UIImageView!
    @IBOutlet weak var membersFirstLabel: UILabel!
    @IBOutlet weak var membersSecondImageView: UIImageView!
    @IBOutlet weak var memberSecondLabel: UILabel!
    @IBOutlet weak var membersThirdImageView: UIImageView!
    @IBOutlet weak var memberThirdLabel: UILabel!
    
    
    var members: [NSDictionary]!
    
    var titleLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taskScrollView.contentSize.height = itemInfoContainerView.frame.height + listContainerView.frame.height

        groupMembersContainer.alpha = 0
        listSelectedView.alpha = 0
        addMembersButton.alpha = 0
        buttonOneCheckImageView.alpha = 0
        buttonTwoCheckImageView.alpha = 0
        buttonThreeCheckImageView.alpha = 0
        buttonFourCheckImageView.alpha = 0
        buttonFiveCheckImageView.alpha = 0
        buttonSixCheckImageView.alpha = 0
        
        titleLabel = ""
        
        members = [
            [ "memberName" : "Tim",
                "memberImage" : "http://resizing.flixster.com/w1m455J_AaUzi_Aaca2vpL2VymI=/54x80/dkpu1ddg7pbsk.cloudfront.net/movie/11/20/23/11202355_ori.jpg",
                
            ],
            [ "memberName" : "Randy",
                "memberImage" : "http://resizing.flixster.com/w1m455J_AaUzi_Aaca2vpL2VymI=/54x80/dkpu1ddg7pbsk.cloudfront.net/movie/11/20/23/11202355_ori.jpg",
                
            ],
            [ "memberName" : "The Martian",
                "memberImage" : "http://resizing.flixster.com/w1m455J_AaUzi_Aaca2vpL2VymI=/54x80/dkpu1ddg7pbsk.cloudfront.net/movie/11/20/23/11202355_ori.jpg",
                
            ],
        ]
        
            
        membersFirstImageView.layer.cornerRadius = membersFirstImageView.frame.size.width / 2
        membersSecondImageView.layer.cornerRadius = membersSecondImageView.frame.size.width / 2
        membersThirdImageView.layer.cornerRadius = membersThirdImageView.frame.size.width / 2
        
    }
    
    @IBAction func privacySwitchPressed(sender: UISwitch) {
        if privacySwitch.on {
            UIView.animateWithDuration(0.2
                , animations: { () -> Void in
                    self.groupMembersContainer.alpha = 1
            })
        } else {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.groupMembersContainer.alpha = 0
            })
        }
    }
    
    @IBAction func newItemCloseButtonPress(sender: AnyObject) {
//        dismissViewControllerAnimated(true, completion: nil)
        navigationController?.popViewControllerAnimated(true)

    }
    
    @IBAction func buttonOnePressed(sender: AnyObject) {
        if buttonOneCheckImageView.alpha == 0 {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.buttonOneCheckImageView.alpha = 1
                self.buttonTwoCheckImageView.alpha = 0
                self.buttonThreeCheckImageView.alpha = 0
                self.buttonFourCheckImageView.alpha = 0
                self.buttonFiveCheckImageView.alpha = 0
                self.buttonSixCheckImageView.alpha = 0
                self.listSelectedView.alpha = 1
                
                self.addMembersButton.alpha = 1
                self.membersFirstView.alpha = 0
                self.membersSecondView.alpha = 0
                self.membersThirdView.alpha = 0
                
            })
        } else {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.buttonOneCheckImageView.alpha = 0
                self.buttonTwoCheckImageView.alpha = 0
                self.buttonThreeCheckImageView.alpha = 0
                self.buttonFourCheckImageView.alpha = 0
                self.buttonFiveCheckImageView.alpha = 0
                self.buttonSixCheckImageView.alpha = 0
                self.listSelectedView.alpha = 0
                self.addMembersButton.alpha = 0
                self.membersFirstView.alpha = 1
                self.membersSecondView.alpha = 1
                self.membersThirdView.alpha = 1
            })
        }
    }
    
    @IBAction func buttonTwoPressed(sender: AnyObject) {
        if buttonTwoCheckImageView.alpha == 0 {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.buttonOneCheckImageView.alpha = 0
                self.buttonTwoCheckImageView.alpha = 1
                self.buttonThreeCheckImageView.alpha = 0
                self.buttonFourCheckImageView.alpha = 0
                self.buttonFiveCheckImageView.alpha = 0
                self.buttonSixCheckImageView.alpha = 0
                
                self.listSelectedView.alpha = 1
                self.membersFirstImageView.image = UIImage(named: "imgProfile_randy")
                self.membersFirstLabel.text = String("Randy Mako")
                self.membersSecondImageView.image = UIImage(named: "imgProfile_lin")
                self.memberSecondLabel.text = String("Lin Wang")
                self.membersThirdImageView.image = UIImage(named: "imgProfile_sean")
                self.memberThirdLabel.text = String("Sean Smith")
                
                self.titleLabel = "Thanksgiving Dinner"
            })
        } else {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.buttonOneCheckImageView.alpha = 0
                self.buttonTwoCheckImageView.alpha = 0
                self.buttonThreeCheckImageView.alpha = 0
                self.buttonFourCheckImageView.alpha = 0
                self.buttonFiveCheckImageView.alpha = 0
                self.buttonSixCheckImageView.alpha = 0
                self.listSelectedView.alpha = 0

            })
        }
    }
    @IBAction func buttonThreePressed(sender: AnyObject) {
        if buttonThreeCheckImageView.alpha == 0 {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.buttonOneCheckImageView.alpha = 0
                self.buttonTwoCheckImageView.alpha = 0
                self.buttonThreeCheckImageView.alpha = 1
                self.buttonFourCheckImageView.alpha = 0
                self.buttonFiveCheckImageView.alpha = 0
                self.buttonSixCheckImageView.alpha = 0
                self.listSelectedView.alpha = 1

                self.membersFirstImageView.image = UIImage(named: "06")
                self.membersFirstLabel.text = String("Daniel Thengvall")
                self.membersSecondImageView.image = UIImage(named: "01")
                self.memberSecondLabel.text = String("Emily Hoover")
                self.membersThirdImageView.image = UIImage(named: "10")
                self.memberThirdLabel.text = String("Joe Finnigan")
                
            })
        } else {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.buttonOneCheckImageView.alpha = 0
                self.buttonTwoCheckImageView.alpha = 0
                self.buttonThreeCheckImageView.alpha = 0
                self.buttonFourCheckImageView.alpha = 0
                self.buttonFiveCheckImageView.alpha = 0
                self.buttonSixCheckImageView.alpha = 0
                self.listSelectedView.alpha = 0
            })
        }
    }

    @IBAction func buttonFourPressed(sender: AnyObject) {
        if buttonFourCheckImageView.alpha == 0 {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.buttonOneCheckImageView.alpha = 0
                self.buttonTwoCheckImageView.alpha = 0
                self.buttonThreeCheckImageView.alpha = 0
                self.buttonFourCheckImageView.alpha = 1
                self.buttonFiveCheckImageView.alpha = 0
                self.buttonSixCheckImageView.alpha = 0
                self.listSelectedView.alpha = 1
                
                self.membersFirstImageView.image = UIImage(named: "02")
                self.membersFirstLabel.text = String("Justin Hill")
                self.membersSecondImageView.image = UIImage(named: "09")
                self.memberSecondLabel.text = String("Jason Flores")
                self.membersThirdImageView.image = UIImage(named: "11")
                self.memberThirdLabel.text = String("Nicholas Howard")

            })
        } else {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.buttonOneCheckImageView.alpha = 0
                self.buttonTwoCheckImageView.alpha = 0
                self.buttonThreeCheckImageView.alpha = 0
                self.buttonFourCheckImageView.alpha = 0
                self.buttonFiveCheckImageView.alpha = 0
                self.buttonSixCheckImageView.alpha = 0
                self.listSelectedView.alpha = 0
            })
        }
    }
    
    @IBAction func buttonFivePressed(sender: AnyObject) {
        if buttonFiveCheckImageView.alpha == 0 {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.buttonOneCheckImageView.alpha = 0
                self.buttonTwoCheckImageView.alpha = 0
                self.buttonThreeCheckImageView.alpha = 0
                self.buttonFourCheckImageView.alpha = 0
                self.buttonFiveCheckImageView.alpha = 1
                self.buttonSixCheckImageView.alpha = 0
                self.listSelectedView.alpha = 1
                
                self.membersFirstImageView.image = UIImage(named: "04")
                self.membersFirstLabel.text = String("Gregory Patterson")
                self.membersSecondImageView.image = UIImage(named: "07")
                self.memberSecondLabel.text = String("Walter Burns  ")
                self.membersThirdImageView.image = UIImage(named: "11")
                self.memberThirdLabel.text = String("Nicholas Howard")

            })
        } else {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.buttonOneCheckImageView.alpha = 0
                self.buttonTwoCheckImageView.alpha = 0
                self.buttonThreeCheckImageView.alpha = 0
                self.buttonFourCheckImageView.alpha = 0
                self.buttonFiveCheckImageView.alpha = 0
                self.buttonSixCheckImageView.alpha = 0
                self.listSelectedView.alpha = 0
            })
        }
    }
    @IBAction func buttonSixPressed(sender: AnyObject) {
        if buttonSixCheckImageView.alpha == 0 {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.buttonOneCheckImageView.alpha = 0
                self.buttonTwoCheckImageView.alpha = 0
                self.buttonThreeCheckImageView.alpha = 0
                self.buttonFourCheckImageView.alpha = 0
                self.buttonFiveCheckImageView.alpha = 0
                self.buttonSixCheckImageView.alpha = 1
                self.listSelectedView.alpha = 1
                
                self.membersFirstImageView.image = UIImage(named: "08")
                self.membersFirstLabel.text = String("Helen Black")
                self.membersSecondImageView.image = UIImage(named: "05")
                self.memberSecondLabel.text = String("Christina Davis")
                self.membersThirdImageView.image = UIImage(named: "03")
                self.memberThirdLabel.text = String("Rose Harris")

            })
        } else {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.buttonOneCheckImageView.alpha = 0
                self.buttonTwoCheckImageView.alpha = 0
                self.buttonThreeCheckImageView.alpha = 0
                self.buttonFourCheckImageView.alpha = 0
                self.buttonFiveCheckImageView.alpha = 0
                self.buttonSixCheckImageView.alpha = 0
                self.listSelectedView.alpha = 0
            })
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let next_view = segue.destinationViewController
        
        if(next_view is DetailListViewController){
//            listLabel = self.listTitle.text
            print("Title")
            
            print(titleLabel)
            let detailListViewController = segue.destinationViewController as! DetailListViewController
            if let label = detailListViewController.titleLabel{
                label.text = self.titleLabel
            }
//            detailListViewController.titleLabel.text = self.listTitle

            
        } else {}
    }
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let next_view = segue.destinationViewController
//        
//        if(next_view is DetailListViewController){
//            let cell = sender as! UITableViewCell
//            let indexPath = homeListTableView.indexPathForCell(cell)!
//            print("Details")
//            let detailListViewController = segue.destinationViewController as! DetailListViewController
//            
//            detailListViewController.list = lists[indexPath.row]
//            
//        } else {}
//    }

}
