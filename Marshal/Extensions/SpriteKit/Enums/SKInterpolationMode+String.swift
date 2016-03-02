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


public extension SKInterpolationMode {
    public init?(stringValue: String) {
        switch(stringValue.lowercaseString) {
        case "linear":
            self = .Linear
        case "spline":
            self = .Spline
        case "step":
            self = .Step
        default:
            return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch(self) {
        case .Linear:
            result = "linear"
        case .Spline:
            result = "spline"
        case .Step:
            result = "step"
        }
        
        return result
    }
}
#endif
