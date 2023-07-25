//
//  SearchView.swift
//  e-commerce
//
//  Created by Ngo Hieu Phat on 14/07/2023.
//

import SwiftUI

struct SearchView: View {
    @State private var search:String = ""
    
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                TextField("Search for Furniture",text: $search)
                    .padding()
            }
            .background(Color("kSecondary"))
            .cornerRadius(12)
            Image(systemName: "camera")
                .padding()
                .foregroundColor(.white)
                .background(Color("kPrimary"))
                .cornerRadius(12)
        }.padding(.horizontal)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
