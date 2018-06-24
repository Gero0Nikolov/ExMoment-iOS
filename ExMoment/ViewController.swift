//
//  ViewController.swift
//  ExMoment
//
//  Created by Gero Nikolov on 6/24/18.
//  Copyright © 2018 Gero Nikolov. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
		let myURL = URL(string: "https://tool.exmoment.com/")
        let myRequest = URLRequest(url: myURL!)
        browser.load(myRequest)			
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Declare browser
    @IBOutlet weak var browser: WKWebView!
    
    // Set functions
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        browser = WKWebView(frame: .zero, configuration: webConfiguration)
        browser.uiDelegate = self
        view = browser
    }
	
	override var preferredStatusBarStyle: UIStatusBarStyle {
		return .lightContent
	}
}

