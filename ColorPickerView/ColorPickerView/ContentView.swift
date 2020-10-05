//
//  ContentView.swift
//  ColorPickerView
//
//  Created by panjianting on 2020/9/30.
//

import SwiftUI

struct ContentView: View {
    
    @State private var bgColor = Color.white;
    
    var body: some View {
        VStack{
            ColorPicker("Set the background color", selection: $bgColor)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor);
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
