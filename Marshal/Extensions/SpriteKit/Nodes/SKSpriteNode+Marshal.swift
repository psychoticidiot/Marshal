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

public extension SKSpriteNode { /* Marshaling */
    public func marshalSpriteNode(includeChildren: Bool = true) -> MarshaledObject {
        var result = self.marshalNode(includeChildren)
        result["size"] = self.size.marshal()
        result["anchorPoint"] = self.anchorPoint.marshal()
// TODO: implement texture extraction
//
//        if let texture = self.texture {
//            result["texture"] = texture.marshal()
//        }
        result["centerRect"] = self.centerRect.marshal()
        result["colorBlendFactor"] = self.colorBlendFactor
        result["color"] = self.color.marshal()
        result["blendMode"] = self.blendMode.stringValue
        if #available(OSX 10.10, *) {
            result["lightingBitMask"] = UInt(self.lightingBitMask)
            result["shadowedBitMask"] = UInt(self.shadowedBitMask)
            result["shadowCastBitMask"] = UInt(self.shadowCastBitMask)
        }
// TODO: implement texture extraction
//
//        if let normalTexture = self.normalTexture {
//            result["normalTexture"] = normalTexture.marshal()
//        }
//        
// TODO: implement shader extraction
//
//        if let shader = self.shader {
//            result["shader"] = shader.marshal()
//        }
        
        return result
    }
}

public extension SKSpriteNode { /* UnmarshalUpdating */
    public func updateSpriteNode(object object: MarshaledObject) {
        self.updateNode(object: object)
        if let size: CGSize = try? object.valueForKey("size") {
            self.size = size
        }
        if let anchorPoint: CGPoint = try? object.valueForKey("anchorPoint") {
            self.anchorPoint = anchorPoint
        }
// TODO: update texture
//
//        if let texture: MarshaledObject = try? object.valueForKey("texture") {
//
//        }
        if let centerRect: CGRect = try? object.valueForKey("centerRect") {
            self.centerRect = centerRect
        }
        if let colorBlendFactor: CGFloat = try? object.valueForKey("colorBlendFactor") {
            self.colorBlendFactor = colorBlendFactor
        }
        if let color: SKColor = try? object.valueForKey("color") {
            self.color = color
        }
        if let blendModeString: String = try? object.valueForKey("blendMode"), blendMode = SKBlendMode(stringValue: blendModeString) {
            self.blendMode = blendMode
        }
        if #available(OSX 10.10, *) {
            if let lightingBitMask: UInt32 = try? object.valueForKey("lightingBitMask") {
                self.lightingBitMask = lightingBitMask
            }
            if let shadowedBitMask: UInt32 = try? object.valueForKey("shadowedBitMask") {
                self.shadowedBitMask = shadowedBitMask
            }
            if let shadowCastBitMask: UInt32 = try? object.valueForKey("shadowCastBitMask") {
                self.shadowCastBitMask = shadowCastBitMask
            }
        }
// TODO: update normalTexture
//
//        if let normalTexture: MarshaledObject = try? object.valueForKey("normalTexture") {
//
//        }
//        
// TODO: update shader
//
//        if let shader: MarshaledObject = try? object.valueForKey("shader") {
//
//        }
    }
}
#endif
