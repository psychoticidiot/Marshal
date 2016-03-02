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

public extension SKVideoNode { /* Marshaling */
    public func marshalVideoNode(includeChildren: Bool = true) -> MarshaledObject {
        var result = self.marshalNode(includeChildren)
        result["anchorPoint"] = self.anchorPoint.marshal()
        result["size"] = self.size.marshal()
        
        return result
    }
}

public extension SKVideoNode { /* UnmarshalUpdating */
    public func updateVideoNode(object object: MarshaledObject) {
        self.updateNode(object: object)
        
        if let anchorPoint: CGPoint = try? object.valueForKey("anchorPoint") {
            self.anchorPoint = anchorPoint
        }
        if let size: CGSize = try? object.valueForKey("size") {
            self.size = size
        }
    }
}
#endif
