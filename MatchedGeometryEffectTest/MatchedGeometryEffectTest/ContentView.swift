//
//  ContentView.swift
//  MatchedGeometryEffectTest
//
//  Created by panjianting on 2020/9/29.
//

import SwiftUI

struct ContentView: View {
    
    @State private var expand = false;
    @Namespace private var shapeTransition;
    
    @State private var swap = false;
    @Namespace private var dotTransition;
    
    var body: some View {
        
        // Example #0
//        if expand {
//            // final state
//            Circle()
//                .fill(Color.green)
//                .matchedGeometryEffect(id: "circle", in: shapeTransition)
//                .frame(width: 300, height: 300)
//                .offset(y: -200)
//                .animation(.default)
//                .onTapGesture {
//                    self.expand.toggle()
//                }
//
//        } else {
//            // start state
//            Circle()
//                .fill(Color.green)
//                .matchedGeometryEffect(id: "circle", in: shapeTransition)
//                .frame(width: 150, height: 150)
//                .offset(y: 0)
//                .animation(.default)
//                .onTapGesture {
//                    self.expand.toggle()
//                }
//
//        }
        
        // Example #1
//        VStack {
//            if expand {
//
//                // Rounded Rectangle
//                Spacer()
//
//                RoundedRectangle(cornerRadius: 50.0)
//                    .matchedGeometryEffect(id: "circle", in: shapeTransition)
//                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 300)
//                    .padding()
//                    .foregroundColor(Color(.systemGreen))
//                    .animation(.easeIn)
//                    .onTapGesture {
//                        expand.toggle()
//                    }
//
//            } else {
//
//                // Circle
//                RoundedRectangle(cornerRadius: 50.0)
//                    .matchedGeometryEffect(id: "circle", in: shapeTransition)
//                    .frame(width: 100, height: 100)
//                    .foregroundColor(Color(.systemOrange))
//                    .animation(.easeIn)
//                    .onTapGesture {
//                        expand.toggle()
//                    }
//
//                Spacer()
//            }
//        }
        
        
        // Exercise #1
//        VStack{
//            if expand{
//                // Rounded Rectangle
//
//
//                RoundedRectangle(cornerRadius: 10.0)
//                    .matchedGeometryEffect(id: "Circle", in: shapeTransition)
//                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
////                    .padding()
//                    .edgesIgnoringSafeArea(.all)
//                    .foregroundColor(Color(.systemGreen))
//                    .animation(.easeIn)
//                    .onTapGesture {
//                        expand.toggle()
//                    }
//
////                Spacer()
//
//            }else{
//                // Circle
//                Spacer();
//
//                RoundedRectangle(cornerRadius: 50.0)
//                    .matchedGeometryEffect(id: "Circle", in: shapeTransition)
//                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                    .foregroundColor(Color(.systemOrange))
//                    .animation(.easeIn)
//                    .onTapGesture {
//                        expand.toggle()
//                    }
//
//
//            }
//        }
        
        // Example #2
//        if swap {
//            // After swap
//            // Green dot on left, Orange dot on the right
//            HStack{
//                Circle()
//                    .fill(Color.green)
//                    .frame(width: 30, height: 30)
//                    .matchedGeometryEffect(id: "greenCircle", in: dotTransition)
//
//                Spacer()
//
//                Circle()
//                    .fill(Color.orange)
//                    .frame(width: 30, height: 30, alignment: .center)
//                    .matchedGeometryEffect(id: "orangeCircle", in: dotTransition)
//
//            }
//            .frame(width: 100)
//            .animation(.linear)
//            .onTapGesture {
//                swap.toggle()
//            }
//        }else{
//
//            // Start state
//            // Orange dot on the left, Green dot on the right
//
//            HStack{
//                Circle()
//                    .fill(Color.orange)
//                    .frame(width: 30, height: 30)
//                    .matchedGeometryEffect(id: "orangeCircle", in: dotTransition)
//
//                Spacer()
//
//                Circle()
//                    .fill(Color.green)
//                    .frame(width: 30, height: 30, alignment: .center)
//                    .matchedGeometryEffect(id: "greenCircle", in: dotTransition)
//
//            }
//            .frame(width: 100)
//            .animation(.linear)
//            .onTapGesture {
//                swap.toggle()
//            }
//        }
        
        if swap {
            // After swap
            // Green dot on left, Orange dot on the right
            HStack{
                Image("photo1")
                    .resizable()
                    .matchedGeometryEffect(id: "photo1", in: dotTransition)
                    .frame(width: 200, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .scaledToFit()
                    .animation(.easeInOut)
//                    .clipped()

                Spacer()

                Image("photo2")
                    .resizable()
                    .matchedGeometryEffect(id: "photo2", in: dotTransition)
                    .frame(width: 200, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .scaledToFit()
                    .animation(.easeInOut)
//                    .clipped()

            }
            .frame(width: 100)
            .animation(.linear)
            .onTapGesture {
                swap.toggle()
            }
        }else{

            // Start state
            // Orange dot on the left, Green dot on the right

            HStack{
                Image("photo2")
                    .resizable()
                    .matchedGeometryEffect(id: "photo2", in: dotTransition)
                    .frame(width: 200, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .scaledToFit()
                    .animation(.easeInOut)
//                    .clipped()

                Spacer()

                Image("photo1")
                    .resizable()
                    .matchedGeometryEffect(id: "photo1", in: dotTransition)
                    .frame(width: 200, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .scaledToFit()
                    .animation(.easeInOut)
//                    .clipped()

            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .padding()
            .animation(.easeInOut)
            .onTapGesture {
                swap.toggle()
            }
        }
        
        
        
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
