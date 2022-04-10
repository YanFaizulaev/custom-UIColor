//
//  ViewController.swift
//  UIColor
//
//  Created by Bandit on 10.04.2022.

//Для подбора цвета рекомендую вот это сайт  https://csscolor.ru/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .mainAppOrange
        view.addSubview(stackView)
        
        constraintsStackView()
        constraintsLabel()
    }

     private lazy var stackView: UIStackView = {
       let stackView = UIStackView()
         stackView.backgroundColor = Constans.Color.costomText
         stackView.addSubview(labelOne)
        return stackView
    }()
    
    private lazy var labelOne: UILabel = {
      let label = UILabel()
        label.backgroundColor = .red
       return label
   }()
    
    private func constraintsStackView () {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
    }
    
    private func constraintsLabel () {
        labelOne.translatesAutoresizingMaskIntoConstraints = false
        labelOne.leftAnchor.constraint(equalTo: stackView.leftAnchor, constant: 20).isActive = true
        labelOne.rightAnchor.constraint(equalTo: stackView.rightAnchor, constant: -20).isActive = true
        labelOne.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 20).isActive = true
        labelOne.bottomAnchor.constraint(equalTo: stackView.bottomAnchor, constant: -20).isActive = true
    }

}

