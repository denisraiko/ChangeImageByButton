//
//  ImageManeger.swift
//  ChangeImageByButton
//
//  Created by Denis Raiko on 8.02.25.
//

import Foundation

class ImageManager {
    func getImages() -> [ImageModel] {
        return [
            ImageModel(imageName: "1", number: 1),
            ImageModel(imageName: "2", number: 2),
            ImageModel(imageName: "3", number: 3)
        ]
    }
}
