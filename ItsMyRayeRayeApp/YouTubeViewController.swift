//
//  ViewController.swift
//  ItsMyRayeRayeApp
//
//  Created by Shelda Eason on 3/21/15.
//  Copyright (c) 2015 Shelda Eason. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    
    @IBOutlet weak var webView: UIWebView!
    
    var urlPath = "https://www.youtube.com/user/ItsMyRayeRaye"
    
    func loadAddressURL(){
        let requestURL = NSURL (string:urlPath)
        
        let request = NSURLRequest (URL: requestURL!)
        
        webView.delegate = self
        
        webView.loadRequest(request)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadAddressURL()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func webView(webView: UIWebView, didFailLoadWithError error: NSError) {
        println("show me")
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        println("finish")
    }
}

