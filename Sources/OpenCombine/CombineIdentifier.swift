//
//  CombineIdentifier.swift
//  OpenCombine
//
//  Created by Sergej Jaskiewicz on 10.06.2019.
//

import CNIOAtomics

public struct CombineIdentifier: Hashable, CustomStringConvertible {

    private static let _counter = catmc_atomic_unsigned_long_long_create(0)

    private let _id: UInt

    public init() {
        _id = UInt(catmc_atomic_unsigned_long_long_add(CombineIdentifier._counter, 1))
    }

    public init(_ obj: AnyObject) {
        _id = UInt(bitPattern: ObjectIdentifier(obj))
    }

    public var description: String {
        return "0x\(String(_id, radix: 16))"
    }
}
