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


import Foundation
import CoreGraphics


public extension CGLineJoin {
    public init?(stringValue: String) {
        switch(stringValue.lowercaseString) {
        case "miter":
            self = .Miter
        case "round":
            self = .Round
        case "bevel":
            self = .Bevel
        default:
            return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch(self) {
        case .Miter:
            result = "miter"
        case .Round:
            result = "round"
        case .Bevel:
            result = "bevel"
        }
        
        return result
    }
}
