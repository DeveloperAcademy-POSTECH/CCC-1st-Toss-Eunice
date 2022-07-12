//
//  Cards.swift
//  CCC-1st-Toss-Eunice
//
//  Created by Hyorim Nam on 2022/07/12.
//

import Foundation

struct Card: Identifiable {
    var id: String = UUID().uuidString
    var sectionTitle: String
    var items: [String]
}

