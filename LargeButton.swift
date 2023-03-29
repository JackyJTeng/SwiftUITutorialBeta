//
//  LargeButton.swift
//  candysmile
//
//  Created by Jacky Teng on 2023/1/3.
//

import SwiftUI

struct LargeButton: View {
    var body: some View {
        TabView{
            MainView()
                .tabItem{
                    Image("Homepic")
                        .resizable()
                        
                        
                    Text("Home")
                }
            ProfileView()
                .tabItem{
                    Image(systemName: "")
                    Text("Profile")
                }
        }
    }
}

struct LargeButton_Previews: PreviewProvider {
    static var previews: some View {
        LargeButton()
    }
}
