//
//  AddViewController.swift
//  Todo_List
//
//  Created by Thomas Routin on 10/01/2024.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var addNom: UITextField! // Champs de saisie du nom de la tâche
    @IBOutlet weak var addDesc: UITextField! // Champs de saisie de la description de la tâche
    @IBOutlet weak var addDate: UIDatePicker! // Champs de saisie de la date de la tâche
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNom.delegate = self
        addDesc.delegate = self
        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
