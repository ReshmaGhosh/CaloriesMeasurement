//
//  AddFoodView.swift
//  CaloriesMeasurement
//
//  Created by Reshma Ghosh on 2022-12-19.
//

import SwiftUI

struct AddFoodView: View {
    
        @Environment (\.managedObjectContext) var managedObjContext
        @Environment(\.dismiss) var dismiss
        
        @State private var name = ""
        @State private var calories: Double = 0
        
        var body: some View {
            Form {
                Section {
                    TextField("Food Name", text: $name)
                    
                    VStack{
                        Text("Calories: \(Int(calories))")
                        Slider(value: $calories, in: 0...1000, step: 10)
                    }
                    .padding()
                    
                    HStack{
                        Spacer()
                        
                        Button {
                            DataController().addFood(name: name, calories: calories, context: managedObjContext)
                            dismiss()
                        } label: {
                            Text("Submit")
                                .fontWeight(.medium)
                                .foregroundColor(Color.green)
                                .font(.title2)
                            
                                .frame(width: 150.0, height: 50.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.123, brightness: 0.949)/*@END_MENU_TOKEN@*/)
                                .cornerRadius(20)
                        }
                    
                        Spacer()
                    }
                }
            }
        }
    }


struct AddFoodView_Previews: PreviewProvider {
    static var previews: some View {
        AddFoodView()
    }
}
