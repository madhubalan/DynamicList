//
//  ContentView.swift
//  TableViewSwiftUI
//
//  Created by Madhu on 10/06/19.
//  Copyright © 2019 test. All rights reserved.
//

import SwiftUI


struct book: Identifiable {
    let id = UUID() //list need unique identifier
    let name: String
    let author:String
}
struct ContentView : View {
    let list = [book(name : "Madame Bovary", author : "Gustave Flaubert"),
    book(name :"War and Peace", author : "Leo Tolstoy."),
    book(name :"The Adventures of Huckleberry Finn", author : "Mark Twain."),
    book(name :"Middlemarch", author : "George Eliot."),
    book(name :"Moby-Dick", author : "Herman Melville."),
    book(name :"Great Expectations", author : "Charles Dickens."),
    book(name :"Crime and Punishment", author : "Fyodor Dostoevsky."),
    book(name :"Emma", author : "Jane Austen.")]
    
    
    var body: some View {
        VStack {
        Text("Hello SwiftUI").font(.title).color(.red) // font and color modifiers
        List(list) { item in
            HStack{Text("\(item.name) by "); Text("\(item.author)").color(.gray)}
            }
        
//        List{
//            Text("Madame Bovary by Gustave Flaubert")
//            Text("War and Peace by Leo Tolstoy")
        }
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
