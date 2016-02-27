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

extension int2: ValueType {
    public static func value(object: Any) throws -> int2 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let x: Int32 = try values.valueForKey("x")
        let y: Int32 = try values.valueForKey("y")
        
        return int2(x: x, y: y)
    }
}

extension int3: ValueType {
    public static func value(object: Any) throws -> int3 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let x: Int32 = try values.valueForKey("x")
        let y: Int32 = try values.valueForKey("y")
        let z: Int32 = try values.valueForKey("z")
        
        return int3(x: x, y: y, z: z)
    }
}

extension int4: ValueType {
    public static func value(object: Any) throws -> int4 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let x: Int32 = try values.valueForKey("x")
        let y: Int32 = try values.valueForKey("y")
        let z: Int32 = try values.valueForKey("z")
        let w: Int32 = try values.valueForKey("w")
        
        return int4(x: x, y: y, z: z, w: w)
    }
}

extension float2: ValueType {
    public static func value(object: Any) throws -> float2 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let x: Float = try values.valueForKey("x")
        let y: Float = try values.valueForKey("y")
        
        return float2(x: x, y: y)
    }
}

extension float3: ValueType {
    public static func value(object: Any) throws -> float3 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let x: Float = try values.valueForKey("x")
        let y: Float = try values.valueForKey("y")
        let z: Float = try values.valueForKey("z")
        
        return float3(x: x, y: y, z: z)
    }
}

extension float4: ValueType {
    public static func value(object: Any) throws -> float4 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let x: Float = try values.valueForKey("x")
        let y: Float = try values.valueForKey("y")
        let z: Float = try values.valueForKey("z")
        let w: Float = try values.valueForKey("w")
        
        return float4(x: x, y: y, z: z, w: w)
    }
}

extension double2: ValueType {
    public static func value(object: Any) throws -> double2 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let x: Double = try values.valueForKey("x")
        let y: Double = try values.valueForKey("y")
        
        return double2(x: x, y: y)
    }
}

extension double3: ValueType {
    public static func value(object: Any) throws -> double3 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let x: Double = try values.valueForKey("x")
        let y: Double = try values.valueForKey("y")
        let z: Double = try values.valueForKey("z")
        
        return double3(x: x, y: y, z: z)
    }
}

extension double4: ValueType {
    public static func value(object: Any) throws -> double4 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let x: Double = try values.valueForKey("x")
        let y: Double = try values.valueForKey("y")
        let z: Double = try values.valueForKey("z")
        let w: Double = try values.valueForKey("w")
        
        return double4(x: x, y: y, z: z, w: w)
    }
}

// MARK: - Matrices

extension matrix_float2x2: ValueType {
    public static func value(object: Any) throws -> matrix_float2x2 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_float2 = try values.valueForKey("c0")
        let col1: vector_float2 = try values.valueForKey("c1")
        
        return matrix_float2x2(columns: (col0, col1))
    }
}

extension matrix_float3x2: ValueType {
    public static func value(object: Any) throws -> matrix_float3x2 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_float2 = try values.valueForKey("c0")
        let col1: vector_float2 = try values.valueForKey("c1")
        let col2: vector_float2 = try values.valueForKey("c2")
        
        return matrix_float3x2(columns: (col0, col1, col2))
    }
}

extension matrix_float4x2: ValueType {
    public static func value(object: Any) throws -> matrix_float4x2 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_float2 = try values.valueForKey("c0")
        let col1: vector_float2 = try values.valueForKey("c1")
        let col2: vector_float2 = try values.valueForKey("c2")
        let col3: vector_float2 = try values.valueForKey("c3")
        
        return matrix_float4x2(columns: (col0, col1, col2, col3))
    }
}

extension matrix_float2x3: ValueType {
    public static func value(object: Any) throws -> matrix_float2x3 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_float3 = try values.valueForKey("c0")
        let col1: vector_float3 = try values.valueForKey("c1")
        
        return matrix_float2x3(columns: (col0, col1))
    }
}

extension matrix_float3x3: ValueType {
    public static func value(object: Any) throws -> matrix_float3x3 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_float3 = try values.valueForKey("c0")
        let col1: vector_float3 = try values.valueForKey("c1")
        let col2: vector_float3 = try values.valueForKey("c2")
        
        return matrix_float3x3(columns: (col0, col1, col2))
    }
}

extension matrix_float4x3: ValueType {
    public static func value(object: Any) throws -> matrix_float4x3 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_float3 = try values.valueForKey("c0")
        let col1: vector_float3 = try values.valueForKey("c1")
        let col2: vector_float3 = try values.valueForKey("c2")
        let col3: vector_float3 = try values.valueForKey("c3")
        
        return matrix_float4x3(columns: (col0, col1, col2, col3))
    }
}

extension matrix_float2x4: ValueType {
    public static func value(object: Any) throws -> matrix_float2x4 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_float4 = try values.valueForKey("c0")
        let col1: vector_float4 = try values.valueForKey("c1")
        
        return matrix_float2x4(columns: (col0, col1))
    }
}

extension matrix_float3x4: ValueType {
    public static func value(object: Any) throws -> matrix_float3x4 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_float4 = try values.valueForKey("c0")
        let col1: vector_float4 = try values.valueForKey("c1")
        let col2: vector_float4 = try values.valueForKey("c2")
        
        return matrix_float3x4(columns: (col0, col1, col2))
    }
}

extension matrix_float4x4: ValueType {
    public static func value(object: Any) throws -> matrix_float4x4 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_float4 = try values.valueForKey("c0")
        let col1: vector_float4 = try values.valueForKey("c1")
        let col2: vector_float4 = try values.valueForKey("c2")
        let col3: vector_float4 = try values.valueForKey("c3")
        
        return matrix_float4x4(columns: (col0, col1, col2, col3))
    }
}

extension matrix_double2x2: ValueType {
    public static func value(object: Any) throws -> matrix_double2x2 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_double2 = try values.valueForKey("c0")
        let col1: vector_double2 = try values.valueForKey("c1")
        
        return matrix_double2x2(columns: (col0, col1))
    }
}

extension matrix_double3x2: ValueType {
    public static func value(object: Any) throws -> matrix_double3x2 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_double2 = try values.valueForKey("c0")
        let col1: vector_double2 = try values.valueForKey("c1")
        let col2: vector_double2 = try values.valueForKey("c2")
        
        return matrix_double3x2(columns: (col0, col1, col2))
    }
}

extension matrix_double4x2: ValueType {
    public static func value(object: Any) throws -> matrix_double4x2 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_double2 = try values.valueForKey("c0")
        let col1: vector_double2 = try values.valueForKey("c1")
        let col2: vector_double2 = try values.valueForKey("c2")
        let col3: vector_double2 = try values.valueForKey("c3")
        
        return matrix_double4x2(columns: (col0, col1, col2, col3))
    }
}

extension matrix_double2x3: ValueType {
    public static func value(object: Any) throws -> matrix_double2x3 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_double3 = try values.valueForKey("c0")
        let col1: vector_double3 = try values.valueForKey("c1")
        
        return matrix_double2x3(columns: (col0, col1))
    }
}

extension matrix_double3x3: ValueType {
    public static func value(object: Any) throws -> matrix_double3x3 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_double3 = try values.valueForKey("c0")
        let col1: vector_double3 = try values.valueForKey("c1")
        let col2: vector_double3 = try values.valueForKey("c2")
        
        return matrix_double3x3(columns: (col0, col1, col2))
    }
}

extension matrix_double4x3: ValueType {
    public static func value(object: Any) throws -> matrix_double4x3 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_double3 = try values.valueForKey("c0")
        let col1: vector_double3 = try values.valueForKey("c1")
        let col2: vector_double3 = try values.valueForKey("c2")
        let col3: vector_double3 = try values.valueForKey("c3")
        
        return matrix_double4x3(columns: (col0, col1, col2, col3))
    }
}

extension matrix_double2x4: ValueType {
    public static func value(object: Any) throws -> matrix_double2x4 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_double4 = try values.valueForKey("c0")
        let col1: vector_double4 = try values.valueForKey("c1")
        
        return matrix_double2x4(columns: (col0, col1))
    }
}

extension matrix_double3x4: ValueType {
    public static func value(object: Any) throws -> matrix_double3x4 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_double4 = try values.valueForKey("c0")
        let col1: vector_double4 = try values.valueForKey("c1")
        let col2: vector_double4 = try values.valueForKey("c2")
        
        return matrix_double3x4(columns: (col0, col1, col2))
    }
}

extension matrix_double4x4: ValueType {
    public static func value(object: Any) throws -> matrix_double4x4 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: vector_double4 = try values.valueForKey("c0")
        let col1: vector_double4 = try values.valueForKey("c1")
        let col2: vector_double4 = try values.valueForKey("c2")
        let col3: vector_double4 = try values.valueForKey("c3")
        
        return matrix_double4x4(columns: (col0, col1, col2, col3))
    }
}

extension float2x2: ValueType {
    public static func value(object: Any) throws -> float2x2 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: float2 = try values.valueForKey("c0")
        let col1: float2 = try values.valueForKey("c1")
        
        return float2x2([col0, col1])
    }
}

extension float3x2: ValueType {
    public static func value(object: Any) throws -> float3x2 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: float2 = try values.valueForKey("c0")
        let col1: float2 = try values.valueForKey("c1")
        let col2: float2 = try values.valueForKey("c2")
        
        return float3x2([col0, col1, col2])
    }
}

extension float4x2: ValueType {
    public static func value(object: Any) throws -> float4x2 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: float2 = try values.valueForKey("c0")
        let col1: float2 = try values.valueForKey("c1")
        let col2: float2 = try values.valueForKey("c2")
        let col3: float2 = try values.valueForKey("c3")
        
        return float4x2([col0, col1, col2, col3])
    }
}

extension float2x3: ValueType {
    public static func value(object: Any) throws -> float2x3 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: float3 = try values.valueForKey("c0")
        let col1: float3 = try values.valueForKey("c1")
        
        return float2x3([col0, col1])
    }
}

extension float3x3: ValueType {
    public static func value(object: Any) throws -> float3x3 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: float3 = try values.valueForKey("c0")
        let col1: float3 = try values.valueForKey("c1")
        let col2: float3 = try values.valueForKey("c2")
        
        return float3x3([col0, col1, col2])
    }
}

extension float4x3: ValueType {
    public static func value(object: Any) throws -> float4x3 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: float3 = try values.valueForKey("c0")
        let col1: float3 = try values.valueForKey("c1")
        let col2: float3 = try values.valueForKey("c2")
        let col3: float3 = try values.valueForKey("c3")
        
        return float4x3([col0, col1, col2, col3])
    }
}

extension float2x4: ValueType {
    public static func value(object: Any) throws -> float2x4 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: float4 = try values.valueForKey("c0")
        let col1: float4 = try values.valueForKey("c1")
        
        return float2x4([col0, col1])
    }
}

extension float3x4: ValueType {
    public static func value(object: Any) throws -> float3x4 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: float4 = try values.valueForKey("c0")
        let col1: float4 = try values.valueForKey("c1")
        let col2: float4 = try values.valueForKey("c2")
        
        return float3x4([col0, col1, col2])
    }
}

extension float4x4: ValueType {
    public static func value(object: Any) throws -> float4x4 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: float4 = try values.valueForKey("c0")
        let col1: float4 = try values.valueForKey("c1")
        let col2: float4 = try values.valueForKey("c2")
        let col3: float4 = try values.valueForKey("c3")
        
        return float4x4([col0, col1, col2, col3])
    }
}

extension double2x2: ValueType {
    public static func value(object: Any) throws -> double2x2 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: double2 = try values.valueForKey("c0")
        let col1: double2 = try values.valueForKey("c1")
        
        return double2x2([col0, col1])
    }
}

extension double3x2: ValueType {
    public static func value(object: Any) throws -> double3x2 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: double2 = try values.valueForKey("c0")
        let col1: double2 = try values.valueForKey("c1")
        let col2: double2 = try values.valueForKey("c2")
        
        return double3x2([col0, col1, col2])
    }
}

extension double4x2: ValueType {
    public static func value(object: Any) throws -> double4x2 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: double2 = try values.valueForKey("c0")
        let col1: double2 = try values.valueForKey("c1")
        let col2: double2 = try values.valueForKey("c2")
        let col3: double2 = try values.valueForKey("c3")
        
        return double4x2([col0, col1, col2, col3])
    }
}

extension double2x3: ValueType {
    public static func value(object: Any) throws -> double2x3 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: double3 = try values.valueForKey("c0")
        let col1: double3 = try values.valueForKey("c1")
        
        return double2x3([col0, col1])
    }
}

extension double3x3: ValueType {
    public static func value(object: Any) throws -> double3x3 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: double3 = try values.valueForKey("c0")
        let col1: double3 = try values.valueForKey("c1")
        let col2: double3 = try values.valueForKey("c2")
        
        return double3x3([col0, col1, col2])
    }
}

extension double4x3: ValueType {
    public static func value(object: Any) throws -> double4x3 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: double3 = try values.valueForKey("c0")
        let col1: double3 = try values.valueForKey("c1")
        let col2: double3 = try values.valueForKey("c2")
        let col3: double3 = try values.valueForKey("c3")
        
        return double4x3([col0, col1, col2, col3])
    }
}

extension double2x4: ValueType {
    public static func value(object: Any) throws -> double2x4 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: double4 = try values.valueForKey("c0")
        let col1: double4 = try values.valueForKey("c1")
        
        return double2x4([col0, col1])
    }
}

extension double3x4: ValueType {
    public static func value(object: Any) throws -> double3x4 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: double4 = try values.valueForKey("c0")
        let col1: double4 = try values.valueForKey("c1")
        let col2: double4 = try values.valueForKey("c2")
        
        return double3x4([col0, col1, col2])
    }
}

extension double4x4: ValueType {
    public static func value(object: Any) throws -> double4x4 {
        guard let values = object as? MarshaledObject else {
            throw Error.TypeMismatch(expected: self, actual: object.dynamicType)
        }
        
        let col0: double4 = try values.valueForKey("c0")
        let col1: double4 = try values.valueForKey("c1")
        let col2: double4 = try values.valueForKey("c2")
        let col3: double4 = try values.valueForKey("c3")
        
        return double4x4([col0, col1, col2, col3])
    }
}
