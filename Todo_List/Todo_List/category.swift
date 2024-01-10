//
//  category.swift
//  Todo_List
//
//  Created by Thomas Routin on 10/01/2024.
//

import Foundation


class Category {
    var nom: String // Nom de la catégorie
    var myData: [MyData] // Liste des tâches de la catégorie
    
    init(_nom: String) {
        self.nom = _nom
        self.myData = []
    }
}
