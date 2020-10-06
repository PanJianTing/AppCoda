//
//  ContentView.swift
//  TabView
//
//  Created by panjianting on 2020/10/5.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        
        TabView(selection: $selection){
            NavigationView{
                List(1...10, id: \.self){ index in
                    NavigationLink(destination: Text("Item #\(index)"),
                                   label: {
                                    Text("Item #\(index)")
                                        .font(.system(size: 20, weight: .bold, design: .rounded))
                                   })

                }
                .navigationTitle("Tabview Demo")
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            .tag(0)
            Text("Bookmark Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "bookmark.circle.fill")
                    Text("Bookmark")
                }
                .tag(1)
            Text("Video Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "video.circle.fill")
                    Text("Video")
                }
                .tag(2)
            Text("Profile Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
                .tag(3)
        }
        .onAppear(){
            UITabBar.appearance().barTintColor = .white
        }
        .accentColor(.red)
        
        
        // When Push, Hidden the tabview
//        NavigationView{
//            TabView(selection: $selection){
//                List(1...10, id: \.self){ index in
//                    NavigationLink(destination: Text("Item #\(index)"),
//                                   label: {
//                                    Text("Item #\(index)")
//                                        .font(.system(size: 20, weight: .bold, design: .rounded))
//                                   })
//
//                }
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//                Text("Bookmark Tab")
//                    .font(.system(size: 30, weight: .bold, design: .rounded))
//                    .tabItem {
//                        Image(systemName: "bookmark.circle.fill")
//                        Text("Bookmark")
//                    }
//                    .tag(1)
//                Text("Video Tab")
//                    .font(.system(size: 30, weight: .bold, design: .rounded))
//                    .tabItem {
//                        Image(systemName: "video.circle.fill")
//                        Text("Video")
//                    }
//                    .tag(2)
//                Text("Profile Tab")
//                    .font(.system(size: 30, weight: .bold, design: .rounded))
//                    .tabItem {
//                        Image(systemName: "person.crop.circle")
//                        Text("Profile")
//                    }
//                    .tag(3)
//            }
//            .onAppear(){
//                UITabBar.appearance().barTintColor = .white
//            }
//            .accentColor(.red)
//            .navigationTitle("Tabview Demo")
//        }
        
        // Switching Between Tabs Programmatically
//        ZStack(alignment: .topTrailing){
//            TabView(selection: $selection){
//                Text("Home Tab")
//                    .font(.system(size: 30, weight: .bold, design: .rounded))
//                    .tabItem {
//                        Image(systemName: "house.fill")
//                        Text("Home")
//                    }
//                    .tag(0)
//                Text("Bookmark Tab")
//                    .font(.system(size: 30, weight: .bold, design: .rounded))
//                    .tabItem {
//                        Image(systemName: "bookmark.circle.fill")
//                        Text("Bookmark")
//                    }
//                    .tag(1)
//                Text("Video Tab")
//                    .font(.system(size: 30, weight: .bold, design: .rounded))
//                    .tabItem {
//                        Image(systemName: "video.circle.fill")
//                        Text("Video")
//                    }
//                    .tag(2)
//                Text("Profile Tab")
//                    .font(.system(size: 30, weight: .bold, design: .rounded))
//                    .tabItem {
//                        Image(systemName: "person.crop.circle")
//                        Text("Profile")
//                    }
//                    .tag(3)
//            }
//            .onAppear(){
//                UITabBar.appearance().barTintColor = .white
//            }
//            .accentColor(.red)
//
//            Button(action: {
//                selection = (selection + 1) % 4
//            }, label: {
//                Text("Next")
//                    .font(.system(.headline, design: .rounded))
//                    .padding()
//                    .foregroundColor(.white)
//                    .background(Color.red)
//                    .cornerRadius(10.0)
//                    .padding()
//            })
//
//        }
        
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
