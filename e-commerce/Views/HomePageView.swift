//
//  HomePageView.swift
//  e-commerce
//
//  Created by Ngo Hieu Phat on 14/07/2023.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
           NavigationView {
               VStack {
                   AppBar()
                   
                   ZStack(alignment: .top) {
                       Color.white
                           .edgesIgnoringSafeArea(.all)
                       
                       VStack {
                           SearchView()
                           
                           ImageSliderView()
                           
                           HStack {
                               Text("New Rivals")
                                   .font(.title2)
                                   .fontWeight(.medium)
                               Spacer()
                               Image(systemName: "circle.grid.2x2.fill")
                                   .foregroundColor(Color("kPrimary"))
                           }
                           .padding()
                           
                           ScrollView(.horizontal, showsIndicators: false) {
                               HStack(spacing: 10) {
                                   ForEach(productList, id: \.id) { product in
                                       NavigationLink{
                                           ProductDetailView(product: product)
                                       }label: {
                                           ProductCardView(product: product)
                                               .environmentObject(cartManager)
                                       }
                                   }
                               }
                               .padding(.horizontal)
                           }
                       }
                   }
               }
               .navigationBarHidden(true)
           }
       }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
            .environmentObject(CartManager())
    }
}

struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "location.north.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.trailing)
                Text("Shanghai, China")
                    .font(.title2)
                    .foregroundColor(.gray)
                Spacer()
                
                NavigationLink(destination: CartView().environmentObject(cartManager)) {
                    CartButtonView(numberOfProducts: cartManager.products.count)
                }
            }
            .padding(.horizontal)
            
            Text("Find the Most\nLuxurious")
                .font(.largeTitle)
                .bold()
            + Text(" Furniture")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color("kPrimary"))
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading) // Đảm bảo AppBar chiếm toàn bộ chiều rộng
        .background(Color.white) // Đặt màu nền cho AppBar
    }
}
