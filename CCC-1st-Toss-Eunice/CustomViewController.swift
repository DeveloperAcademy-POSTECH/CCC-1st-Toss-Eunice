//
//  ViewController.swift
//  CCC-1st-Toss-Eunice
//
//  Created by Hyorim Nam on 2022/07/06.
//

import UIKit

class CustomViewController: UIViewController {
    fileprivate var sections: [Section] = []
    fileprivate var cards: [Card] = []

    // @IBOutlet weak var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        readFile()
        // textLabel.text = sections.first?.title ?? "wrong" // for test
    }

}

// ref: https://alep.medium.com/swiftui-tutorial-how-to-read-a-json-file-73fd960ec954
// url not working solved ref: https://stackoverflow.com/a/43129166/6183323
extension CustomViewController {
    fileprivate func readFile() {
        if let url = Bundle.main.url(forResource: "TossMockupData", withExtension: "json"),
           let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            guard (try? decoder.decode(Toss.self, from: data)) != nil else {
                print("Toss decoder failed")
                return
            }
            if let tossData = try? decoder.decode(Toss.self, from: data) {
                self.sections = tossData.sections
                self.cards = tossData.cards
                // print("sections.count: \(sections.count)")
            }
        } else {
            print("url failed")
        }
    }
}

