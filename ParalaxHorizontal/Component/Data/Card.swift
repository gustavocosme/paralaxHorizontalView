//
//  Card.swift
//  ParalaxHorizontal
//
//  Created by Gustavo Cosme on 05/09/24.
//

import Foundation

struct Card: Identifiable, Hashable {
    var id: UUID = .init()
    var title: String
    var subTitle: String
    var image: String
}

extension Card {
    
    static func mock() -> [Card] {
        [.init(title: "Gustavo",
               subTitle: "Descrição",
               image: "photo1"),
         .init(title: "New York",
               subTitle: "Descrição",
               image: "photo2"),
         .init(title:"London",
               subTitle:"Descrição",
               image: "photo3"),
         .init(title:"Alaska",
               subTitle:"Descrição",
               image: "photo4"),
         .init(title:"Paris",
               subTitle:"Descrição",
               image: "photo5"),
         .init(title: "Gustavo",
               subTitle: "Descrição",
               image: "photo6"),
         .init(title: "New York",
               subTitle: "Descrição",
               image: "photo7"),
         .init(title:"London",
               subTitle:"Descrição",
               image: "photo8"),
         .init(title:"Alaska",
               subTitle:"USA",
               image: "photo9"),
         .init(title:"Paris",
               subTitle:"Descrição",
               image: "photo10")]
    }
    
}
