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


public extension SKRepeatMode {
    public init?(stringValue: String) {
        switch(stringValue.lowercaseString) {
        case "clamp":
            self = .Clamp
        case "loop":
            self = .Loop
        default:
            return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch(self) {
        case .Clamp:
            result = "clamp"
        case .Loop:
            result = "loop"
        }
        
        return result
    }
}
#endif
