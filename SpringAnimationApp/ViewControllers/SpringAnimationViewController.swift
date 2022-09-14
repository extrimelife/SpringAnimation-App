//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by roman Khilchenko on 13.09.2022.
//

import UIKit
import SpringAnimation

final class SpringAnimationViewController: UIViewController {
    
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    
    @IBAction func buttonAction() {
        setupView()
        
    }
    
    
    private func setupView() {
        let animation = Animation.getModel()
        springAnimationView.animation = animation.preset
        presetLabel.text = "preset: \(animation.preset)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force: \(animation.force)"
        durationLabel.text = "duration: \(animation.duration)"
        delayLabel.text = "delay: \(animation.delay)"
        springAnimationView.animate()
        settingButtonTitle()
    }
    
    private func settingButtonTitle() {
        buttonLabel.setTitle(springAnimationView.animation, for: .normal)
        
    }
}



















