//
//  ViewController.swift
//  Counter
//
//  Created by Student on 06.03.2021.
//

import UIKit

class ViewController: UIViewController {
    private var label = UILabel()
    private var tapButton = UIButton()
    private var resetButton = UIButton()
    private var counter = 0{
        didSet{
            label.text=counter.description
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Counter"
        resetButton.setTitle("Reset", for: .normal)
        resetButton.addTarget(self, action: #selector(resettapAction), for: .touchUpInside)
        resetButton.setTitleColor(.red, for: .normal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: resetButton)
        view.backgroundColor = .purple
        view.addSubview(label)
        view.addSubview(tapButton)
        label.translatesAutoresizingMaskIntoConstraints = false
        tapButton.translatesAutoresizingMaskIntoConstraints = false
        label.text = counter.description
        label.textColor = .orange
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.medium)
        tapButton.backgroundColor = .white
        tapButton.setTitle("TAP", for: .normal)
        tapButton.setTitleColor(.orange, for: .normal)
        tapButton.contentEdgeInsets=UIEdgeInsets(top: 10, left: 30, bottom: 10, right: 30)
        tapButton.layer.cornerRadius=10
        tapButton.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tapButton.centerYAnchor.constraint(equalTo: label.centerYAnchor,constant: 50),
            tapButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    @objc func tapAction(){
        counter+=1
        
    }
    @objc func resettapAction(){
        counter=0
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

}

