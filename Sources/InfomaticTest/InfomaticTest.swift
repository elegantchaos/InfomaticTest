// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 09/06/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

@main struct InfomaticTest {
    static func main() {

        // access the bundled info.plist explicitly
        guard let url = Bundle.module.url(forResource: "Info", withExtension: "plist") else {
            fatalError("Info.plist not found.")
        }
        
        print("\nInfo.plist:")
        var format: PropertyListSerialization.PropertyListFormat = .xml
        if let data = try? Data(contentsOf: url), let info = try? PropertyListSerialization.propertyList(from: data, format: &format) {
            print(info)
        }
    }
}
