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

public extension SKEffectNode { /* Marshaling */
    public func marshalEffectNode(includeChildren: Bool = true) -> MarshaledObject {
        var result = self.marshalNode(includeChildren)
        result["shouldEnableEffects"] = self.shouldEnableEffects
// TODO: implement filter extraction
//
//        if let filter = self.filter {
//            result["filter"] = filter.marshal()
//        }
        result["shouldCenterFilter"] = self.shouldCenterFilter
        result["blendMode"] = self.blendMode.stringValue
// TODO: implement shader extraction
//
//        if let shader = self.shader {
//            result["shader"] = shader.marshal()
//        }
        result["shouldRasterize"] = self.shouldRasterize
        
        return result
    }
}

public extension SKEffectNode { /* UnmarshalUpdating */
    public func updateEffectNode(object object: MarshaledObject) {
        self.updateNode(object: object)
        
        if let shouldEnableEffects: Bool = try? object.valueForKey("shouldEnableEffects")  {
            self.shouldEnableEffects = shouldEnableEffects
        }
// TODO: update filter
//
//        if let filter: CIFilter = try? object.valueForKey("filter") {
//            self.filter = filter
//        }
        if let shouldCenterFilter: Bool = try? object.valueForKey("shouldCenterFilter") {
            self.shouldCenterFilter = shouldCenterFilter
        }
        if let blendModeString: String = try? object.valueForKey("blendMode"), blendMode = SKBlendMode(stringValue: blendModeString) {
            self.blendMode = blendMode
        }
// TODO: update shader
//
//        if let shader: SKShader = try? object.valueForKey("shader") {
//            self.shader.update(object: shader)
//        }
        if let shouldRasterize: Bool = try? object.valueForKey("shouldRasterize") {
            self.shouldRasterize = shouldRasterize
        }
    }
}
#endif
