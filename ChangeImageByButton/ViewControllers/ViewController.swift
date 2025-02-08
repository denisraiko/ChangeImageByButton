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
    private let button = Button(title: "Next image", color: .magenta)
    
    private let imageManager = ImageManager()
    private let imageDataManager: ImageDataManager
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.imageDataManager = ImageDataManager(images: imageManager.getImages())
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        self.imageDataManager = ImageDataManager(images: imageManager.getImages())
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addGradient()
        setupStackView()
        setupLabel()
        setupLayout()
        addAction()
        
        updateUI()
    }
    
    private func setupLabel() {
        textLabel.textColor = .white
        textLabel.font = .systemFont(ofSize: 15)
        textLabel.textAlignment = .center
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(button)
        
        view.addSubview(stackView)
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),

            imageView.heightAnchor.constraint(equalTo: stackView.widthAnchor),
            imageView.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            
            button.widthAnchor.constraint(equalTo: stackView.widthAnchor)
        ])
    }
    
    private func addAction() {
        let action = UIAction { _ in
            self.updateUI()
        }
        button.addAction(action, for: .touchUpInside)
    }
    
    private func updateUI() {
        let imageModel = imageDataManager.getNextImage()
        textLabel.text = "Number of image: \(imageModel.number)"
        imageView.updateImage(name: imageModel.imageName)
    }
}
