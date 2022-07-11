//
//  CardView.swift
//  CCC-1st-Toss-Eunice
//
//  Created by Hyorim Nam on 2022/07/11.
//

import UIKit

class CardView: UIView {
    // IBOutlet crashes
    @IBOutlet weak var textLabel: UILabel!
    var text: String = "tet"
    override func layoutSubviews() {
        super.layoutSubviews()
        textLabel.text = text
    }

}
