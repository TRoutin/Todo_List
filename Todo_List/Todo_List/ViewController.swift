//
//  ViewController.swift
//  Todo_List
//
//  Created by Thomas Routin on 28/11/2023.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var myTableView: UITableView! // Tableau des tâches
    @IBOutlet weak var btnAdd: UIBarButtonItem! // Bouton d'ajout d'une tâche
    @IBOutlet weak var myNavigation: UINavigationItem! // Titre de la catégorie
    
    var myData: [MyData] = [] // Liste des tâches
    var myCategory: Category? // Catégorie
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.myNavigation.title = myCategory?.nom // Initialisation du titre de la catégorie
        self.myData = self.myData.sorted(by: { $0.dateRendu < $1.dateRendu}) // Tri des tâches par date de rendu
        
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myData.count // Retourne le nombre de tâches
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell // Récupération de la cellule
        
        cell.myNom.text = myData[indexPath.row].nom // Initialisation du nom de la tâche
        cell.myDate.text = myData[indexPath.row].convertShortDate() // Initialisation de la date de rendu de la tâche
        cell.myCheck.isOn = myData[indexPath.row].isCheck // Initialisation de l'état de la tâche
        cell.myCheck.tag = indexPath.row // Initialisation du tag de la cellule
        return cell // Retourne la cellule
    }
    
}
