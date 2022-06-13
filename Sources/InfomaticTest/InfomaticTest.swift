// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 09/06/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

@main struct InfomaticTest {
    static func main() {

        if let info = Bundle.module.infoDictionary {
            print("Info dictionary is: \(info)")
        }

        // access the bundled info.plist explicitly
        guard let url = Bundle.module.url(forResource: "Other", withExtension: "plist") else {
            fatalError("Other.plist not found.")
        }
        
        print("\nOther.plist:")
        var format: PropertyListSerialization.PropertyListFormat = .xml
        if let data = try? Data(contentsOf: url), let decoded = try? PropertyListSerialization.propertyList(from: data, format: &format), let info = decoded as? [String:Any] {
            print(info)
        }
        
    }
}
