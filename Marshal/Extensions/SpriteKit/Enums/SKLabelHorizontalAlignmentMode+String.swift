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


public extension SKLabelHorizontalAlignmentMode {
    public init?(stringValue: String) {
        switch(stringValue.lowercaseString) {
        case "center":
            self = .Center
        case "left":
            self = .Left
        case "right":
            self = .Right
        default:
            return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch(self) {
        case .Center:
            result = "center"
        case .Left:
            result = "left"
        case .Right:
            result = "right"
        }
        
        return result
    }
}
#endif
