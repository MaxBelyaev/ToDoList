//
//  Model.swift
//  ToDoList
//
//  Created by Максим Беляев on 20.11.2023.
//

import Foundation

var ToDoItems: [[String: Any]] = [
    ["Name": "Позвонить маме", "isCompleted": true],
    ["Name": "Дописать прилажение", "isCompleted": false],
    ["Name": "Побегать голым на морозе", "isCompleted": false]
]

func addItem(nameItem: String, isCompleted: Bool = false) {
    ToDoItems.append(["Name": nameItem, "isCompleted": isCompleted])
    saveData()
}

func removeItem(at index: Int) {
    ToDoItems.remove(at: index)
    saveData()
}

func changeState(at item: Int) -> Bool {
    ToDoItems[item]["isCompleted"] = !(ToDoItems[item]["isCompleted"] as! Bool)
    saveData()
    return ToDoItems[item]["isCompleted"] as! Bool
}

func saveData() {
    print("Данные сохранены")
}

func loadData() {
    
}
