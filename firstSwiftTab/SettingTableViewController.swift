//
//  SettingTableViewController.swift
//  firstSwiftTab
//
//  Created by BridgeLabz on 04/01/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    var valueToPass : String!
    var valueToImage : UIImage!
    var i = 1
    //var showSettingDetails : SettingDetailsViewController!
     var showSettingDetail : SettingDetailsViewController!
    //var s = SettingTableViewController!
    
    let profileHolder = [("userName_1","images-3.jpeg"),("",""),("Account",""),("privacy","")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    // MARK: - Table view data source

//     override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return profileHolder.count
    }

    
     override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCellWithIdentifier("settingCell", forIndexPath: indexPath)
        let cell = UITableViewCell()
        // Configure the cell...
        
        let (Name,ProfImage) = profileHolder[indexPath.row]
        
        //cell.textLabel?.text = "ABC"
        print("name = %@",Name)
       cell.textLabel?.text = Name
        cell.imageView?.image = UIImage(named: ProfImage)
        
        return cell
    }
    
    //override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
//    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        
//        let indexpath = tableView.indexPathForSelectedRow!;
//        let cell = tableView.cellForRowAtIndexPath(indexpath) as UITableViewCell!;
//        
//        valueToPass = cell.textLabel?.text
//        valueToImage = cell.imageView?.image
//        //performSegueWithIdentifier("showDetail", sender: self)
//        i++
//        print("row selected \(i)")
//        
//
//    }
    
    //override func table
    
        override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let indexpath = tableView.indexPathForSelectedRow!;
        let cell = tableView.cellForRowAtIndexPath(indexpath) as UITableViewCell!;
        
        valueToPass = cell.textLabel?.text
        valueToImage = cell.imageView?.image
        //self.assign()
       //showSettingDetail.imageNamed = valueToImage
        print("string  = %@",valueToPass)
        performSegueWithIdentifier("showDetail", sender: self)
        
        
        //self.performSegueWithIdentifier("showDetail", sender: self)
        //showSettingDetails : SettingDetailsViewController!
        i++
        print("row selected \(i)")
    }
    
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showDetail")
                {
                    let showSettingDetails  = segue.destinationViewController as! SettingDetailsViewController
                    showSettingDetails.imageNamed =  valueToImage
                    showSettingDetails.UserName = valueToPass
        //            i++
        //             print("segue \(i)")
                }
            }
    
    
//    func assign()
//    {
//        showSettingDetail.UserName = valueToPass
//        showSettingDetail.imageNamed = valueToImage
//    }
    
    

    
//     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if (segue.identifier == "showDetail")
//        {
//            let showSettingDetails  = segue.destinationViewController as! SettingDetailsViewController
//            showSettingDetails.imageNamed =  valueToImage
//            showSettingDetails.UserName = valueToPass
//            i++
//             print("segue \(i)")
//        }
//    }
    
    
    
    
//    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
//        if segue!.identifier == "showDetails" {
//            let showSettingDetails: SettingDetailsViewController = segue!.destinationViewController as! SettingDetailsViewController
//            let ip = self.tableView.indexPathForSelectedRow
//             let (Name,ProfImage) = profileHolder[(ip?.row)!]
//            print("%@",Name)
//            
//            showSettingDetails.imageNamed = ProfImage
//            showSettingDetails.UserName = Name
//            
//        }
//        
//    }
//
    
        

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
