//
//  ContentView.swift
//  AsyncImage
//
//  Created by PanJianTing on 2021/7/22.
//

import SwiftUI

struct ContentView: View {
    
    private let url = "https://www.cce.csus.edu/sites/main/files/main-images/camera_lense_0.jpeg"
    
    var body: some View {
        AsyncImage(url: URL(string: url), transaction: Transaction(animation: .spring())) { phase in
            switch phase{
                case .empty:
                    Color.purple.opacity(0.1)
                case .success(let img):
                    img
                        .resizable()
                        .scaledToFill()
                        .transition(.slide)
                case .failure(_):
                    Image(systemName: "exclamationmark.icloud")
                        .resizable()
                        .scaledToFit()
                @unknown default:
                    Image(systemName: "exclamationmark.icloud")
            }
        }
        .frame(width: 300, height: 500)
        .cornerRadius(20)
//        AsyncImage(url: URL(string: url)) { image in
//            image
//                .resizable()
//                .scaledToFit()
//
//        }placeholder: {
//            Color.purple.opacity(0.1)
//        }
//        .frame(width: 300, height: 500)
//        .cornerRadius(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
