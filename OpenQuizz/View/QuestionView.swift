//
//  QuestionView.swift
//  OpenQuizz
//
//  Created by Morganne Julian on 11/08/2020.
//  Copyright © 2020 Morgane Julian. All rights reserved.
//

import UIKit

class QuestionView: UIView {

    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!
    
    enum Style {
        case correct, incorrect, standard
    }
    var style: Style = .standard {
        didSet {
            setStyle(style: style)
            
        }
    }
    
    private func setStyle(style: Style) {
        switch style {
        case .correct:
            icon.isHidden = false
            backgroundColor = #colorLiteral(red: 0.785223186, green: 0.9270242453, blue: 0.6270345449, alpha: 1)
            icon.image = UIImage(named: "Icon Correct")
        case .incorrect:
            icon.isHidden = false
            icon.image = UIImage(named: "Icon Error")
            backgroundColor = #colorLiteral(red: 0.9511150718, green: 0.5284335613, blue: 0.579690814, alpha: 1)
        case .standard:
            icon.isHidden = true
            backgroundColor = #colorLiteral(red: 0.7497290969, green: 0.7683880329, blue: 0.790158689, alpha: 1)
        }
    }
    var title = "" {
           didSet {
               label.text = title
           }
       }
    }
    
   
    
    


