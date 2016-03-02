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

public extension SKScene { /* Marshaling */
    public func marshalSceneNode(includeChildren: Bool = true) -> MarshaledObject {
        var result = self.marshalEffectNode(includeChildren)
//        if let camera = self.camera {
//            result["camera"] = camera.marshal()
//        }
        result["anchorPoint"] = self.anchorPoint.marshal()
        result["size"] = self.size.marshal()
        result["scaleMode"] = self.scaleMode.stringValue
        result["backgroundColor"] = self.backgroundColor.marshal()
        if let view = self.view {
            result[ "view" ] = view.marshal()
        }
// NOTE: physicsWorld.marshal() keeps crashing with unrecognized selector
//        result["physicsWorld"] = self.physicsWorld.marshal()
        var physics = MarshaledObject()
        physics["gravity"] = self.physicsWorld.gravity.marshal()
        physics["speed"] = self.physicsWorld.speed
        result["physicsWorld"] = physics
//        if let listener = listener {
//            result["listener"] = listener.marshal()
//        }
        
        return result
    }
}

public extension SKScene { /* UnmarshalUpdating */
    public func updateSceneNode(object object: MarshaledObject) {
        self.updateEffectNode(object: object)
        
// TODO: update camera
//
//        if let camera: SKCameraNode = try? object.valueForKey("camera") {
//
//        }
        if let anchorPoint: CGPoint = try? object.valueForKey("anchorPoint") {
            self.anchorPoint = anchorPoint
        }
        if let size: CGSize = try? object.valueForKey("size") {
            self.size = size
        }
        if let scaleModeString: String = try? object.valueForKey("scaleMode"), scaleMode = SKSceneScaleMode(stringValue: scaleModeString) {
            self.scaleMode = scaleMode
        }
        if let backgroundColor: SKColor = try? object.valueForKey("backgroundColor") {
            self.backgroundColor = backgroundColor
        }
        if let view: MarshaledObject = try? object.valueForKey("view") {
            self.view?.update(object: view)
        }
        if let physicsWorld: MarshaledObject = try? object.valueForKey("physicsWorld") {
            self.physicsWorld.update(object: physicsWorld)
        }
// TODO: update listener
//
//        if let listener: Extractable = try? object.valueForKey("listener") {
//            self.listener?.update( object: listener )
//        }
    }
}
#endif
