//
//  FirstViewController.swift
//  firstSwiftTab
//
//  Created by BridgeLabz on 03/01/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var friendNames = [("Aditya","images-3.jpeg"),("reema","default.png.jpeg")]
    var nametopush : String!
    var imagetopush : UIImage!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
               
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendNames.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let (Names,DisplayPictures) = friendNames[indexPath.row]
        //let cell = tableView.dequeueReusableCellWithIdentifier("settingCell", forIndexPath: indexPath)
        let cell = UITableViewCell();
        cell.textLabel?.text = Names
        cell.imageView?.image = UIImage(named: DisplayPictures)
        cell.imageView?.frame = CGRectMake(0, 0, 40, 40)
        return cell
    }
//    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
//        print("hello")
//    }
    //for opening chat cells
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("hi")
        let indexPath = tableView.indexPathForSelectedRow
        let cell = tableView.cellForRowAtIndexPath(indexPath!)
        imagetopush = (cell!.imageView?.image)!
        nametopush = (cell!.textLabel?.text)!
        print(nametopush)
        performSegueWithIdentifier("showChatDetails", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showChatDetails")
        {
            let showChatDetails  = segue.destinationViewController as! ChatViewController
            showChatDetails.chatname = nametopush
                showChatDetails.chatdp = imagetopush
            //print(nametopush)
            print("hello segue")
            
        }
    }


    //for deleting table cell
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete
        {
            friendNames.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }
    
    
    
    @IBOutlet weak var EditOutlet: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var Button: UIBarButtonItem!
    
    
    
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        let indexPath = tableView.indexPathForSelectedRow
//        let cell = tableView.cellForRowAtIndexPath(indexPath!)
//        imagetopush = (cell!.imageView?.image)!
//        nametopush = (cell!.textLabel?.text)!
//        performSegueWithIdentifier("showChatDetails", sender: self)
//       
//    }

  //swipe to delete the cell
   
    @IBAction func EditButtonPressed(sender: AnyObject) {
        
        self.tableView.editing = true
        
        
    }
  
        
        
    }
   //

    
    
   
    
    
    
    
    
    
    

//    func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }




