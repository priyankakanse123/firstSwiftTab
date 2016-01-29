//
//  SettingDetailsViewController.swift
//  firstSwiftTab
//
//  Created by BridgeLabz on 04/01/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class SettingDetailsViewController: UIViewController {
    
   
    @IBOutlet weak var ProfileName : UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    var imageNamed : UIImage!
    var UserName : String!
   // var tableObj : SettingTableViewController!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        profileImage.image = imageNamed
        ProfileName.text = UserName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   }
