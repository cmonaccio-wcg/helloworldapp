//
//  Product.swift
//  helloworldapp
//
//  Created by Chris Monaccio on 2/3/21.
//

import Foundation
import SwiftUI

struct Product: Hashable, Codable {
    var id: Int
    var name: String
    var description: String
    var category: String
    var cost: Int

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
