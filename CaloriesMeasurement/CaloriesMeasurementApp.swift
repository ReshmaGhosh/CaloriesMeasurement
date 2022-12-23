//
//  CaloriesMeasurementApp.swift
//  CaloriesMeasurement
//
//  Created by Reshma Ghosh on 2022-12-19.
//

import SwiftUI

@main
struct CaloriesMeasurementApp: App {
    
    @StateObject var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
