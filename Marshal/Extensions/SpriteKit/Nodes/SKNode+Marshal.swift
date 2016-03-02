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


// NOTE: Swift doesn't allow methods to be overriden by subclass extensions, 
//       so we are defining explicit subclass implementations

extension SKNode: Marshaling {
    public func marshal() -> MarshaledObject {
        return self.marshal(true)
    }
    
    public func marshal(includeChildren: Bool) -> MarshaledObject {
        switch(self) {
        case let node as SKSpriteNode:
            return node.marshalSpriteNode(includeChildren)
        case let node as SKVideoNode:
            return node.marshalVideoNode(includeChildren)
        case let node as SKLabelNode:
            return node.marshalLabelNode(includeChildren)
        case let node as SKShapeNode:
            return node.marshalShapeNode(includeChildren)
        case let node as SKEmitterNode:
            return node.marshalEmitterNode(includeChildren)
        case let node as SKCropNode:
            return node.marshalCropNode(includeChildren)
        case let node as SKScene:
            return node.marshalSceneNode(includeChildren)
        case let node as SKEffectNode:
            return node.marshalEffectNode(includeChildren)
        default:
            if #available(OSX 10.10, *) {
                switch(self) {
                case let node as SKLightNode:
                    return node.marshalLightNode(includeChildren)
                case let node as SKFieldNode:
                    return node.marshalFieldNode(includeChildren)
                default:
                    if #available(iOS 9.0, OSX 10.11, *) {
                        switch(self) {
                        case let node as SKCameraNode:
                            return node.marshalCameraNode(includeChildren)
                        case let node as SKAudioNode:
                            return node.marshalAudioNode(includeChildren)
                        default:
                            return self.marshalNode(includeChildren)
                        }
                    }
                    else
                    {
                        return self.marshalNode(includeChildren)
                    }
                }
            }
            else
            {
                return self.marshalNode(includeChildren)
            }
        }
    }
    
    public func marshalNode(includeChildren: Bool = true) -> MarshaledObject {
        var result = MarshaledObject()
        result["position"] = self.position.marshal()
        result["zPosition"] = self.zPosition
        result["xScale"] = self.xScale
        result["yScale"] = self.yScale
        result["zRotation"] = self.zRotation
        result["alpha"] = self.alpha
        result["hidden"] = self.hidden
        result["userInteractionEnabled"] = self.userInteractionEnabled
        if includeChildren {
            var children = [MarshaledObject]()
            for child in self.children {
                children.append(child.marshal())
            }
            result["children"] = children
        }
        result["name"] = self.name ?? ""
        result["speed"] = self.speed
        result["paused"] = self.paused
        if let physicsBody = self.physicsBody {
            result["physicsBody"] = physicsBody.marshal()
        }
        if let userData = self.userData {
            result["userData"] = userData
        }
// TODO: implement constraints serialization
//
//        if self.constraints?.count > 0 {
//            var constraints = [MarshaledObject]()
//            for constraint in self.constraints ?? [] {
//                constraints.append(constraint.marshal())
//            }
//            result["constraints"] = constraints
//        }
        if #available(OSX 10.10, *) {
            if let reachConstraints = self.reachConstraints {
                result["reachConstraints"] = reachConstraints.marshal()
            }
        }
        
        return result
    }
}

extension SKNode: UnmarshalUpdating {
    public func update(object object: MarshaledObject) {
        switch(self) {
        case let node as SKSpriteNode:
            node.updateSpriteNode(object: object)
        case let node as SKVideoNode:
            node.updateVideoNode(object: object)
        case let node as SKLabelNode:
            node.updateLabelNode(object: object)
        case let node as SKShapeNode:
            node.updateShapeNode(object: object)
        case let node as SKEmitterNode:
            node.updateEmitterNode(object: object)
        case let node as SKCropNode:
            node.updateCropNode(object: object)
        case let node as SKScene:
            node.updateSceneNode(object: object)
        case let node as SKEffectNode:
            node.updateEffectNode(object: object)
        default:
            if #available(OSX 10.10, *) {
                switch(self) {
                case let node as SKLightNode:
                    node.updateLightNode(object: object)
                case let node as SKFieldNode:
                    node.updateFieldNode(object: object)
                default:
                    if #available(iOS 9.0, OSX 10.11, *) {
                        switch(self) {
                        case let node as SKCameraNode:
                            node.updateCameraNode(object: object)
                        case let node as SKAudioNode:
                            node.updateAudioNode(object: object)
                        default:
                            self.updateNode(object: object)
                        }
                    }
                    else
                    {
                        self.updateNode(object: object)
                    }
                }
            }
            else
            {
                self.updateNode(object: object)
            }
        }
    }
    
    public func updateNode(object object: MarshaledObject) {
        if let position: CGPoint = try? object.valueForKey("position") {
            self.position = position
        }
        if let zPosition: CGFloat = try? object.valueForKey("zPosition") {
            self.zPosition = zPosition
        }
        if let xScale: CGFloat = try? object.valueForKey("xScale") {
            self.xScale = xScale
        }
        if let yScale: CGFloat = try? object.valueForKey("yScale") {
            self.yScale = yScale
        }
        if let zRotation: CGFloat = try? object.valueForKey("zRotation") {
            self.zRotation = zRotation
        }
        if let alpha: CGFloat = try? object.valueForKey("alpha") {
            self.alpha = alpha
        }
        if let hidden: Bool = try? object.valueForKey("hidden") {
            self.hidden = hidden
        }
        if let userInteractionEnabled: Bool = try? object.valueForKey("userInteractionEnabled") {
            self.userInteractionEnabled = userInteractionEnabled
        }
// TODO: update children
//
//        if let children: [MarshaledObject] = try? object.valueForKey("children") {
//
//        }
        if let name: String = try? object.valueForKey("name") {
            self.name = name
        }
        if let speed: CGFloat = try? object.valueForKey("speed") {
            self.speed = speed
        }
        if let paused: Bool = try? object.valueForKey("paused") {
            self.paused = paused
        }
        if let physicsBody: MarshaledObject = try? object.valueForKey("physicsBody") {
            // TODO: create a physics body if one doesn't already exist
            self.physicsBody?.update(object: physicsBody)
        }
        if let userData: [NSObject: AnyObject] = try? object.valueForKey("userData") {
            if self.userData == nil {
                self.userData = NSMutableDictionary()
            }
            self.userData?.addEntriesFromDictionary(userData)
        }
// TODO: update constraints
//
//        if let self.constraints: [MarshaledObject] = try? object.valueForKey("constraints") {
//
//        }
        if #available(OSX 10.10, *) {
            if let reachConstraints: MarshaledObject = try? object.valueForKey("reachConstraints") {
                if self.reachConstraints == nil {
                    self.reachConstraints = SKReachConstraints()
                }
                self.reachConstraints?.update(object: reachConstraints)
            }
        }
    }
}
#endif
