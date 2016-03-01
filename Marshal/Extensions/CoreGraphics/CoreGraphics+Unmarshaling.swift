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


extension CGPoint: Unmarshaling {
    public init(object: MarshaledObject) throws {
        self.x = try object.valueForKey("x")
        self.y = try object.valueForKey("y")
    }
}

extension CGSize: Unmarshaling {
    public init(object: MarshaledObject) throws {
        self.width = try object.valueForKey("width")
        self.height = try object.valueForKey("height")
    }
}

extension CGRect: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let x: CGFloat = try object.valueForKey("x")
        let y: CGFloat = try object.valueForKey("y")
        let width: CGFloat = try object.valueForKey("width")
        let height: CGFloat = try object.valueForKey("height")
        
        self.origin = CGPoint(x: x, y: y)
        self.size = CGSize(width: width, height: height)
    }
}

extension CGVector: Unmarshaling {
    public init(object: MarshaledObject) throws {
        self.dx = try object.valueForKey("dx")
        self.dy = try object.valueForKey("dy")
    }
}

extension CGAffineTransform: Unmarshaling {
    public init(object: MarshaledObject) throws {
        self.a = try object.valueForKey("a")
        self.b = try object.valueForKey("b")
        self.c = try object.valueForKey("c")
        self.d = try object.valueForKey("d")
        self.tx = try object.valueForKey("tx")
        self.ty = try object.valueForKey("ty")
    }
}
