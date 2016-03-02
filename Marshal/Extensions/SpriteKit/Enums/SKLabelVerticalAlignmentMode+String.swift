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


public extension SKLabelVerticalAlignmentMode {
    public init?(stringValue: String) {
        switch(stringValue.lowercaseString) {
        case "baseline":
            self = .Baseline
        case "center":
            self = .Center
        case "top":
            self = .Top
        case "bottom":
            self = .Bottom
        default:
            return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch(self) {
        case .Baseline:
            result = "baseline"
        case .Center:
            result = "center"
        case .Top:
            result = "top"
        case .Bottom:
            result = "bottom"
        }
        
        return result
    }
}
#endif
