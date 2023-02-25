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
