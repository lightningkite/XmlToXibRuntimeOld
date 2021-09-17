//
//  CustomXibView.swift
//  XmlToXibRuntime
//
//  Created by Joseph Ivie on 9/17/21.
//

import UIKit

open class XibView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customInit()
    }

    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        customInit()
    }
    
    private func customInit() {
        self.translatesAutoresizingMaskIntoConstraints = false
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: nil)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(view)
        view.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    open override var intrinsicContentSize: CGSize {
        return subviews.first!.intrinsicContentSize
    }
    
    open override func sizeThatFits(_ size: CGSize) -> CGSize {
        return subviews.first!.sizeThatFits(size)
    }
    
    open override func systemLayoutSizeFitting(_ targetSize: CGSize) -> CGSize {
        return subviews.first!.systemLayoutSizeFitting(targetSize)
    }
    
    open override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
        return subviews.first!.systemLayoutSizeFitting(targetSize, withHorizontalFittingPriority: horizontalFittingPriority, verticalFittingPriority: verticalFittingPriority)
    }
}