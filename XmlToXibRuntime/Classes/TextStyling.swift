//Stub file made with Butterfly 2 (by Lightning Kite)
import Foundation
import UIKit


open class StyledUILabel: UILabel {
    public var lineSpacingMultiplier: CGFloat = 1 {
        didSet {
            refresh()
        }
    }
    public var letterSpacing: CGFloat = 0 {
        didSet {
            refresh()
        }
    }
    public var textAllCaps: Bool = false {
        didSet {
            refresh()
        }
    }
    
    private var _textData: String? = nil
    open override var text: String? {
        get { return _textData ?? super.text }
        set(value) {
            _textData = value
            super.text = value
            refresh()
        }
    }
    
    open func refresh() {
        var toSet = _textData ?? ""
        if textAllCaps {
            toSet = toSet.uppercased()
        }
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = self.textAlignment
        paragraphStyle.lineHeightMultiple = lineSpacingMultiplier
        
        self.attributedText = NSAttributedString(string: toSet, attributes: [.kern: letterSpacing * font.pointSize, NSAttributedString.Key.paragraphStyle: paragraphStyle])
    }
}


open class StyledUITextView: UITextView {
    public var lineSpacingMultiplier: CGFloat = 1 {
        didSet {
            refresh()
        }
    }
    public var letterSpacing: CGFloat = 0 {
        didSet {
            refresh()
        }
    }
    public var textAllCaps: Bool = false {
        didSet {
            refresh()
        }
    }
    
    private var _textData: String? = nil
    open override var text: String? {
        get { return _textData ?? super.text }
        set(value) {
            _textData = value
            super.text = value
            refresh()
        }
    }
    
    open func refresh() {
        var toSet = _textData ?? ""
        if textAllCaps {
            toSet = toSet.uppercased()
        }
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = self.textAlignment
        paragraphStyle.lineHeightMultiple = lineSpacingMultiplier
        
        self.attributedText = NSAttributedString(string: toSet, attributes: [.kern: letterSpacing * (font?.pointSize ?? 0.0), NSAttributedString.Key.paragraphStyle: paragraphStyle])
    }
}

open class StyledUITextField: UITextField {
    public var lineSpacingMultiplier: CGFloat = 1 {
        didSet {
            refresh()
        }
    }
    public var letterSpacing: CGFloat = 0 {
        didSet {
            refresh()
        }
    }
    public var textAllCaps: Bool = false {
        didSet {
            refresh()
        }
    }
    
    private var _textData: String? = nil
    open override var text: String? {
        get { return _textData ?? super.text }
        set(value) {
            _textData = value
            super.text = value
            refresh()
        }
    }
    
    open func refresh() {
        var toSet = _textData ?? ""
        if textAllCaps {
            toSet = toSet.uppercased()
        }
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = self.textAlignment
        paragraphStyle.lineHeightMultiple = lineSpacingMultiplier
        
        self.attributedText = NSAttributedString(string: toSet, attributes: [.kern: letterSpacing * (font?.pointSize ?? 0.0), NSAttributedString.Key.paragraphStyle: paragraphStyle])
    }
}

open class StyledUIButton: UIButton {
    public var lineSpacingMultiplier: CGFloat = 1 {
        didSet {
            refresh()
        }
    }
    public var letterSpacing: CGFloat = 0 {
        didSet {
            refresh()
        }
    }
    public var textAllCaps: Bool = false {
        didSet {
            refresh()
        }
    }
    public var textAlignment: NSTextAlignment = .center {
        didSet {
            refresh()
        }
    }
    
    private var _textData: String? = nil
    override open func setTitle(_ title: String?, for state: UIControl.State) {
        _textData = title
        super.setTitle(title, for: state)
        refresh()
    }
    override open func title(for state: UIControl.State) -> String? {
        return _textData ?? super.title(for: state)
    }
    
    open func refresh() {
        var toSet = _textData ?? ""
        if textAllCaps {
            toSet = toSet.uppercased()
        }
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = self.textAlignment
        paragraphStyle.lineHeightMultiple = lineSpacingMultiplier
        let font = titleLabel?.font
        
        self.setAttributedTitle(NSAttributedString(string: toSet, attributes: [.kern: letterSpacing * (font?.pointSize ?? 0.0), NSAttributedString.Key.paragraphStyle: paragraphStyle]), for: .normal)
    }
}
