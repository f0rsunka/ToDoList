//
//  Model.swift
//  ToDoList
//
//  Created by Cantor Vernius on 8/17/20.
//  Copyright © 2020 Utochkina Margarita. All rights reserved.
//

import Foundation

var ToDoList: [[String: Any]] = [["Name" : "Написать приложение", "IsCompleted" : true], ["Name" : "Отправить резюме", "IsCompleted" : false]]

func addItem(nameItem: String, IsCompleted : Bool = false) {
    ToDoList.append(["Name" : nameItem, "IsCompleted" : false ])
    saveData()
}

func removeItem(at index: Int) {
    ToDoList.remove(at: index)
    saveData() 
}

func changeState(at item: Int) -> Bool {
    ToDoList[item]["IsCompleted"] = !(ToDoList[item]["IsCompleted"] as! Bool)
    saveData()
    return ToDoList[item]["IsCompleted"] as! Bool
}

func saveData() {
    
}

func loadData() {
    
}
