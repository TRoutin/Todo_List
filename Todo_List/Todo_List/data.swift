//
//  data.swift
//  Todo_List
//
//  Created by Thomas Routin on 10/01/2024.
//

import Foundation


class MyData {
    var nom: String // Nom de la tâche
    var desc: String // Description de la tâche
    var isCheck: Bool // Booléen permettant de savoir si la tâche est terminée ou non
    var dateRendu: Date // Date de rendu de la tâche
    var category: Category // Catégorie de la tâche
    

    init(_nom: String, _desc: String, _date: Date, _category: Category) {
        self.nom = _nom
        self.desc = _desc
        self.isCheck = false
        self.dateRendu = _date
        self.category = _category
        self.category.myData.append(self) // Ajout de la tâche à la liste des tâches de la catégorie
    }
    

    func convertDate() -> String{
        let dateFormater = DateFormatter() // Création d'un objet de type DateFormatter
        dateFormater.dateFormat = "EEEE dd MMMM yyyy" // Format de la date
        dateFormater.locale = Locale(identifier: "FR-fr") // Langue de la date
        let dateFormat = dateFormater.string(from: self.dateRendu) // Conversion de la date
        return dateFormat // Retour de la date
    }
    

    func convertShortDate() -> String{
        let dateFormater = DateFormatter() // Création d'un objet de type DateFormatter
        dateFormater.dateFormat = "dd/MM/yyyy" // Format de la date
        dateFormater.locale = Locale(identifier: "FR-fr") // Langue de la date
        let dateFormat = dateFormater.string(from: self.dateRendu) // Conversion de la date
        return dateFormat // Retour de la date
    }
}
