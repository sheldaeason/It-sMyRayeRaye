//
//  InstaGramViewController.swift
//  ItsMyRayeRayeApp
//
//  Created by Shelda Eason on 3/21/15.
//  Copyright (c) 2015 Shelda Eason. All rights reserved.
//

import UIKit

class InstaGramViewController: UIViewController {
    
    
    @IBOutlet weak var webView: UIWebView!
    
    var urlPath = "https://instagram.com/itsmyrayeraye"
    
    func loadAddressURL (){
        let requestURL = NSURL (string:urlPath)
        
        let request = NSURLRequest (URL: requestURL!)
        
        webView.loadRequest(request)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadAddressURL()

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

}
