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

@available(OSX 10.10, *)
public extension SKFieldNode { /* Marshaling */
    public func marshalFieldNode(includeChildren: Bool = true) -> MarshaledObject {
        var result = self.marshalNode(includeChildren)
        result["enabled"] = self.enabled
        result["exclusive"] = self.exclusive
// TODO: implement region extraction
//
//        if let region = self.region {
//            result["region"] = region.marshal()
//        }
        result["minimumRadius"] = self.minimumRadius
        result["categoryBitMask"] = UInt(self.categoryBitMask)
        result["strength"] = self.strength
        result["falloff"] = self.falloff
        result["animationSpeed"] = self.animationSpeed
        result["smoothness"] = self.smoothness
        result["direction"] = self.direction.marshal()
// TODO: implement texture extraction
//
//        if let texture = self.texture {
//            result["texture"] = texture.marshal()
//        }
        
        return result
    }
}

@available(OSX 10.10, *)
public extension SKFieldNode { /* UnmarshalUpdating */
    public func updateFieldNode(object object: MarshaledObject) {
        self.updateNode(object: object)
        
        if let enabled: Bool = try? object.valueForKey("enabled") {
            self.enabled = enabled
        }
        if let exclusive: Bool = try? object.valueForKey("exclusive") {
            self.exclusive = exclusive
        }
// TODO: update region
//
//        if let region: SKRegion = try? object.valueForKey("region") {
//            self.region = region
//        }
        if let minimumRadius: Float = try? object.valueForKey("minimumRadius") {
            self.minimumRadius = minimumRadius
        }
        if let categoryBitMask: UInt32 = try? object.valueForKey("categoryBitMask") {
            self.categoryBitMask = categoryBitMask
        }
        if let strength: Float = try? object.valueForKey("strength") {
            self.strength = strength
        }
        if let falloff: Float = try? object.valueForKey("falloff") {
            self.falloff = falloff
        }
        if let animationSpeed: Float = try? object.valueForKey("animationSpeed") {
            self.animationSpeed = animationSpeed
        }
        if let smoothness: Float = try? object.valueForKey("smoothness") {
            self.smoothness = smoothness
        }
        if let direction: vector_float3 = try? object.valueForKey("direction") {
            self.direction = direction
        }
// TODO: update texture
//
//        if let texture: MarshaledObject = try? object.valueForKey("texture") {
//            self.texture?.update( object: texture )
//        }
    }
}
#endif
