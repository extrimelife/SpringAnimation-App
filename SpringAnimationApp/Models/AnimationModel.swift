//
//  AnimationModel.swift
//  SpringAnimationApp
//
//  Created by roman Khilchenko on 13.09.2022.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
}

extension Animation {
    static func getModel() -> Animation {
        
        Animation(preset: DataManager.shared.preset.randomElement()?.rawValue ?? "",
                  curve: DataManager.shared.curve.randomElement()?.rawValue ?? "",
                  force: DataManager.shared.force.randomElement() ?? 0,
                  duration: DataManager.shared.duration.randomElement() ?? 0,
                  delay: DataManager.shared.delay.randomElement() ?? 0)
        
        
    }
}

// Оставлю это здесь пожалуйста! Мне так для инфы

//extension Animation {
//    static func getModel() -> [Animation] {
//        var animations: [Animation] = []
//
//        let preset = DataManager.shared.preset.shuffled()
//        let curve = DataManager.shared.curve.shuffled()
//        let iterationCount = min(preset.count, curve.count)
//
//        for index in 0..<iterationCount {
//            let animation = Animation(preset: preset[index].rawValue, curve: curve[index].rawValue, force: 1.22, duration: 1.22, delay: 0.30)
//            animations.append(animation)
//
//        }
//
//        return animations
//
//    }
//}
//

