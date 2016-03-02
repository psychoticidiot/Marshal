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


extension SKView: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject( )
        result["asynchronous"] = self.asynchronous
        result["frameInterval"] = self.frameInterval
        result["ignoresSiblingOrder"] = self.ignoresSiblingOrder
        result["paused"] = self.paused
        result["showsFPS"] = self.showsFPS
        result["showsDrawCount"] = self.showsDrawCount
        result["showsNodeCount"] = self.showsNodeCount
        if #available(OSX 10.10, *) {
            result["allowsTransparency"] = self.allowsTransparency
            result["shouldCullNonVisibleNodes"] = self.shouldCullNonVisibleNodes
            result["showsQuadCount"] = self.showsQuadCount
            result["showsPhysics"] = self.showsPhysics
            result["showsFields"] = self.showsFields
        }
        
        return result
    }
}

extension SKView: UnmarshalUpdating {
    public func update(object object: MarshaledObject) {
        if let asynchronous: Bool = try? object.valueForKey("asynchronous") {
            self.asynchronous = asynchronous
        }
        if let frameInterval: Int = try? object.valueForKey("frameInterval") {
            self.frameInterval = frameInterval
        }
        if let ignoresSiblingOrder: Bool = try? object.valueForKey("ignoresSiblingOrder") {
            self.ignoresSiblingOrder = ignoresSiblingOrder
        }
        if let paused: Bool = try? object.valueForKey("paused") {
            self.paused = paused
        }
        if let showsFPS: Bool = try? object.valueForKey("showsFPS") {
            self.showsFPS = showsFPS
        }
        if let showsDrawCount: Bool = try? object.valueForKey("showsDrawCount") {
            self.showsDrawCount = showsDrawCount
        }
        if let showsNodeCount: Bool = try? object.valueForKey("showsNodeCount") {
            self.showsNodeCount = showsNodeCount
        }
        if #available(OSX 10.10, *) {
            if let allowsTransparency: Bool = try? object.valueForKey("allowsTransparency") {
                self.allowsTransparency = allowsTransparency
            }
            if let shouldCullNonVisibleNodes: Bool = try? object.valueForKey("shouldCullNonVisibleNodes") {
                self.shouldCullNonVisibleNodes = shouldCullNonVisibleNodes
            }
            if let showsQuadCount: Bool = try? object.valueForKey("showsQuadCount") {
                self.showsQuadCount = showsQuadCount
            }
            if let showsPhysics: Bool = try? object.valueForKey("showsPhysics") {
                self.showsPhysics = showsPhysics
            }
            if let showsFields: Bool = try? object.valueForKey("showsFields") {
                self.showsFields = showsFields
            }
        }
    }
}
#endif
