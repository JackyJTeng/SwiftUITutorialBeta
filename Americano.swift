//
//  Americano.swift
//  candysmile
//
//  Created by Jacky Teng on 2023/1/21.
//

import SwiftUI



struct Americano: View {
    
    @State private var showAlert = false
    
    var body: some View {
        
        
        ScrollView(.horizontal,showsIndicators: false){
            VStack{
                Text("Choose a type of Americano")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .animation(.easeInOut)
                    .multilineTextAlignment(.center)
                
                HStack{
                    Image("Americano")
                        .resizable()
                        .frame(width: 100,height: 200,alignment: .center)
                        .clipShape(Circle())
                        .padding(20)
                    
                    Image("Americano")
                        .resizable()
                        .frame(width: 100,height: 200,alignment: .center)
                        .clipShape(Circle())
                        .padding(20)
                    Image("Americano")
                        .resizable()
                        .frame(width: 100,height: 200,alignment: .center)
                        .clipShape(Circle())
                        .padding(20)
                    Image("Americano")
                        .resizable()
                        .frame(width: 100,height: 200,alignment: .center)
                        .clipShape(Circle())
                        .padding(20)
                }
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        Spacer()
                        Text("$22")
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .animation(.easeInOut)
                            .multilineTextAlignment(.center)
                        Spacer()
                        Text("$25")
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .animation(.easeInOut)
                            .multilineTextAlignment(.center)
                        Spacer()
                        Text("$30")
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .animation(.easeInOut)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }
                    
                    
                }
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        Button("Buy") {
                            showAlert = true
                        }
                        .alert(isPresented: $showAlert )
                        {
                            Alert(title: Text("Are you sure you want an Americano?"),
                                  primaryButton: .cancel(),
                                  secondaryButton: .destructive(Text("Buy")){
                                print("Buy now")
                            }
                                
                            
                            )
                      
                        }
                    }
                }
            }
        }
    }
}

struct Americano_Previews: PreviewProvider {
    static var previews: some View {
        Americano()
    }
}
