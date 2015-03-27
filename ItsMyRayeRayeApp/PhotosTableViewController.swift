//
//  PhotosTableViewController.swift
//  ItsMyRayeRayeApp
//
//  Created by Shelda Eason on 3/23/15.
//  Copyright (c) 2015 Shelda Eason. All rights reserved.
//

import UIKit

class PhotosTableViewController: UITableViewController {
    
    var photos = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var newPhoto = Photo(name: "LA Girl Beauty Brick Blush Collection", filename: "LAGirlBlushdetails", notes: "Four gorgeous blush palettes - each collection pairs two blush shades with a coordinated bronzer and highlighter. Instantly contour with complimentary shades and blendable color in both matte and shimmery finishes for multidimensional color. Each luxurious, glossy book includes a mirror inside.")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Sleep Clean Pillow Case", filename: "SleepCleandetails", notes: "Maintain clear skin while you sleep!  This pillow case uses powerful Silver Ion Technology to inhibit the growth of acne-causing bacteria on your pillow.")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Milani Eyeliners", filename: "MelaniEyeLinerdetails", notes: "Love a smoky eye? I do too – especially when they’re quick, easy, softly smudgy and never smeary. That’s where this classic wood pencil comes into play. Highly blendable, super color-saturated and versatile (it can be sharpened to deliver precise lines, too), it’s the eye-definer you’ll reach for again and again.")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "False Lashes", filename: "FalseLashesdetails", notes: "An affordable alternative to buying expensive lashes!  Try these false lashes from eBay!  I promise you will never know the difference – especially if you are on a tight budget.")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Ruby Kisses Matte Lip Lacquers", filename: "RubyKissesdetails", notes: "Your lips will sparkle with these lip lacquers. Apply easy, last all day with no smudging and staining.")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Jordana Cosmetics Matte Lipstick", filename: "JordanaLipstickdetails", notes: "YPucker up for full coverage with rich & creamy textures.  Pick any dazzling color and apply.  This lightweight finish glides on with a soft-shine finish.")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Delia Cosmetics Eyebrow Tint", filename: "deliadetails", notes: "This home treatment is easy and economic, a convenient method for coloring eyebrows by yourself.  Simply mix the content of the cream colourant and activator and apply!")
        photos.append(newPhoto)
        
        

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

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return photos.count
    
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("photoCell", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        var currentPhoto = photos[indexPath.row]
        cell.textLabel?.text = currentPhoto.name

        return cell
    }
   

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
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
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        
            var secondScene = segue.destinationViewController as DisplayViewController
        
        // Pass the selected object to the new view controller.
        
        if let indexPath = self.tableView.indexPathForSelectedRow() {
            let selectedPhoto = photos[indexPath.row]
            secondScene.currentPhoto = selectedPhoto
        }
        
    }
    
    
}
