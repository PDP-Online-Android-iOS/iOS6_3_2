//
//  ContentView.swift
//  Task 2
//
//  Created by Ogabek Matyakubov on 01/12/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var data: Data
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Email", text: $data.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(height: 40)
                
                TextField("Password", text: $data.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                NavigationLink (
                    destination: SecondScreen(),
                    label: {
                        Text("Open Second Screen").padding()
                    }
                )
            }
            .padding()
            .navigationBarTitle("Environment Object", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Data())
    }
}
