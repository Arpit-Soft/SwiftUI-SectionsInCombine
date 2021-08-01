//
//  ContentView.swift
//  SwiftUI-SectionsInCombine
//
//  Created by Arpit Dixit on 01/08/21.
//

import SwiftUI

struct ContentView: View {
    
    private var groceryCategories = GroceryCategory.all()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(groceryCategories, id: \.title) { gc in
                    Section(header: Text(gc.title)
                                .font(.title)
                                .padding([.top, .bottom])
                    ) {
                        ForEach(gc.groceryItems, id: \.title) { gi in
                            Text(gi.title)
                                .font(.body)
                        }
                    }
                }
            }
            .navigationBarTitle("Combined Sections")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
