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
import simd


// MARK: - Base Types

extension int2: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["x"] = Int(self.x)
        result["y"] = Int(self.y)
        
        return result
    }
}

extension int3: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["x"] = Int(self.x)
        result["y"] = Int(self.y)
        result["z"] = Int(self.z)
        
        return result
    }
}

extension int4: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["x"] = Int(self.x)
        result["y"] = Int(self.y)
        result["z"] = Int(self.z)
        result["w"] = Int(self.w)
        
        return result
    }
}

extension float2: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["x"] = self.x
        result["y"] = self.y
        
        return result
    }
}

extension float3: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["x"] = self.x
        result["y"] = self.y
        result["z"] = self.z
        
        return result
    }
}

extension float4: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["x"] = self.x
        result["y"] = self.y
        result["z"] = self.z
        result["w"] = self.w
        
        return result
    }
}

extension double2: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["x"] = self.x
        result["y"] = self.y
        
        return result
    }
}

extension double3: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["x"] = self.x
        result["y"] = self.y
        result["z"] = self.z
        
        return result
    }
}

extension double4: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["x"] = self.x
        result["y"] = self.y
        result["z"] = self.z
        result["w"] = self.w
        
        return result
    }
}

// MARK: - Matrices

extension matrix_float2x2: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        
        return result
    }
}

extension matrix_float3x2: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        result["c2"] = self.columns.2.marshal()
        
        return result
    }
}

extension matrix_float4x2: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        result["c2"] = self.columns.2.marshal()
        result["c3"] = self.columns.3.marshal()
        
        return result
    }
}

extension matrix_float2x3: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        
        return result
    }
}

extension matrix_float3x3: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        result["c2"] = self.columns.2.marshal()
        
        return result
    }
}

extension matrix_float4x3: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        result["c2"] = self.columns.2.marshal()
        result["c3"] = self.columns.3.marshal()
        
        return result
    }
}

extension matrix_float2x4: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        
        return result
    }
}

extension matrix_float3x4: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        result["c2"] = self.columns.2.marshal()
        
        return result
    }
}

extension matrix_float4x4: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        result["c2"] = self.columns.2.marshal()
        result["c3"] = self.columns.3.marshal()
        
        return result
    }
}

extension matrix_double2x2: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        
        return result
    }
}

extension matrix_double3x2: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        result["c2"] = self.columns.2.marshal()
        
        return result
    }
}

extension matrix_double4x2: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        result["c2"] = self.columns.2.marshal()
        result["c3"] = self.columns.3.marshal()
        
        return result
    }
}

extension matrix_double2x3: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        
        return result
    }
}

extension matrix_double3x3: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        result["c2"] = self.columns.2.marshal()
        
        return result
    }
}

extension matrix_double4x3: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        result["c2"] = self.columns.2.marshal()
        result["c3"] = self.columns.3.marshal()
        
        return result
    }
}

extension matrix_double2x4: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        
        return result
    }
}

extension matrix_double3x4: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        result["c2"] = self.columns.2.marshal()
        
        return result
    }
}

extension matrix_double4x4: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self.columns.0.marshal()
        result["c1"] = self.columns.1.marshal()
        result["c2"] = self.columns.2.marshal()
        result["c3"] = self.columns.3.marshal()
        
        return result
    }
}

extension float2x2: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        
        return result
    }
}

extension float3x2: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        result["c2"] = self[2].marshal()
        
        return result
    }
}

extension float4x2: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        result["c2"] = self[2].marshal()
        result["c3"] = self[3].marshal()
        
        return result
    }
}

extension float2x3: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        
        return result
    }
}

extension float3x3: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        result["c2"] = self[2].marshal()
        
        return result
    }
}

extension float4x3: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        result["c2"] = self[2].marshal()
        result["c3"] = self[3].marshal()
        
        return result
    }
}

extension float2x4: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        
        return result
    }
}

extension float3x4: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        result["c2"] = self[2].marshal()
        
        return result
    }
}

extension float4x4: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        result["c2"] = self[2].marshal()
        result["c3"] = self[3].marshal()
        
        return result
    }
}

extension double2x2: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        
        return result
    }
}

extension double3x2: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        result["c2"] = self[2].marshal()
        
        return result
    }
}

extension double4x2: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        result["c2"] = self[2].marshal()
        result["c3"] = self[3].marshal()
        
        return result
    }
}

extension double2x3: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        
        return result
    }
}

extension double3x3: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        result["c2"] = self[2].marshal()
        
        return result
    }
}

extension double4x3: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        result["c2"] = self[2].marshal()
        result["c3"] = self[3].marshal()
        
        return result
    }
}

extension double2x4: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        
        return result
    }
}

extension double3x4: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        result["c2"] = self[2].marshal()
        
        return result
    }
}

extension double4x4: Marshaling {
    public func marshal() -> MarshaledObject {
        var result = MarshaledObject()
        result["c0"] = self[0].marshal()
        result["c1"] = self[1].marshal()
        result["c2"] = self[2].marshal()
        result["c3"] = self[3].marshal()
        
        return result
    }
}
