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


@available(OSX 10.10, *)
extension SKReachConstraints: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["lowerAngleLimit"] = self.lowerAngleLimit
        result["upperAngleLimit"] = self.upperAngleLimit
        
        return result
    }
}

@available(OSX 10.10, *)
extension SKReachConstraints: UnmarshalUpdating {
    public func update(object object: MarshaledObject) {
        if let lowerAngleLimit: CGFloat = try? object.valueForKey("lowerAngleLimit") {
            self.lowerAngleLimit = lowerAngleLimit
        }
        if let upperAngleLimit: CGFloat = try? object.valueForKey("upperAngleLimit") {
            self.upperAngleLimit = upperAngleLimit
        }
    }
}
#endif
