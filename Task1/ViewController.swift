//
//  ViewController.swift
//  Task1
//
//  Created by va-gusev on 01.05.2023.
//

import UIKit

class ViewController: UIViewController {

    private let roundedView = UIView()
    private let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        view.addSubview(roundedView)
        
        roundedView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            roundedView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            roundedView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            roundedView.widthAnchor.constraint(equalToConstant: 100),
            roundedView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        let layer = roundedView.layer
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 16
        layer.shadowOpacity = 0.5
        layer.shadowOffset = .zero
        layer.shouldRasterize = true
        layer.rasterizationScale = view.window?.windowScene?.screen.scale ?? 1
        
        gradientLayer.cornerRadius = 12
        gradientLayer.colors = [UIColor.orange.cgColor, UIColor.red.cgColor]
        gradientLayer.masksToBounds = true
        gradientLayer.startPoint = .init(x: 0, y: 0)
        gradientLayer.endPoint = .init(x: 1, y: 1)
        
        roundedView.layer.addSublayer(gradientLayer)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientLayer.frame = roundedView.bounds
    }
}

