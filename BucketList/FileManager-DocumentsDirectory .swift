//
//  FileManager-DocumentsDirectory .swift
//  BucketList
//
//  Created by Daniel Jesus Callisaya Hidalgo on 31/5/22.
//

import Foundation
extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}

