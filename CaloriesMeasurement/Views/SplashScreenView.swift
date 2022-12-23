//
//  SplashScreenView.swift
//  CaloriesMeasurement
//
//  Created by Reshma Ghosh on 2022-12-19.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    
    var body: some View {
        
        if isActive  {
           ContentView()
        } else {
            VStack{
                Image("calorie1")
                    .resizable()
                    //.aspectRatio(contentMode: .fill)
                    .frame(width: 430,height: 910)
                    .edgesIgnoringSafeArea(.all)
                
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
