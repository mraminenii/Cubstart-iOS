//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable {
    let imageName: String
    let itemName: String
    let quantity: Int
    
    init (imageName: String, itemName: String, quantity: Int) {
        self.imageName = imageName
        self.itemName = itemName
        self.quantity = quantity
    }
}

struct ContentView: View {
    
    var listFruits = [
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apples", quantity: 4),
        Items(imageName: "eggs", itemName: "Eggs", quantity: 12)
    ]
    var listVeggies = [
        Items(imageName: "carrot", itemName: "Carrot", quantity: 3),
        Items(imageName: "broccoli", itemName: "Broccoli", quantity: 4),
        Items(imageName: "cabbage", itemName: "Cabbage", quantity: 12)
    ]
    var listProteins = [
        Items(imageName: "chicken", itemName: "Chicken", quantity: 3),
    ]
    
    var body: some View {
        NavigationView {
            
            List {
                Section(header: Text("Fruits")) {
                    ForEach(listFruits) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                Section(header: Text("Vegetables")) {
                    ForEach(listVeggies) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                Section(header: Text("Proteins")) {
                    ForEach(listProteins) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
            }.navigationTitle("Shopping List")

        }
    }
}
