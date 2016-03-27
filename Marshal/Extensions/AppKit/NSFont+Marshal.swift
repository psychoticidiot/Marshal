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


#if os(OSX)
import Foundation
import AppKit


extension NSFont: ValueType {
    public static func value(object: Any) throws -> NSFont {
        guard let fontValues = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let name: String = try fontValues.valueForKey("name")
        let size: CGFloat = try fontValues.valueForKey("size")
        
        guard let font = NSFont(name: name, size: size) else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        return font
    }
}

extension NSFont: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["name"] = self.fontName
        result["size"] = self.pointSize
        
        return result
    }
}
#endif