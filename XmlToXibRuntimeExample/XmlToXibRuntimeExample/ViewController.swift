//
//  ViewController.swift
//  XmlToXibRuntimeExample
//
//  Created by Joseph Ivie on 9/15/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .white
        
        let subview = CurrentTestXml(frame: .zero)
        self.view.addSubview(subview)
        subview.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        subview.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        subview.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        subview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        print("Loaded, subview is \(subview) and superview is \(self.view)")
    }
    
}

