//
//  ContentView.swift
//  ChangeIcon
//
//  Created by panjianting on 2020/10/7.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        if (UIApplication.shared.supportsAlternateIcons){
            Text("You can alternate icon")
                .padding()
        }else{
            Text("You can't alternate icon")
                .padding()
        }
        
        Button("Change icon") {
            if UIApplication.shared.supportsAlternateIcons {
                if let alternateIconName = UIApplication.shared.alternateIconName{
                    print("current icon is \(alternateIconName), change to primary icon")
                    UIApplication.shared.setAlternateIconName(nil, completionHandler: nil);
                }else{
                    print("currrnt icon is primary icon, change to alternative icon")
                    UIApplication.shared.setAlternateIconName("icon2") { error in
                        if let error = error{
                            print(error.localizedDescription)
                        }else{
                            print("done")
                        }
                    }
                }
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
