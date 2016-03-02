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

public extension SKEmitterNode { /* Marshaling */
    public func marshalEmitterNode(includeChildren: Bool = true) -> MarshaledObject {
        var result = self.marshalNode(includeChildren)
        result["particleBirthRate"] = self.particleBirthRate
        result["numParticlesToEmit"] = self.numParticlesToEmit
        if #available(iOS 9.0, OSX 10.11, *) {
            result["particleRenderOrder"] = self.particleRenderOrder.stringValue
        }
        result["particleLifetime"] = self.particleLifetime
        result["particleLifetimeRange"] = self.particleLifetimeRange
        result["particlePosition"] = self.particlePosition.marshal()
        result["particlePositionRange"] = self.particlePositionRange.marshal()
        result["particleZPosition"] = self.particleZPosition
        result["particleSpeed"] = self.particleSpeed
        result["particleSpeedRange"] = self.particleSpeedRange
        result["emissionAngle"] = self.emissionAngle
        result["emissionAngleRange"] = self.emissionAngleRange
        result["xAcceleration"] = self.xAcceleration
        result["yAcceleration"] = self.yAcceleration
        result["particleRotation"] = self.particleRotation
        result["particleRotationRange"] = self.particleRotationRange
        result["particleRotationSpeed"] = self.particleRotationSpeed
        if let particleScaleSequence = self.particleScaleSequence {
            result["particleScaleSequence"] = particleScaleSequence.marshal()
        }
        result["particleScale"] = self.particleScale
        result["particleScaleRange"] = self.particleScaleRange
        result["particleScaleSpeed"] = self.particleScaleSpeed
// TODO: implement texture extraction
//
//        if let particleTexture = self.particleTexture {
//            result["particleTexture"] = particleTexture.marshal()
//        }
        result["particleSize"] = self.particleSize.marshal()
        if let particleColorSequence = self.particleColorSequence {
            result["particleColorSequence"] = particleColorSequence.marshal()
        }
        result["particleColor"] = self.particleColor.marshal()
        result["particleColorAlphaRange"] = self.particleColorAlphaRange
        result["particleColorBlueRange"] = self.particleColorBlueRange
        result["particleColorGreenRange"] = self.particleColorGreenRange
        result["particleColorRedRange"] = self.particleColorRedRange
        result["particleColorAlphaSpeed"] = self.particleColorAlphaSpeed
        result["particleColorBlueSpeed"] = self.particleColorBlueSpeed
        result["particleColorGreenSpeed"] = self.particleColorGreenSpeed
        result["particleColorRedSpeed"] = self.particleColorRedSpeed
        if let particleColorBlendFactorSequence = self.particleColorBlendFactorSequence {
            result["particleColorBlendFactorSequence"] = particleColorBlendFactorSequence.marshal()
        }
        result["particleColorBlendFactor"] = self.particleColorBlendFactor
        result["particleColorBlendFactorRange"] = self.particleColorBlendFactorRange
        result["particleColorBlendFactorSpeed"] = self.particleColorBlendFactorSpeed
        result["particleBlendMode"] = self.particleBlendMode.stringValue
        if let particleAlphaSequence = self.particleAlphaSequence {
            result["particleAlphaSequence"] = particleAlphaSequence.marshal()
        }
        result["particleAlpha"] = self.particleAlpha
        result["particleAlphaRange"] = self.particleAlphaRange
        result["particleAlphaSpeed"] = self.particleAlphaSpeed
// TODO: implement action extraction
//
//        if let particleAction = self.particleAction {
//            result["particleAction"] = particleAction.marshal()
//        }
        result["fieldBitMask"] = UInt(self.fieldBitMask)
// TODO: implement shader extraction
//
//        if let shader = self.shader {
//            result["shader"] = shader.marshal()
//        }
        
        return result
    }
}

public extension SKEmitterNode { /* UnmarshalUpdating */
    public func updateEmitterNode(object object: MarshaledObject) {
        self.updateNode(object: object)
        
        if let particleBirthRate: CGFloat = try? object.valueForKey("particleBirthRate") {
            self.particleBirthRate = particleBirthRate
        }
        if let numParticlesToEmit: Int = try? object.valueForKey("numParticlesToEmit") {
            self.numParticlesToEmit = numParticlesToEmit
        }
        if #available(iOS 9.0, OSX 10.11, *) {
            if let particleRenderOrderString: String = try? object.valueForKey("particleRenderOrder"), particleRenderOrder = SKParticleRenderOrder(stringValue: particleRenderOrderString) {
                self.particleRenderOrder = particleRenderOrder
            }
        }
        if let particleLifetime: CGFloat = try? object.valueForKey("particleLifetime") {
            self.particleLifetime = particleLifetime
        }
        if let particleLifetimeRange: CGFloat = try? object.valueForKey("particleLifetimeRange") {
            self.particleLifetimeRange = particleLifetimeRange
        }
        if let particlePosition: CGPoint = try? object.valueForKey("particlePosition") {
            self.particlePosition = particlePosition
        }
        if let particlePositionRange: CGVector = try? object.valueForKey("particlePositionRange") {
            self.particlePositionRange = particlePositionRange
        }
        if let particleZPosition: CGFloat = try? object.valueForKey("particleZPosition") {
            self.particleZPosition = particleZPosition
        }
        if let particleSpeed: CGFloat = try? object.valueForKey("particleSpeed") {
            self.particleSpeed = particleSpeed
        }
        if let particleSpeedRange: CGFloat = try? object.valueForKey("particleSpeedRange") {
            self.particleSpeedRange = particleSpeedRange
        }
        if let emissionAngle: CGFloat = try? object.valueForKey("emissionAngle") {
            self.emissionAngle = emissionAngle
        }
        if let emissionAngleRange: CGFloat = try? object.valueForKey("emissionAngleRange") {
            self.emissionAngleRange = emissionAngleRange
        }
        if let xAcceleration: CGFloat = try? object.valueForKey("xAcceleration") {
            self.xAcceleration = xAcceleration
        }
        if let yAcceleration: CGFloat = try? object.valueForKey("yAcceleration") {
            self.yAcceleration = yAcceleration
        }
        if let particleRotation: CGFloat = try? object.valueForKey("particleRotation") {
            self.particleRotation = particleRotation
        }
        if let particleRotationRange: CGFloat = try? object.valueForKey("particleRotationRange") {
            self.particleRotationRange = particleRotationRange
        }
        if let particleRotationSpeed: CGFloat = try? object.valueForKey("particleRotationSpeed") {
            self.particleRotationSpeed = particleRotationSpeed
        }
        if let particleScaleSequence: MarshaledObject = try? object.valueForKey("particleScaleSequence") {
            // TODO: create one if it doesn't already exist
            self.particleScaleSequence?.update(object: particleScaleSequence)
        }
        if let particleScale: CGFloat = try? object.valueForKey("particleScale") {
            self.particleScale = particleScale
        }
        if let particleScaleRange: CGFloat = try? object.valueForKey("particleScaleRange") {
            self.particleScaleRange = particleScaleRange
        }
        if let particleScaleSpeed: CGFloat = try? object.valueForKey("particleScaleSpeed") {
            self.particleScaleSpeed = particleScaleSpeed
        }
// TODO: update particleTexture
//
//        if let particleTexture: SKTexture = try? object.valueForKey("particleTexture") {
//
//        }
        if let particleSize: CGSize = try? object.valueForKey("particleSize") {
            self.particleSize = particleSize
        }
        if let particleColorSequence: MarshaledObject = try? object.valueForKey("particleColorSequence") {
            // TODO: create one if it doesn't already exist
            self.particleColorSequence?.update(object: particleColorSequence)
        }
        if let particleColor: SKColor = try? object.valueForKey("particleColor") {
            self.particleColor = particleColor
        }
        if let particleColorAlphaRange: CGFloat = try? object.valueForKey("particleColorAlphaRange") {
            self.particleColorAlphaRange = particleColorAlphaRange
        }
        if let particleColorBlueRange: CGFloat = try? object.valueForKey("particleColorBlueRange") {
            self.particleColorBlueRange = particleColorBlueRange
        }
        if let particleColorGreenRange: CGFloat = try? object.valueForKey("particleColorGreenRange") {
            self.particleColorGreenRange = particleColorGreenRange
        }
        if let particleColorRedRange: CGFloat = try? object.valueForKey("particleColorRedRange") {
            self.particleColorRedRange = particleColorRedRange
        }
        if let particleColorAlphaSpeed: CGFloat = try? object.valueForKey("particleColorAlphaSpeed") {
            self.particleColorAlphaSpeed = particleColorAlphaSpeed
        }
        if let particleColorBlueSpeed: CGFloat = try? object.valueForKey("particleColorBlueSpeed") {
            self.particleColorBlueSpeed = particleColorBlueSpeed
        }
        if let particleColorGreenSpeed: CGFloat = try? object.valueForKey("particleColorGreenSpeed") {
            self.particleColorGreenSpeed = particleColorGreenSpeed
        }
        if let particleColorRedSpeed: CGFloat = try? object.valueForKey("particleColorRedSpeed") {
            self.particleColorRedSpeed = particleColorRedSpeed
        }
        if let particleColorBlendFactorSequence: MarshaledObject = try? object.valueForKey("particleColorBlendFactorSequence") {
            // TODO: create one if it doesn't already exist
            self.particleColorBlendFactorSequence?.update(object: particleColorBlendFactorSequence)
        }
        if let particleColorBlendFactor: CGFloat = try? object.valueForKey("particleColorBlendFactor") {
            self.particleColorBlendFactor = particleColorBlendFactor
        }
        if let particleColorBlendFactorRange: CGFloat = try? object.valueForKey("particleColorBlendFactorRange") {
            self.particleColorBlendFactorRange = particleColorBlendFactorRange
        }
        if let particleColorBlendFactorSpeed: CGFloat = try? object.valueForKey("particleColorBlendFactorSpeed") {
            self.particleColorBlendFactorSpeed = particleColorBlendFactorSpeed
        }
        if let particleBlendModeString: String = try? object.valueForKey("particleBlendMode"), particleBlendMode = SKBlendMode(stringValue: particleBlendModeString) {
            self.particleBlendMode = particleBlendMode
        }
        if let particleAlphaSequence: MarshaledObject = try? object.valueForKey("particleAlphaSequence") {
            // TODO: create one if it doesn't already exist
            self.particleAlphaSequence?.update(object: particleAlphaSequence)
        }
        if let particleAlpha: CGFloat = try? object.valueForKey("particleAlpha") {
            self.particleAlpha = particleAlpha
        }
        if let particleAlphaRange: CGFloat = try? object.valueForKey("particleAlphaRange") {
            self.particleAlphaRange = particleAlphaRange
        }
        if let particleAlphaSpeed: CGFloat = try? object.valueForKey("particleAlphaSpeed") {
            self.particleAlphaSpeed = particleAlphaSpeed
        }
// TODO: update particleAction
//
//        if let particleAction: SKAction = try? object.valueForKey("particleAction") {
//            self.particleAction = particleAction
//        }
        if let fieldBitMask: UInt32 = try? object.valueForKey("fieldBitMask") {
            self.fieldBitMask = fieldBitMask
        }
// TODO: update shader
//
//        if let shader = SKShader = try? object.valueForKey("shader") {
//            self.shader = shader
//        }
    }
}
#endif
