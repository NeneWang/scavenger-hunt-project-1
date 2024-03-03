//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your Favorite Restaurant",
                 description: "Identify your favorite restaurants."),
            Task(title: "Your Childhood Park",
                 description: "Identify that place you used to go when you were a kid."),
            Task(title: "Closest Supermarket",
                 description: "Where is the closest supermarket to your place?")
        ]
    }
}
