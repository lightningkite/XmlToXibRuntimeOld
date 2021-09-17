//
//  CustomTestView.swift
//  XmlToXibRuntimeExample
//
//  Created by Joseph Ivie on 9/17/21.
//

import UIKit
import XmlToXibRuntime
import M13Checkbox

@IBDesignable
class CustomTestView: XibView {
    @IBOutlet weak var checkbox: M13Checkbox!
    @IBOutlet weak var label: UILabel!
}
