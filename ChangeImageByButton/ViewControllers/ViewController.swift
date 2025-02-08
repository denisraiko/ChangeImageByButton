//
//  ViewController.swift
//  ChangeImageByButton
//
//  Created by Denis Raiko on 6.02.25.
//

import UIKit

class ViewController: UIViewController {
    
    private let stackView = UIStackView()
    private let textLabel = UILabel()
    private let imageView = ImageView(imageName: "1")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addGradient()
        view.addSubview(stackView)
        setupStackView()
        setupLabel(title: "Номер изображения")
        setupLayout()
    }
    
    private func setupLabel(title: String) {
        textLabel.text = title
        textLabel.textColor = .white
        textLabel.font = .systemFont(ofSize: 15)
        textLabel.textAlignment = .center
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.distribution = .equalSpacing
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(imageView)
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textLabel.heightAnchor.constraint(equalToConstant: 30),

            stackView.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 20),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            
            imageView.heightAnchor.constraint(equalTo: stackView.widthAnchor)
        ])
    }
}

