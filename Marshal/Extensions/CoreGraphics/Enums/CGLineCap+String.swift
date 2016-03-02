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


public extension CGLineCap {
    public init?(stringValue: String) {
        switch(stringValue.lowercaseString) {
        case "butt":
            self = .Butt
        case "round":
            self = .Round
        case "square":
            self = .Square
        default:
            return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch(self) {
        case .Butt:
            result = "butt"
        case .Round:
            result = "round"
        case .Square:
            result = "square"
        }
        
        return result
    }
}
