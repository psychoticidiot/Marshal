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


public extension SKBlendMode {
    public init?(stringValue: String) {
        switch(stringValue.lowercaseString) {
        case "alpha":
            self = .Alpha
        case "add":
            self = .Add
        case "subtract":
            self = .Subtract
        case "multiply":
            self = .Multiply
        case "multiplyx2":
            self = .MultiplyX2
        case "screen":
            self = .Screen
        case "replace":
            self = .Replace
        default:
            return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch(self) {
        case .Alpha:
            result = "alpha"
        case .Add:
            result = "add"
        case .Subtract:
            result = "subtract"
        case .Multiply:
            result = "multiply"
        case .MultiplyX2:
            result = "multiplyx2"
        case .Screen:
            result = "screen"
        case .Replace:
            result = "replace"
        }
        
        return result
    }
}
#endif
