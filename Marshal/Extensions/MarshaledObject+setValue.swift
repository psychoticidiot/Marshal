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
    private mutating func setValue(value: Value, forKeys keys: ArraySlice<String>) {
        guard let firstKey = keys.first as? Key else {
            return
        }
        
        switch(keys.count) {
        case 1:
            self[firstKey] = value
        case 2..<Int.max:
            var subValue = (self[firstKey] as? [Key: Value]) ?? [Key: Value]()
            subValue.setValue(value, forKeys: keys.dropFirst())
            
            self[firstKey] = subValue as? Value
        default:
            break
        }
    }
    
    public mutating func setValue(value: Value, forKey key: Key) {
        let splitKeys = key.stringValue.componentsSeparatedByString(".")
        self.setValue(value, forKeys: ArraySlice(splitKeys))
    }
}
