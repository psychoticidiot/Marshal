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

public extension SKShapeNode { /* Marshaling */
    public func marshalShapeNode(includeChildren: Bool = true) -> MarshaledObject {
        var result = self.marshalNode(includeChildren)
// TODO: implement path extraction
//
//        if let path = self.path {
//            result["path"] = path.marshal()
//        }
        result["fillColor"] = self.fillColor.marshal()
// TODO: implement texture extraction
//
//        if let fillTexture = self.fillTexture {
//            result["fillTexture"] = fillTexture.marshal()
//        }
//        
// TODO: implement shader extraction
//
//        if let fillShader = self.fillShader {
//            result["fillShader"] = fillShader.marshal()
//        }
        result["lineWidth"] = self.lineWidth
        result["glowWidth"] = self.glowWidth
        result["antialiased"] = self.antialiased
        result["strokeColor"] = self.strokeColor.marshal()
// TODO: implement texture extraction
//
//        if let strokeTexture = self.strokeTexture {
//            result["strokeTexture"] = strokeTexture.marshal()
//        }
//        
// TODO: implement shader extraction
//
//        if let strokeShader = self.strokeShader {
//            result["strokeShader"] = strokeShader.marshal()
//        }
        result["lineCap"] = self.lineCap.stringValue
        result["lineJoin"] = self.lineJoin.stringValue
        result["miterLimit"] = self.miterLimit
        result["blendMode"] = self.blendMode.stringValue
        
        return result
    }
}

public extension SKShapeNode { /* UnmarshalUpdating */
    public func updateShapeNode(object object: MarshaledObject) {
        self.updateNode(object: object)
        
// TODO: update path
//
//        if let path: CGPath = try? object.valueForKey("path") {
//            self.path = path
//        }
        if let fillColor: SKColor = try? object.valueForKey("fillColor") {
            self.fillColor = fillColor
        }
// TODO: update fillTexture
//
//        if let fillTexture: SKTexture = try? object.valueForKey("fillTexture") {
//
//        }
//        
// TODO: update fillShader
//
//        if let fillShader: SKShader = try? object.valueForKey("fillShader") {
//
//        }
        if let lineWidth: CGFloat = try? object.valueForKey("lineWidth") {
            self.lineWidth = lineWidth
        }
        if let glowWidth: CGFloat = try? object.valueForKey("glowWidth") {
            self.glowWidth = glowWidth
        }
        if let antialiased: Bool = try? object.valueForKey("antialiased") {
            self.antialiased = antialiased
        }
        if let strokeColor: SKColor = try? object.valueForKey("strokeColor") {
            self.strokeColor = strokeColor
        }
// TODO: update strokeTexture
//
//        if let strokeTexture: SKTexture = try? object.valueForKey("strokeTexture") {
//
//        }
//
// TODO: update strokeShader
//
//        if let strokeShader: SKShader = try? object.valueForKey("strokeShader") {
//
//        }
        if let lineCapString: String = try? object.valueForKey("lineCap"), lineCap = CGLineCap(stringValue: lineCapString) {
            self.lineCap = lineCap
        }
        if let lineJoinString: String = try? object.valueForKey("lineJoin"), lineJoin = CGLineJoin(stringValue: lineJoinString) {
            self.lineJoin = lineJoin
        }
        if let miterLimit: CGFloat = try? object.valueForKey("miterLimit") {
            self.miterLimit = miterLimit
        }
        if let blendModeString: String = try? object.valueForKey("blendMode"), blendMode = SKBlendMode(stringValue: blendModeString) {
            self.blendMode = blendMode
        }
    }
}
#endif
