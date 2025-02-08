//
//  ImageDataManager.swift
//  ChangeImageByButton
//
//  Created by Denis Raiko on 8.02.25.
//

import Foundation

class ImageDataManager {
    private var images: [ImageModel] = []
    private var currentIndex = 0
    
    init(images: [ImageModel]) {
        self.images = images
    }
    
    func getCurrentImage() -> ImageModel {
        images[currentIndex]
    }
    
    func getNextImage() -> ImageModel {
            if !images.isEmpty {
                currentIndex = (currentIndex + 1) % images.count // Зацикливание изображений
            }
            return getCurrentImage()
        }
}
