//
//  InfoViewController.swift
//  ItsMyRayeRayeApp
//
//  Created by Shelda Eason on 3/23/15.
//  Copyright (c) 2015 Shelda Eason. All rights reserved.
//

import UIKit
import Social

class InfoViewController: UIViewController {
    
    

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
   
    @IBAction func shareToFacebook(sender: AnyObject) {
        
        var shareToFacebook : SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        self.presentViewController(shareToFacebook, animated: true, completion: nil)
        
        shareToFacebook.setInitialText("Check out the lastest video from It's My Raye Raye! http://bit.ly/1Cwlpqv")
        shareToFacebook.addImage(UIImage(named:"itsmyrayeraye.jpg"))
        
        
    
    }
    
    
    
    @IBAction func shareToTwitter(sender: AnyObject) {
        var shareToTwitter : SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        self.presentViewController(shareToTwitter, animated: true, completion: nil)
        
        shareToTwitter.setInitialText("Check out the lastest video from It's My Raye Raye! http://bit.ly/1Cwlpqv")
        shareToTwitter.addImage(UIImage(named:"itsmyrayeraye.jpg"))
        
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
