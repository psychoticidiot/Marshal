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


@available(iOS 9.0, OSX 10.11, *)
public extension SKParticleRenderOrder {
    public init?(stringValue: String) {
        switch(stringValue.lowercaseString) {
        case "oldestlast":
            self = .OldestLast
        case "oldestfirst":
            self = .OldestFirst
        case "dontcare":
            self = .DontCare
        default:
            return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch(self) {
        case .OldestLast:
            result = "oldestlast"
        case .OldestFirst:
            result = "oldestfirst"
        case .DontCare:
            result = "dontcare"
        }
        
        return result
    }
}
#endif
