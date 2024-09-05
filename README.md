# paralaxHorizontalView
ParalaxHorizontalView - SwiftUI

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
