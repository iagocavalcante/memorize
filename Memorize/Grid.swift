//
//  Grid.swift
//  Memorize
//
//  Created by Idopter Labs on 08/05/21.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    var items: [Item]
    var viewForItem: (Item) -> ItemView
    
    init(_ items: [Item], viewForItem: @escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }

    var body: some View {
        GeometryReader { geometry in
            body(for: geometry.size)
        }
    }
    
    func body(for size: CGSize) -> some View{
        ForEach(items) { item in
            body(for: item, in: size)
        }
    }
    
    func body(for item: Item, in size: CGSize) -> some View{
        viewForItem(item)
    }
}
