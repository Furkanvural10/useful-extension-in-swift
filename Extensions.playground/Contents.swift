import UIKit

// Optional String Extension
extension String? {
    var isNilOrEmpty: Bool { self == nil || self == "" }
}

func getName(name: String?){
    if !name.isNilOrEmpty{
        // handle
    }
}
