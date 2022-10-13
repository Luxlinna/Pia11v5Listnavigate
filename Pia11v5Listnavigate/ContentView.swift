//
//  ContentView.swift
//  Pia11v5Listnavigate
//
//  Created by Linna Lux on 2022-10-13.
//

import SwiftUI

struct ContentView: View {
    
    @State var todotext = ["Handla", "Diska", "Tvätta", "Gråva"]
    
//    @State var todotext : [String] = []
    @State var addthingtodo = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Hello, world!")
                Text("Mer text")
                    .navigationTitle("Velkommen")
                
                NavigationLink(destination: ReadmoreView()) {
                    Text("Klicka här!!")
                   // Text("Ny Sida")
                   // Text("Mer Information")
                }
                HStack {
                    TextField("Vad göra?", text: $addthingtodo)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    Button("Lägg till") {
                        todotext.append(addthingtodo)
                            
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.purple/*@END_MENU_TOKEN@*/)
                    .cornerRadius(25)
                }
                
                
//                List{
//                    Text("En rad")
//                        .font(.headline)
//                    Text("En annan rad")
//                        .font(.headline)
//                    Text("Mera rad")
//                        .font(.headline)
//                    VStack{
//                        Text("Hej")
//                        Text("Tjena")
//                    }
                    
//                    NavigationLink(destination: ReadmoreView()) {
//                        Text("Klicka på en rad")
//                    }
                    
//                    List(todotext, id:\.self ) {
//                        todo in Text("En rad")
//                    }
                    
                List(todotext, id:\.self) {
                    banan in
                    
                    NavigationLink(destination: TodoinfoView(stufftodotext: banan), label: {
                         TodoRowView(thebigtext: banan)
                        
                        VStack {
                            Text("Detta ska göras:")
                            Text(banan)
                        }
                    })
                   
                    
                }
                //                }
                .background(.pink)
                .scrollContentBackground(.hidden)
//                .listStyle(.insetGrouped)
                .listStyle(.plain)
            }
           
        }
        
        .padding()
        
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
