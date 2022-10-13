//
//  TodoinfoView.swift
//  Pia11v5Listnavigate
//
//  Created by Linna Lux on 2022-10-13.
//

import SwiftUI


struct TodoinfoView: View {
    
    @State var stufftodotext = ""
    
    var body: some View {
        VStack{
            Text("Datta som ska göra")
            Text(stufftodotext)
                .font(.largeTitle)
            
            Button ("Radera"){
                
            }
        }
        
    }
}

struct TodoinfoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoinfoView()
    }
}
