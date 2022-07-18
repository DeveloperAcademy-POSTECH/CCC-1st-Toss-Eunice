// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let toss = try? newJSONDecoder().decode(Toss.self, from: jsonData)

// import Foundation
import UIKit

// MARK: - Toss
struct Toss: Codable {
    let sections: [Section]
    let cards: [Card]
}

// MARK: - Card
struct Card: Codable {
    let subtitle, title: String
    let image: String?
}

// MARK: - Section
struct Section: Codable {
    let title: String
    let row: [Row]?
}

// MARK: - Row
struct Row: Codable {
    let image, subtitle, balance: String
    let button: String?
}
