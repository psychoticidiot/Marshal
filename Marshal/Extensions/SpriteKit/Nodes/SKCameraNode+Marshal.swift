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

@available(iOS 9.0, OSX 10.11, *)
public extension SKCameraNode { /* Marshaling */
    public func marshalCameraNode(includeChildren: Bool = true) -> MarshaledObject {
        return self.marshalNode(includeChildren)
    }
}

@available(iOS 9.0, OSX 10.11, *)
public extension SKCameraNode { /* UnmarshalUpdating */
    public func updateCameraNode(object object: MarshaledObject) {
        self.updateNode(object: object)
    }
}
#endif
