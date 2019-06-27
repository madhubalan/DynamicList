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
        NavigationView{
                List(list) { item in
                    NavigationButton(destination:(Text(item.name))){
                        VStack(alignment: .leading){Text("\(item.name) by "); Text("\(item.author)").color(.gray)}
                    }
                }
            
             .navigationBarItem(title: Text("Books"))
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
