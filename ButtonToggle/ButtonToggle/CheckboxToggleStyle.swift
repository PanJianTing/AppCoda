//
//  CheckboxToggleStyle.swift
//  ButtonToggle
//
//  Created by panjianting on 2020/9/30.
//

import Foundation
import SwiftUI


struct CheckboxStyle : ToggleStyle {
    func makeBody(configuration : Self.Configuration) -> some View {
        return HStack{
            configuration.label
            
            Spacer()
            
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? Color.purple : Color.gray)
                .font(.system(size: 20, weight: .bold, design: .default))
                .onTapGesture{
                    configuration.isOn.toggle();
                }
        }
    }
}

