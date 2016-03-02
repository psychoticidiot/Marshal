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


extension SKKeyframeSequence: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["interpolationMode"] = self.interpolationMode.stringValue
        result["repeatMode"] = self.repeatMode.stringValue
        
        return result
    }
}

extension SKKeyframeSequence: UnmarshalUpdating {
    public func update(object object: MarshaledObject) {
        if let interpolationModeString: String = try? object.valueForKey("interpolationMode"), interpolationMode = SKInterpolationMode(stringValue: interpolationModeString) {
            self.interpolationMode = interpolationMode
        }
        if let repeatModeString: String = try? object.valueForKey("repeatMode"), repeatMode = SKRepeatMode(stringValue: repeatModeString) {
            self.repeatMode = repeatMode
        }
    }
}
#endif
