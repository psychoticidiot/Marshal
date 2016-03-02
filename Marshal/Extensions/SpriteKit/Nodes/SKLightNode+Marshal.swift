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
public extension SKLightNode { /* Marshaling */
    public func marshalLightNode(includeChildren: Bool = true) -> MarshaledObject {
        var result = self.marshalNode(includeChildren)
        result["enabled"] = self.enabled
        result["categoryBitMask"] = UInt(self.categoryBitMask)
        result["ambientColor"] = self.ambientColor.marshal()
        result["lightColor"] = self.lightColor.marshal()
        result["shadowColor"] = self.shadowColor.marshal()
        result["falloff"] = self.falloff
        
        return result
    }
}

@available(OSX 10.10, *)
public extension SKLightNode { /* UnmarshalUpdating */
    public func updateLightNode(object object: MarshaledObject) {
        self.updateNode(object: object)
        
        if let enabled: Bool = try? object.valueForKey("enabled") {
            self.enabled = enabled
        }
        if let categoryBitMask: UInt32 = try? object.valueForKey("categoryBitMask") {
            self.categoryBitMask = categoryBitMask
        }
        if let ambientColor: SKColor = try? object.valueForKey("ambientColor") {
            self.ambientColor = ambientColor
        }
        if let lightColor: SKColor = try? object.valueForKey("lightColor") {
            self.lightColor = lightColor
        }
        if let shadowColor: SKColor = try? object.valueForKey("shadowColor") {
            self.shadowColor = shadowColor
        }
        if let falloff: CGFloat = try? object.valueForKey("falloff") {
            self.falloff = falloff
        }
    }
}
#endif
