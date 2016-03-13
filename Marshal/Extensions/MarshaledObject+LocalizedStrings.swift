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


public extension Dictionary where Key: KeyType {
    public func writeStringsToFile(path: String, atomically: Bool = true, encoding: NSStringEncoding = NSUnicodeStringEncoding) throws {
        var fileContent = ""
        
        for key in self.keys {
            guard let keyString = key as? String else {
                continue
            }
            guard let valueString: String = try? self.valueForKey(key) else {
                continue
            }
            
            let quotedKey = keyString.stringByReplacingOccurrencesOfString("\"", withString: "\\\"")
            let quotedValue = valueString.stringByReplacingOccurrencesOfString("\"", withString: "\\\"")
            
            fileContent += "\"" + quotedKey + "\" = \"" + quotedValue + "\";\n"
        }
        
        try fileContent.writeToFile(path, atomically: atomically, encoding: encoding)
    }
}
