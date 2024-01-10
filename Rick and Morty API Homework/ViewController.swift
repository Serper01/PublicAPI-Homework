//
//  ViewController.swift
//  Rick and Morty API Homework
//
//  Created by Serper Kurmanbek on 10.01.2024.
//

import UIKit
import WebKit
import SVProgressHUD

class ViewController: UIViewController, WKNavigationDelegate{
    
    @IBOutlet weak var webview: WKWebView!
    
    var character = Character()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        webview.navigationDelegate = self
        
        let url = URL(string: character.url)
        let urlRequest = URLRequest(url: url!)
        
        webview.load(urlRequest)
    }
    
    func webView(_webView: WKWebView, didStartPreviousNavigation navigation: WKNavigation!){
        SVProgressHUD.show()
    }
    
    func webView(_webView: WKWebView, didFinish navigation: WKNavigation!){
        SVProgressHUD.dismiss()
    }
    
    func webVIew(_webVIew: WKWebView, didFail nagivation: WKNavigation!, withError error: Error){
        SVProgressHUD.dismiss()
    }
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        SVProgressHUD.dismiss()
    }

}

