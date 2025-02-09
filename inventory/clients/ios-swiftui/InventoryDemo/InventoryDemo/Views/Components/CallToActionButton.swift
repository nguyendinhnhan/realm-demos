//
//  CallToActionButton.swift
//  InventoryDemo
//
//  Created by Andrew Morgan on 21/04/2021.
//

import SwiftUI

struct CallToActionButton: View {
    let title: String
    var showingArrow = false
    let action: () -> Void

    private enum Dimensions {
        static let labelSpacing: CGFloat = 14
        static let lineLimit = 1
        static let radius: CGFloat = 50.0
    }

    var body: some View {
        Button(action: action) {
            HStack {
                Spacer(minLength: Dimensions.labelSpacing)
                Text(LocalizedStringKey(title))
                    .padding(.vertical, Dimensions.labelSpacing)
                    .lineLimit(Dimensions.lineLimit)
                    .font(Font.body.weight(.semibold))
                if showingArrow {
                    Image(systemName: "arrow.right")
                        .font(Font.caption2.weight(.bold))
                }
                Spacer(minLength: Dimensions.labelSpacing)
            }
            .foregroundColor(.white)
            .background(Color.green)
            .cornerRadius(Dimensions.radius)
        }
    }
}

struct CallToActionButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CallToActionButton(title: "Button", showingArrow: false, action: {})
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
