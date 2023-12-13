//
//  ViewController.swift
//  Todo_List
//
//  Created by Thomas Routin on 28/11/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func nomTextField(_ sender: Any) {
    }
    
    @IBAction func descriptionTextField(_ sender: Any) {
    }
    @IBAction func createTodo(_ sender: UIButton) {
        let nom:(Any) = nomTextField
        let description:(Any) = descriptionTextField
        //let task = ToDo(nom: nom, description: nom)
    }
}

