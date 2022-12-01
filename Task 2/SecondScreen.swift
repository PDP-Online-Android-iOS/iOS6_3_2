//
//  SecondScreen.swift
//  Task 2
//
//  Created by Ogabek Matyakubov on 01/12/22.
//

import SwiftUI

struct SecondScreen: View {
    
    @EnvironmentObject var data: Data
    
    var body: some View {
        VStack {
            Text("Email: \(data.email)")
                .padding()
            Text("Password: \(data.password)")
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen().environmentObject(Data())
    }
}
