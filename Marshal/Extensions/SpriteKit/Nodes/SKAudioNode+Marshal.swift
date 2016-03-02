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
public extension SKAudioNode { /* Marshaling */
    public func marshalAudioNode(includeChildren: Bool = true) -> MarshaledObject {
        var result = self.marshalNode(includeChildren)
// TODO: implment audioNode extraction
//
//        if let avAudioNode = self.avAudioNode {
//            result["avAudioNode"] = self.avAudioNode.marshal()
//        }
        result["positional"] = self.positional
        result["autoplayLooped"] = self.autoplayLooped
        
        return result
    }
}

@available(iOS 9.0, OSX 10.11, *)
public extension SKAudioNode { /* UnmarshalUpdating */
    public func updateAudioNode(object object: MarshaledObject) {
        self.updateNode(object: object)
// TODO: update avAudioNode
//
//        if let avAudioNode: MarshaledObject = try? object.valueForKey("avAudioNode") {
//            self.avAudioNode?.update(object: avAudioNode)
//        }
        if let positional: Bool = try? object.valueForKey("positional") {
            self.positional = positional
        }
        if let autoplayLooped: Bool = try? object.valueForKey("autoplayLooped") {
            self.autoplayLooped = autoplayLooped
        }
    }
}
#endif
