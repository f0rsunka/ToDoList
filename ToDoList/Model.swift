//
//  Model.swift
//  ToDoList
//
//  Created by Cantor Vernius on 8/17/20.
//  Copyright © 2020 Utochkina Margarita. All rights reserved.
//

import Foundation

var ToDoList: [[String: Any]] {
    set {
        UserDefaults.standard.set(newValue, forKey: "ToDoDataKey")
        UserDefaults.standard.synchronize()
    }
    get {
        if let array = UserDefaults.standard.array(forKey: "ToDoDataKey") as? [[String : Any]]
        {
            return array
        } else {
            return []
        }
    }
}

func addItem(nameItem: String, IsCompleted : Bool = false) {
    ToDoList.append(["Name" : nameItem, "IsCompleted" : false ])
}

func removeItem(at index: Int) {
    ToDoList.remove(at: index)
}

func changeState(at item: Int) -> Bool {
    ToDoList[item]["IsCompleted"] = !(ToDoList[item]["IsCompleted"] as! Bool)
    return ToDoList[item]["IsCompleted"] as! Bool
}
