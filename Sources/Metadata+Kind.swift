
//https://github.com/apple/swift/blob/swift-3.0-branch/utils/dtrace/runtime.d

extension Metadata {
    
    static let kind: Kind? = nil
    
    enum Kind {
        case `struct`
        case `enum`
        case opaque
        case tuple
        case function
        case existential
        case metatype
        case objCClassWrapper
        case heapLocalVariable
        case heapArray
        case `class`
        init(flag: Int) {
            switch flag {
            case 1: self = .struct
            case 2: self = .enum
            case 8: self = .opaque
            case 9: self = .tuple
            case 10: self = .function
            case 12: self = .existential
            case 13: self = .metatype
            case 14: self = .objCClassWrapper
            case 64: self = .heapLocalVariable
            case 65: self = .heapArray
            default: self = .class
            }
        }
    }
    
}


