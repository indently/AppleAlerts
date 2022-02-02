//
//  ContentView.swift
//  TestFloat
//
//  Created by Federico on 02/02/2022.
//

import SwiftUI
import SPAlert

struct ContentView: View {
    @State var showAlert = false
    @State var showAlert2 = false
    
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Show Alert") {
                showAlert.toggle()
            }
            .SPAlert(
                isPresent: $showAlert,
                message: "Learning is easy!",
                duration: 1.0)
            
            Button("Show Alert 2") {
                showAlert2.toggle()
            }
            .SPAlert(
                isPresent: $showAlert2,
                title: "Code Palace",
                message: "This tutorial has been completed",
                duration: 2.0,
                dismissOnTap: false,
                preset: .done,
                haptic: .success,
                layout: .init(),
                completion: {
                    print("This is a completion log.")
                    showAlert.toggle()
                })
            .tint(.orange)
        }
        
        // For custom image add (preset) : .custom(UIImage(systemName: "leaf")!)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
