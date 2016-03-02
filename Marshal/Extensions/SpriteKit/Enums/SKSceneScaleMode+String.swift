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


public extension SKSceneScaleMode {
    public init?(stringValue: String) {
        switch(stringValue.lowercaseString) {
        case "fill":
            self = .Fill
        case "aspectfill":
            self = .AspectFill
        case "aspectfit":
            self = .AspectFit
        case "resizefill":
            self = .ResizeFill
        default:
            return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch(self) {
        case .Fill:
            result = "fill"
        case .AspectFill:
            result = "aspectfill"
        case .AspectFit:
            result = "aspectfit"
        case .ResizeFill:
            result = "resizefill"
        }
        
        return result
    }
}
#endif
