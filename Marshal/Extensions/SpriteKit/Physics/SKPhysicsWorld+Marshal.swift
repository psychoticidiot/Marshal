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


extension SKPhysicsWorld: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["gravity" ] = self.gravity.marshal()
        result["speed" ] = self.speed
        
        return result
    }
}

extension SKPhysicsWorld: UnmarshalUpdating {
    public func update(object object: MarshaledObject) {
        if let gravity: CGVector = try? object.valueForKey("gravity") {
            self.gravity = gravity
        }
        if let speed: CGFloat = try? object.valueForKey("speed") {
            self.speed = speed
        }
    }
}
#endif
