//
//  SafariVC.swift
//  SafariVC
//
//  Created by Nafisur Ahmed on 01/04/19.
//  Copyright © 2019 Nafisur Ahmed. All rights reserved.
//

import UIKit
import SafariServices

class SafariVC: UIViewController {

    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .darkGray
        setupButton()
    }
    

    func displaySafariVC(for url: String) {
        
        guard let url = URL(string: url) else {
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }
    
    func setupButton() {
        
        nextButton.setTitle("Open Safari", for: .normal)
        nextButton.backgroundColor = .white
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        view.addSubview(nextButton)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        nextButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
   @objc func nextButtonTapped() {
    
    let url = "https://github.com/nafisur"
        displaySafariVC(for: url)
    }
}
