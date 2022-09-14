//
//  DataManager.swift
//  SpringAnimationApp
//
//  Created by roman Khilchenko on 13.09.2022.
//


import SpringAnimation

final class DataManager {
    
    static let shared = DataManager()
    
    let preset = AnimationPreset.allCases
    let curve = AnimationCurve.allCases
    let force = [1.49, 1.50, 1.30, 1,23, 1.00, 1.76, 1.21, 1.36]
    let duration = [1.10, 1.40, 1.09, 1.20, 1.28, 1.18, 1.11, 1.34]
    let delay = [0.20, 0.30, 0.25, 0.15, 0.17, 0.18, 0.23, 0.11]
    
    private init() {}
}



