//
//  ChatViewController.swift
//  firstSwiftTab
//
//  Created by BridgeLabz on 04/01/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var chatDp: UIImageView!

    @IBOutlet weak var chatName: UILabel!
    var messageArray = [String]()
    var messageString : String!
    var chatdp : UIImage!
    var chatname : String!
    
    //messges
    @IBOutlet weak var messageTextField: UITextField!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chatDp.image = chatdp
        chatName.text = chatname
        appsTableView!.setContentOffset(CGPointZero, animated:true)
        appsTableView?.backgroundView = UIImageView(image: UIImage(named: "background.jpg"))

        // Do any additional setup after loading the view.
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //tableViewData
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell ()
        
        cell.textLabel?.text = messageArray[indexPath.row]
        cell.textLabel?.textColor = UIColor.whiteColor()
       // tableViewScrollToDown(true)
        cell.backgroundColor = UIColor(patternImage: UIImage(named: "background.jpg")!)
        
        
        return cell
        }
    
    @IBOutlet var appsTableView : UITableView?
    @IBAction func sendButtonPressed(sender: AnyObject)
    {
        print(messageTextField.text)
        //let ty = [messageTextField.text]
        messageString = messageTextField.text
        
       messageArray.append(messageString)
        print(messageString)
        print(messageArray)
        self.appsTableView?.reloadData()
        messageTextField.text = ""
    }
    // code for scrolling down tableView
    
    func tableViewScrollToDown(animated: Bool) {
        
        let delay = 0.1 * Double(NSEC_PER_SEC)
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        
        dispatch_after(time, dispatch_get_main_queue(), {
            
            //let numberOfSections = self.appsTableView?.numberOfRowsInSection(1);
            let numberOfRows = self.appsTableView!.numberOfRowsInSection(self.messageArray.count-1)
            
            if numberOfRows > 0 {
                let indexPath = NSIndexPath(forRow: (self.messageArray.count-1), inSection: 0)
                self.appsTableView!.scrollToRowAtIndexPath(indexPath, atScrollPosition: UITableViewScrollPosition.Bottom, animated: animated)
            }
            
        })
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
