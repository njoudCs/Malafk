//
//  DataController.swift
//  Malafk
//
//  Created by Njoud saud Al-Najem on 17/06/1444 AH.
//


import Foundation
import CoreData

class DataController: ObservableObject {
    // Responsible for preparing a model
    let container = NSPersistentContainer(name: "MalafkModel")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Failed to load data in DataController \(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Data saved successfully. WUHU!!!")
        } catch {
            // Handle errors in our database
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
    
    func addata(name: String, age: String,chronicMedicalConditions : String, medicationName :String ,doses : String , schedules : String, phone1 : String,phone2 : String , context: NSManagedObjectContext) {
        let card = Malafk(context: context)
     //   card.id = UUID()
 
        card.name = name
    
        card.age = age
        card.chronicMedicalConditions = chronicMedicalConditions
        card.medicationName = medicationName
        card.doses = doses
        card.schedules = schedules
        card.phone1 = phone1
        card.phone2 = phone1
  

        
        save(context: context)
    }
    
    func Main(card: Malafk, name: String, age: String,chronicMedicalConditions : String, medicationName :String ,doses : String , schedules : String , phone1 : String,phone2 : String, context: NSManagedObjectContext) {
        card.name = name
        card.age=age
        card.medicationName = medicationName
        card.doses = doses
        card.schedules = schedules
        card.phone1=phone1
        card.phone2 = phone2
        
        save(context: context)
    }
    
    
}
