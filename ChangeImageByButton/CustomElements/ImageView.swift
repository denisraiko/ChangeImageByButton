//
//  ImageView.swift
//  ChangeImageByButton
//
//  Created by Denis Raiko on 8.02.25.
//

import Foundation
import UIKit

class ImageView: UIView {
    let imageView = UIImageView()
    
    init(imageName: String) {
        super.init(frame: .zero)
        setupImageView(imageName: imageName)
        setupShadowView()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupImageView(imageName: String) {
        imageView.image = UIImage(named: imageName)
        imageView.layer.cornerRadius = 15
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        addSubview(imageView)
    }
    
    private func setupShadowView() {
        layer.cornerRadius = 15
        layer.backgroundColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize(width: 5, height: 5)
        layer.shadowRadius = 15
    }
    
    private func setupLayout() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    func updateImage(name: String) {
            imageView.image = UIImage(named: name)
        }
}
