//
//  ContentView.swift
//  SwiftUITutorialBeta
//
//  Created by Jacky Teng on 2023/3/26.
//

import SwiftUI


struct ContentView: View {
    
    
    
    
    var body: some View {
      
            NavigationView{
                ScrollView{
                ZStack{
                    VStack{
                        Spacer()
                        Image("Americano")
                            .resizable()
                            .frame(width: 350,height: 500,alignment: .center)
                            .clipShape(Circle())
                            .padding(20)
                        Spacer()
                        Text("$5.00")
                            .font(.callout)
                            .fontWeight(.semibold)
                        Spacer()
                        NavigationLink (destination: Americano(), label: {Text("Buy Now")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: 180,maxHeight: 60)
                                .background(.blue)
                            .cornerRadius(20)})
                        
                        
                        Spacer()
                        Text("Would you want to buy from us?")
                        Spacer()
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
