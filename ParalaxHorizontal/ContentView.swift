//
//  ContentView.swift
//  ParalaxHorizontal
//
//  Created by Gustavo Cosme on 05/09/24.
//

import SwiftUI
import Foundation

struct ContentView: View {
    
    var body: some View {
        ParalaxHorizontalView(cards: Card.mock())
    }
}

#Preview {
    ContentView()
}


