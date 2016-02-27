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

extension int2: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let x: Int32 = try object.valueForKey("x")
        let y: Int32 = try object.valueForKey("y")
        
        self.init(x: x, y: y)
    }
}

extension int3: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let x: Int32 = try object.valueForKey("x")
        let y: Int32 = try object.valueForKey("y")
        let z: Int32 = try object.valueForKey("z")
        
        self.init(x: x, y: y, z: z)
    }
}

extension int4: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let x: Int32 = try object.valueForKey("x")
        let y: Int32 = try object.valueForKey("y")
        let z: Int32 = try object.valueForKey("z")
        let w: Int32 = try object.valueForKey("w")
        
        self.init(x: x, y: y, z: z, w: w)
    }
}

extension float2: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let x: Float = try object.valueForKey("x")
        let y: Float = try object.valueForKey("y")
        
        self.init(x: x, y: y)
    }
}

extension float3: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let x: Float = try object.valueForKey("x")
        let y: Float = try object.valueForKey("y")
        let z: Float = try object.valueForKey("z")
        
        self.init(x: x, y: y, z: z)
    }
}

extension float4: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let x: Float = try object.valueForKey("x")
        let y: Float = try object.valueForKey("y")
        let z: Float = try object.valueForKey("z")
        let w: Float = try object.valueForKey("w")
        
        self.init(x: x, y: y, z: z, w: w)
    }
}

extension double2: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let x: Double = try object.valueForKey("x")
        let y: Double = try object.valueForKey("y")
        
        self.init(x: x, y: y)
    }
}

extension double3: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let x: Double = try object.valueForKey("x")
        let y: Double = try object.valueForKey("y")
        let z: Double = try object.valueForKey("z")
        
        self.init(x: x, y: y, z: z)
    }
}

extension double4: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let x: Double = try object.valueForKey("x")
        let y: Double = try object.valueForKey("y")
        let z: Double = try object.valueForKey("z")
        let w: Double = try object.valueForKey("w")
        
        self.init(x: x, y: y, z: z, w: w)
    }
}

// MARK: - Matrices

extension matrix_float2x2: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float2 = try object.valueForKey("c0")
        let c1: float2 = try object.valueForKey("c1")
        
        self.init(columns: (c0, c1))
    }
}

extension matrix_float3x2: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float2 = try object.valueForKey("c0")
        let c1: float2 = try object.valueForKey("c1")
        let c2: float2 = try object.valueForKey("c2")
        
        self.init(columns: (c0, c1, c2))
    }
}

extension matrix_float4x2: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float2 = try object.valueForKey("c0")
        let c1: float2 = try object.valueForKey("c1")
        let c2: float2 = try object.valueForKey("c2")
        let c3: float2 = try object.valueForKey("c3")
        
        self.init(columns: (c0, c1, c2, c3))
    }
}

extension matrix_float2x3: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float3 = try object.valueForKey("c0")
        let c1: float3 = try object.valueForKey("c1")
        
        self.init(columns: (c0, c1))
    }
}

extension matrix_float3x3: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float3 = try object.valueForKey("c0")
        let c1: float3 = try object.valueForKey("c1")
        let c2: float3 = try object.valueForKey("c2")
        
        self.init(columns: (c0, c1, c2))
    }
}

extension matrix_float4x3: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float3 = try object.valueForKey("c0")
        let c1: float3 = try object.valueForKey("c1")
        let c2: float3 = try object.valueForKey("c2")
        let c3: float3 = try object.valueForKey("c3")
        
        self.init(columns: (c0, c1, c2, c3))
    }
}

extension matrix_float2x4: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float4 = try object.valueForKey("c0")
        let c1: float4 = try object.valueForKey("c1")
        
        self.init(columns: (c0, c1))
    }
}

extension matrix_float3x4: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float4 = try object.valueForKey("c0")
        let c1: float4 = try object.valueForKey("c1")
        let c2: float4 = try object.valueForKey("c2")
        
        self.init(columns: (c0, c1, c2))
    }
}

extension matrix_float4x4: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float4 = try object.valueForKey("c0")
        let c1: float4 = try object.valueForKey("c1")
        let c2: float4 = try object.valueForKey("c2")
        let c3: float4 = try object.valueForKey("c3")
        
        self.init(columns: (c0, c1, c2, c3))
    }
}

extension matrix_double2x2: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double2 = try object.valueForKey("c0")
        let c1: double2 = try object.valueForKey("c1")
        
        self.init(columns: (c0, c1))
    }
}

extension matrix_double3x2: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double2 = try object.valueForKey("c0")
        let c1: double2 = try object.valueForKey("c1")
        let c2: double2 = try object.valueForKey("c2")
        
        self.init(columns: (c0, c1, c2))
    }
}

extension matrix_double4x2: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double2 = try object.valueForKey("c0")
        let c1: double2 = try object.valueForKey("c1")
        let c2: double2 = try object.valueForKey("c2")
        let c3: double2 = try object.valueForKey("c3")
        
        self.init(columns: (c0, c1, c2, c3))
    }
}

extension matrix_double2x3: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double3 = try object.valueForKey("c0")
        let c1: double3 = try object.valueForKey("c1")
        
        self.init(columns: (c0, c1))
    }
}

extension matrix_double3x3: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double3 = try object.valueForKey("c0")
        let c1: double3 = try object.valueForKey("c1")
        let c2: double3 = try object.valueForKey("c2")
        
        self.init(columns: (c0, c1, c2))
    }
}

extension matrix_double4x3: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double3 = try object.valueForKey("c0")
        let c1: double3 = try object.valueForKey("c1")
        let c2: double3 = try object.valueForKey("c2")
        let c3: double3 = try object.valueForKey("c3")
        
        self.init(columns: (c0, c1, c2, c3))
    }
}

extension matrix_double2x4: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double4 = try object.valueForKey("c0")
        let c1: double4 = try object.valueForKey("c1")
        
        self.init(columns: (c0, c1))
    }
}

extension matrix_double3x4: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double4 = try object.valueForKey("c0")
        let c1: double4 = try object.valueForKey("c1")
        let c2: double4 = try object.valueForKey("c2")
        
        self.init(columns: (c0, c1, c2))
    }
}

extension matrix_double4x4: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double4 = try object.valueForKey("c0")
        let c1: double4 = try object.valueForKey("c1")
        let c2: double4 = try object.valueForKey("c2")
        let c3: double4 = try object.valueForKey("c3")
        
        self.init(columns: (c0, c1, c2, c3))
    }
}

extension float2x2: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float2 = try object.valueForKey("c0")
        let c1: float2 = try object.valueForKey("c1")
        
        self.init([c0, c1])
    }
}

extension float3x2: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float2 = try object.valueForKey("c0")
        let c1: float2 = try object.valueForKey("c1")
        let c2: float2 = try object.valueForKey("c2")
        
        self.init([c0, c1, c2])
    }
}

extension float4x2: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float2 = try object.valueForKey("c0")
        let c1: float2 = try object.valueForKey("c1")
        let c2: float2 = try object.valueForKey("c2")
        let c3: float2 = try object.valueForKey("c3")
        
        self.init([c0, c1, c2, c3])
    }
}

extension float2x3: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float3 = try object.valueForKey("c0")
        let c1: float3 = try object.valueForKey("c1")
        
        self.init([c0, c1])
    }
}

extension float3x3: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float3 = try object.valueForKey("c0")
        let c1: float3 = try object.valueForKey("c1")
        let c2: float3 = try object.valueForKey("c2")
        
        self.init([c0, c1, c2])
    }
}

extension float4x3: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float3 = try object.valueForKey("c0")
        let c1: float3 = try object.valueForKey("c1")
        let c2: float3 = try object.valueForKey("c2")
        let c3: float3 = try object.valueForKey("c3")
        
        self.init([c0, c1, c2, c3])
    }
}

extension float2x4: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float4 = try object.valueForKey("c0")
        let c1: float4 = try object.valueForKey("c1")
        
        self.init([c0, c1])
    }
}

extension float3x4: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float4 = try object.valueForKey("c0")
        let c1: float4 = try object.valueForKey("c1")
        let c2: float4 = try object.valueForKey("c2")
        
        self.init([c0, c1, c2])
    }
}

extension float4x4: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: float4 = try object.valueForKey("c0")
        let c1: float4 = try object.valueForKey("c1")
        let c2: float4 = try object.valueForKey("c2")
        let c3: float4 = try object.valueForKey("c3")
        
        self.init([c0, c1, c2, c3])
    }
}

extension double2x2: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double2 = try object.valueForKey("c0")
        let c1: double2 = try object.valueForKey("c1")
        
        self.init([c0, c1])
    }
}

extension double3x2: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double2 = try object.valueForKey("c0")
        let c1: double2 = try object.valueForKey("c1")
        let c2: double2 = try object.valueForKey("c2")
        
        self.init([c0, c1, c2])
    }
}

extension double4x2: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double2 = try object.valueForKey("c0")
        let c1: double2 = try object.valueForKey("c1")
        let c2: double2 = try object.valueForKey("c2")
        let c3: double2 = try object.valueForKey("c3")
        
        self.init([c0, c1, c2, c3])
    }
}

extension double2x3: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double3 = try object.valueForKey("c0")
        let c1: double3 = try object.valueForKey("c1")
        
        self.init([c0, c1])
    }
}

extension double3x3: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double3 = try object.valueForKey("c0")
        let c1: double3 = try object.valueForKey("c1")
        let c2: double3 = try object.valueForKey("c2")
        
        self.init([c0, c1, c2])
    }
}

extension double4x3: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double3 = try object.valueForKey("c0")
        let c1: double3 = try object.valueForKey("c1")
        let c2: double3 = try object.valueForKey("c2")
        let c3: double3 = try object.valueForKey("c3")
        
        self.init([c0, c1, c2, c3])
    }
}

extension double2x4: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double4 = try object.valueForKey("c0")
        let c1: double4 = try object.valueForKey("c1")
        
        self.init([c0, c1])
    }
}

extension double3x4: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double4 = try object.valueForKey("c0")
        let c1: double4 = try object.valueForKey("c1")
        let c2: double4 = try object.valueForKey("c2")
        
        self.init([c0, c1, c2])
    }
}

extension double4x4: Unmarshaling {
    public init(object: MarshaledObject) throws {
        let c0: double4 = try object.valueForKey("c0")
        let c1: double4 = try object.valueForKey("c1")
        let c2: double4 = try object.valueForKey("c2")
        let c3: double4 = try object.valueForKey("c3")
        
        self.init([c0, c1, c2, c3])
    }
}
