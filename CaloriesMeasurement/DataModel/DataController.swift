//
//  DataController.swift
//  CaloriesMeasurement
//
//  Created by Reshma Ghosh on 2022-12-19.
//

import Foundation
import CoreData

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "FoodModel")
    
    init(){
        container.loadPersistentStores { desc, error in
            if let error = error {
                print("Failed to load data \(error.localizedDescription)")
            }
        }
    }
    // Save data
    func save(context: NSManagedObjectContext) {
        do{
            try context.save()
            print("Date saved !!!")
        } catch {
            print("could not save")
        }
    }
    func addFood(name: String, calories: Double, context: NSManagedObjectContext){
        let food = Food(context: context)
        food.id = UUID()
        food.date = Date()
        food.name = name
        food.calories = calories
        
        save(context: context)
    }
    func editFood(food: Food, name: String, calories: Double, context: NSManagedObjectContext){
        food.date = Date()
        food.name = name
        food.calories = calories
        
        save(context: context)
    }
}
