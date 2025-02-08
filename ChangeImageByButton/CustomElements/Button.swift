//
//  Button.swift
//  ChangeImageByButton
//
//  Created by Denis Raiko on 8.02.25.
//

import Foundation
import UIKit

class Button: UIButton {
    init(title: String, color: UIColor) {
        super.init(frame: .zero)
        setupButton(title: title, color: color)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButton(title: String, color: UIColor) {
        setTitle(title, for: .normal)
        setTitleColor(.white, for: .normal)
        backgroundColor = color
        layer.cornerRadius = 10
        heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
