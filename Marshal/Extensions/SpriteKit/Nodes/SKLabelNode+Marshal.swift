//
//  M A R S H A L
//
//       ()
//       /\
//  ()--'  '--()
//    `.    .'
//     / .. \
//    ()'  '()
//
//


#if !os(watchOS)
import Foundation
import SpriteKit


// NOTE: Swift doesn't allow methods to be overriden by subclass extensions,
//       so we are defining explicit subclass implementations

public extension SKLabelNode { /* Marshaling */
    public func marshalLabelNode(includeChildren: Bool = true) -> MarshaledObject {
        var result = self.marshalNode(includeChildren)
        result["text"] = self.text ?? ""
        result["fontColor"] = self.fontColor?.marshal() ?? SKColor.whiteColor().marshal()
        result["fontName"] = self.fontName ?? ""
        result["fontSize"] = self.fontSize
        result["verticalAlignmentMode"] = self.verticalAlignmentMode.stringValue
        result["horizontalAlignmentMode"] = self.horizontalAlignmentMode.stringValue
        if let color = self.color {
            result["color"] = color.marshal()
        }
        result["colorBlendFactor"] = self.colorBlendFactor
        result["blendMode"] = self.blendMode.stringValue
        
        return result
    }
}

public extension SKLabelNode { /* UnmarshalUpdating */
    public func updateLabelNode(object object: MarshaledObject) {
        self.updateNode(object: object)
        
        if let text: String = try? object.valueForKey("text") {
            self.text = text
        }
        if let fontColor: SKColor = try? object.valueForKey("fontColor") {
            self.fontColor = fontColor
        }
        if let fontName: String = try? object.valueForKey("fontName") where fontName.utf8.count > 0 {
            self.fontName = fontName
        }
        if let fontSize: CGFloat = try? object.valueForKey("fontSize") {
            self.fontSize = fontSize
        }
        if let verticalAlignmentModeString: String = try? object.valueForKey("verticalAlignmentMode"), verticalAlignmentMode = SKLabelVerticalAlignmentMode(stringValue: verticalAlignmentModeString) {
            self.verticalAlignmentMode = verticalAlignmentMode
        }
        if let horizontalAlignmentModeString: String = try? object.valueForKey("horizontalAlignmentMode"), horizontalAlignmentMode = SKLabelHorizontalAlignmentMode(stringValue: horizontalAlignmentModeString) {
            self.horizontalAlignmentMode = horizontalAlignmentMode
        }
        if let color: SKColor = try? object.valueForKey("color") {
            self.color = color
        }
        if let colorBlendFactor: CGFloat = try? object.valueForKey("colorBlendFactor") {
            self.colorBlendFactor = colorBlendFactor
        }
        if let blendModeString: String = try? object.valueForKey("blendMode"), blendMode = SKBlendMode(stringValue: blendModeString) {
            self.blendMode = blendMode
        }
    }
}
#endif
