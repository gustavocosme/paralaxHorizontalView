//
//  ParalaxHorizontalView.swift
//  ParalaxHorizontal
//
//  Created by Gustavo Cosme on 05/09/24.
//

import SwiftUI

struct ParalaxHorizontalView: View {
    
    var cards: [Card] = []
    var viewHeight: CGFloat = 600
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                let size = geometry.size
                
                ScrollView(.horizontal) {
                    HStack(spacing: 4) {
                        ForEach(cards) { card in
                            GeometryReader { proxy in
                                let minX = min(proxy.frame(in: .scrollView).minX * 1.4, proxy.size.width * 1.4)
                                
                                Image(card.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .scaleEffect(1.25)
                                    .offset(x: -minX)
                                    .frame(width: proxy.size.width, height: proxy.size.height)
                                    .overlay(OverlayView(card: card))
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                    .shadow(color: .black.opacity(0.25), radius: 8, x: 5, y: 10)
                            }
                            .frame(width: size.width - 60, height: size.height - 50)
                            .scrollTransition(.interactive, axis: .horizontal) { view, phase in
                                view.scaleEffect(phase.isIdentity ? 1 : 0.95)
                            }
                        }
                    }
                    .padding(.horizontal, 30)
                    .scrollTargetLayout()
                    .frame(height: size.height, alignment: .top)
                }
                .scrollTargetBehavior(.viewAligned)
                .scrollIndicators(.hidden)
            }
            .frame(height: viewHeight)
            .padding(.horizontal, -16)
        }
        .padding(.horizontal, 16)
    }
    
    @ViewBuilder
    func OverlayView(card: Card) -> some View {
        ZStack(alignment: .bottomLeading) {
            LinearGradient(
                colors: [
                    .clear, .clear, .clear, .clear,
                    .clear, .black.opacity(0.1),
                    .black.opacity(0.5), .black
                ],
                startPoint: .top, endPoint: .bottom
            )
            VStack(alignment: .leading, spacing: 4) {
                Text(card.title)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                
                Text(card.subTitle)
                    .font(.callout)
                    .foregroundColor(.white.opacity(0.8))
            }
            .padding(20)
        }
    }
}

#Preview {
    ParalaxHorizontalView()
}
