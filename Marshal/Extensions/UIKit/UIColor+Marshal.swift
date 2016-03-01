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


#if os(iOS) || os(tvOS) || os(watchOS)
import Foundation
import UIKit


extension UIColor: ValueType {
    public static func value(object: Any) throws -> UIColor {
        guard let colorValues = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let red: CGFloat? = try colorValues.valueForKey("red")
        let green: CGFloat? = try colorValues.valueForKey("green")
        let blue: CGFloat? = try colorValues.valueForKey("blue")
        let alpha: CGFloat? = try colorValues.valueForKey("alpha")
        
        return UIColor(red: red ?? 0.0, green: green ?? 0.0, blue: blue ?? 0.0, alpha: alpha ?? 1.0)
    }
}

extension UIColor: Marshaling {
    public func marshal() -> MarshaledObject {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 1
        self.getRed( &red, green: &green, blue: &blue, alpha: &alpha )
        
        var result = MarshaledObject()
        result["red"] = red
        result["green"] = green
        result["blue"] = blue
        result["alpha"] = alpha
        
        return result
    }
}
#endif
