//
//  AspectVGrid.swift
//  Memory Cards
//
//  Created by Lasse Silkoset on 30/09/2022.
//

import SwiftUI

struct AspectVGrid<item, itemView>: View where itemView: View, item: Identifiable {
    
    let columns: [item]
    let aspectRatio: CGFloat
    let content: (item) -> (itemView)
    
    var body: some View {
        GeometryReader { geoProxy in
                let width: CGFloat = widthThatFits(itemCount: columns.count, in: geoProxy.size, itemAspecctRatio: aspectRatio)
                LazyVGrid(columns: [GridItem(.adaptive(minimum: width), spacing: 0)]) {
                    ForEach(columns) { item in
                        content(item).aspectRatio(aspectRatio, contentMode: .fit)
                    }
                }
                Spacer(minLength: 0)
        }
    }

private func widthThatFits(itemCount: Int, in size: CGSize, itemAspecctRatio: CGFloat) -> CGFloat {
      var columnCount = 1
      var rowCount = itemCount
      repeat {
          let itemWidth = size.width / CGFloat(columnCount)
          let itemHeight = itemWidth / itemAspecctRatio
          if CGFloat(rowCount) * itemHeight < size.height {
              break
          }

          columnCount += 1
          rowCount = (itemCount + (columnCount - 1)) / columnCount
      } while columnCount < itemCount

      if columnCount > itemCount {
          columnCount = itemCount
      }

      return floor(size.width / CGFloat(columnCount))
  }
}
