//
//  ViewController.swift
//  Somunity
//
//  Created by 황대민 on 2016. 7. 23..
//  Copyright (c) 2016 Daemin Hwang. All rights reserved.
//
import UIKit


class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var myIndicator: UIActivityIndicatorView!
    
   override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self

        var url = NSURL(string: "https://google.com")
        var request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    public func webViewDidStartLoad(webView: UIWebView){
        myIndicator.startAnimating();
    }
    public func webViewDidFinishLoad(webView: UIWebView){
        myIndicator.stopAnimating();
        myIndicator.hidden = true;
    }
}
