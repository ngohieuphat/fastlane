//
//  CartManager.swift
//  e-commerce
//
//  Created by Ngo Hieu Phat on 14/07/2023.
//

import Foundation

class CartManager: ObservableObject{
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int  = 0

    func addToCart(product: Product){
        products.append(product)
        total += product.price
    }
    func removeFromCart(product: Product){
        products = products.filter{$0.id != product.id}
        total -= product.price
    }
}
