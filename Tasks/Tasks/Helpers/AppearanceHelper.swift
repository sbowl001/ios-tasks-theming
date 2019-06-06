//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Stephanie Bowles on 6/6/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//
import UIKit

enum AppearanceHelper {
    
    static var titleColor = UIColor(red: 213.0/255.0, green: 185.0/255.0, blue: 164.0/255.0, alpha: 1.5)
    
    static func domesticMannersFont(pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Domestic Manners", size: pointSize)!
        return font
    }
    
    static func beyondWonderlandFont(pointSize: CGFloat) ->
        UIFont {
            let font = UIFont(name: "Beyond Wonderland", size: pointSize)!
            return font
    }
    
//    static func setGradient(colorOne: UIColor, colorTwo: UIColor) {
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = view.bounds
//        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
//        gradientLayer.locations = [0.0, 1.0]
//        gradientLayer.startPoint = CGPoint(x:1.0, y: 1.0)
//        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
//
//        view.layer.insertSublayer(gradientLayer, at: 0)
//    }
//
    static func setThemeAppearance() {
        
//        let textFont = [NSAttributedString.Key.font: beyondWonderlandFont(pointSize: 30)]
//        UINavigationBar.appearance().largeTitleTextAttributes = textFont
//        UINavigationBar.appearance().titleTextAttributes = textFont
        
         UINavigationBar.appearance().barTintColor = .black
           let textAttributes = [NSAttributedString.Key.foregroundColor: titleColor,
                NSAttributedString.Key.font: beyondWonderlandFont(pointSize: 100)                 ]
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        UITextField.appearance().tintColor = .gray
        UITextView.appearance().tintColor = .gray
        UIBarButtonItem.appearance().tintColor = titleColor
        UISegmentedControl.appearance().tintColor = titleColor
        
        
    }
    
    static func style(button: UIButton) {
        button.titleLabel?.font = domesticMannersFont(pointSize: 30)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor =  .red
        button.layer.cornerRadius = 8
    }
}
//open func setBackgroundImage(_ backgroundImage: UIImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics)
//open var titleTextAttributes: [NSAttributedString.Key : Any]?


/* You may specify the font, text color, and shadow properties for the large title in the text attributes dictionary, using the keys found in NSAttributedString.h.
 */


