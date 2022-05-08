//
//  ContentView.swift
//  BucketList
//
//  Created by Daniel Jesus Callisaya Hidalgo on 14/4/22.
//

import SwiftUI

struct ContentView: View {
    struct User: Identifiable, Comparable {
        let id = UUID()
        let firstName: String
        let lastName: String

        static func <(lhs: User, rhs: User) -> Bool {
            lhs.lastName < rhs.lastName
        }
    }
    
    let users = [
        User(firstName: "Arnold", lastName: "Rimmer"),
        User(firstName: "Kristine", lastName: "Kochanski"),
        User(firstName: "David", lastName: "Lister"),
    ].sorted()
    
    var body: some View {
        List(users) { user in
                    Text("\(user.lastName), \(user.firstName)")
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
