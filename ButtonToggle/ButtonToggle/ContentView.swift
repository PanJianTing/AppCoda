//
//  ContentView.swift
//  ButtonToggle
//
//  Created by panjianting on 2020/9/30.
//

import SwiftUI

struct ContentView: View {
    
    @State var airplaneMode = true;
    
    var body: some View {
        Toggle(isOn: $airplaneMode, label: {
            Image(systemName: "airplane")
            Text("Airplane Mode")
        })
        .padding()
        .toggleStyle(CheckboxStyle());
    }
}



//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
