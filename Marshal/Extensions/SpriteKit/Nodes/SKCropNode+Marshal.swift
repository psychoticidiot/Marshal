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

public extension SKCropNode { /* Marshaling */
    public func marshalCropNode(includeChildren: Bool = true) -> MarshaledObject {
        var result = self.marshalNode(includeChildren)
        if let maskNode = self.maskNode {
            result["maskNode"] = maskNode.marshal()
        }
        
        return result
    }
}

public extension SKCropNode { /* UnmarshalUpdating */
    public func updateCropNode(object object: MarshaledObject) {
        self.updateNode(object: object)
        
        if let maskNode: MarshaledObject = try? object.valueForKey("maskNode") {
            // TODO: create one if it doesn't already exist
            self.maskNode?.update( object: maskNode )
        }
    }
}
#endif
