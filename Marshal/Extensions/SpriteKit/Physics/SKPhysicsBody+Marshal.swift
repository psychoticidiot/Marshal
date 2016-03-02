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


extension SKPhysicsBody: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["affectedByGravity"] = self.affectedByGravity
        result["allowsRotation"] = self.allowsRotation
        result["dynamic"] = self.dynamic
        result["mass"] = self.mass
        result["density"] = self.density
        result["friction"] = self.friction
        result["restitution"] = self.restitution
        result["linearDamping"] = self.linearDamping
        result["angularDamping"] = self.angularDamping
        result["categoryBitMask"] = UInt(self.categoryBitMask)
        result["collisionBitMask"] = UInt(self.collisionBitMask)
        result["usesPreciseCollisionDetection"] = self.usesPreciseCollisionDetection
        result["contactTestBitMask"] = UInt(self.contactTestBitMask)
        result["velocity"] = self.velocity.marshal()
        result["angularVelocity"] = self.angularVelocity
        result["resting"] = self.resting
// TODO: implement joint serialization
//
//        if self.joints.count > 0 {
//            var joints = [MarshaledObject]()
//            for joint in self.joints {
//                joints.append(joint.marshal())
//            }
//
//            result["joints"] = joints
//        }
        if #available(OSX 10.10, *) {
            result["fieldBitMask"] = UInt(self.fieldBitMask)
            result["charge"] = self.charge
            result["pinned"] = self.pinned
        }
        
        return result
    }
}

extension SKPhysicsBody: UnmarshalUpdating {
    public func update(object object: MarshaledObject) {
        if let affectedByGravity: Bool = try? object.valueForKey("affectedByGravity") {
            self.affectedByGravity = affectedByGravity
        }
        if let allowsRotation: Bool = try? object.valueForKey("allowsRotation") {
            self.allowsRotation = allowsRotation
        }
        if let dynamic: Bool = try? object.valueForKey("dynamic") {
            self.dynamic = dynamic
        }
        if let mass: CGFloat = try? object.valueForKey("mass") {
            self.mass = mass
        }
        if let density: CGFloat = try? object.valueForKey("density") {
            self.density = density
        }
        if let friction: CGFloat = try? object.valueForKey("friction") {
            self.friction = friction
        }
        if let restitution: CGFloat = try? object.valueForKey("restitution") {
            self.restitution = restitution
        }
        if let linearDamping: CGFloat = try? object.valueForKey("linearDamping") {
            self.linearDamping = linearDamping
        }
        if let angularDamping: CGFloat = try? object.valueForKey("angularDamping") {
            self.angularDamping = angularDamping
        }
        if let categoryBitMask: UInt32 = try? object.valueForKey("categoryBitMask") {
            self.categoryBitMask = categoryBitMask
        }
        if let collisionBitMask: UInt32 = try? object.valueForKey("collisionBitMask") {
            self.collisionBitMask = collisionBitMask
        }
        if let usesPreciseCollisionDetection: Bool = try? object.valueForKey("usesPreciseCollisionDetection") {
            self.usesPreciseCollisionDetection = usesPreciseCollisionDetection
        }
        if let contactTestBitMask: UInt32 = try? object.valueForKey("contactTestBitMask") {
            self.contactTestBitMask = contactTestBitMask
        }
        if let velocity: CGVector = try? object.valueForKey("velocity") {
            self.velocity = velocity
        }
        if let angularVelocity: CGFloat = try? object.valueForKey("angularVelocity") {
            self.angularVelocity = angularVelocity
        }
        if let resting: Bool = try? object.valueForKey("resting") {
            self.resting = resting
        }
// TODO: implement joint updates
//
//        if object["joints"] != nil {
//            self.joints = try object.valueForKey("joints")
//        }
        if #available(OSX 10.10, *) {
            if let fieldBitMask: UInt32 = try? object.valueForKey("fieldBitMask") {
                self.fieldBitMask = fieldBitMask
            }
            if let charge: CGFloat = try? object.valueForKey("charge") {
                self.charge = charge
            }
            if let pinned: Bool = try? object.valueForKey("pinned") {
                self.pinned = pinned
            }
        }
    }
}
#endif
