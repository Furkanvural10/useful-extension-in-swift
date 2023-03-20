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


// Counting words in a string - **hacking with swift
extension String {
    var wordCount: Int {
        let regex = try? NSRegularExpression(pattern: "\\w+")
        return regex?.numberOfMatches(in: self, range: NSRange(location: 0, length: self.utf16.count)) ?? 0
    }
}

let sentences = "lorem ipsum dolor sit amet"
let countWord = sentences.wordCount

// convert to meter extension

extension Double {
    var km: Double {return self * 1000.0}
    var m: Double {return self}
    var cm: Double {return self / 100.0}
    var mm: Double {return self / 1000.0}
    
}

// MARK: - UICOLOR With HEX Color

extension UIColor {
    convenience init(hex: Int, alpha: CGFloat = 1.0) {
            self.init(
                red: CGFloat((hex >> 16) & 0xff) / 255,
                green:  CGFloat((hex >> 08) & 0xff) / 255,
                blue: CGFloat((hex >> 00) & 0xff) / 255,
                alpha: alpha
            )
    }

}
