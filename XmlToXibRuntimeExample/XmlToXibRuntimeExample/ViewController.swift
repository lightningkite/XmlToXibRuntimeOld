//
//  ViewController.swift
//  XmlToXibRuntimeExample
//
//  Created by Joseph Ivie on 9/15/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var testButton: UIButton!
    @IBOutlet weak var testButtonHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func testButtonTouch(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {
            self.testButtonHeight.constant += 10
        })
    }
    
}

