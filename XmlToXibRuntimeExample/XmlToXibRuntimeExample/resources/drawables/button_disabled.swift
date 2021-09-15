import XmlToXibRuntime
public extension R.drawable {
    static func button_disabled() -> CALayer {
        LayerMaker.state(.init(
                normal: LayerMaker.rect(
                    fillColor: R.color.disabled, 
                    strokeColor: .clear, 
                    strokeWidth: 0, 
                    topLeftRadius: 0, 
                    topRightRadius: 0, 
                    bottomLeftRadius: 0, 
                    bottomRightRadius: 0
                )
                ,
                selected: nil,
                highlighted: LayerMaker.rect(
                    fillColor: R.color.disabled, 
                    strokeColor: .clear, 
                    strokeWidth: 0, 
                    topLeftRadius: 0, 
                    topRightRadius: 0, 
                    bottomLeftRadius: 0, 
                    bottomRightRadius: 0
                )
                ,
                disabled: LayerMaker.rect(
                    fillColor: R.color.disabled, 
                    strokeColor: .clear, 
                    strokeWidth: 0, 
                    topLeftRadius: 0, 
                    topRightRadius: 0, 
                    bottomLeftRadius: 0, 
                    bottomRightRadius: 0
                )
                ,
        focused: nil))
    }
}
