//
//  Product.swift
//  e-commerce
//
//  Created by Ngo Hieu Phat on 13/07/2023.
//

import Foundation

struct Product : Identifiable{
    var id =  UUID()
    var name: String
    var image: String
    var description: String
    var supple: String
    var price: Int
    var width: String
    var height: String
    var diameter: String

}

var productList = [
    Product( name: "IPhone", image: "1", description: "abcbasdasdasdasdasdasq", supple: "IKEA", price: 350 , width:"200cm", height:"135cm" ,diameter: "105cm"),
    Product( name: "Mac", image: "2", description: "weqweqwerqrqwtqwrqwrqw", supple: "IKEA", price: 350, width:"200cm", height:"135cm" ,diameter: "105cm") ,
    
    Product( name: "AirPod", image: "3", description: "qweasfavzxvqewqwrqtqt", supple: "IKEA", price: 350, width:"200cm", height:"135cm" ,diameter: "105cm"),
    Product( name: "Ipad", image: "4", description: "qweqweqtqdxzxczxczx", supple: "IKEA", price: 350, width:"200cm", height:"135cm" ,diameter: "105cm"),
    Product( name: "AppWatch", image: "5", description: "qweqwrtqfxzcxczxvzvx", supple: "IKEA", price: 350, width:"200cm", height:"135cm" ,diameter: "105cm"),


]
 
