//
//  MenuView.swift
//  MenuApp
//
//  Created by Ricardo Camarena on 06/04/23.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems: [MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        VStack {
            Text("The Menu App")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding()
            List(menuItems) { item in
                MenuListRow(item: item)
            }
            .listStyle(.plain)
            .onAppear {
                menuItems = dataService.getData()
        }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
