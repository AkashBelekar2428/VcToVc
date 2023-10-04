//
//  ContentView.swift
//  VCTOVC
//
//  Created by Akash Belekar on 03/10/23.
//

import SwiftUI

struct SecondView: View{
    @Environment(\.dismiss) var dismiss
    let name:String
    
    var body: some View{
      
        Button("Dismiss"){
            dismiss()
        }
    }
}



struct ContentView: View {
    @State private var showingView = false
    
    var body: some View {
        Button("Show View") {
            showingView.toggle()
        }
        .sheet(isPresented: $showingView) {
            SecondView(name: "Hey")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
