//
//  LibraryContent.swift
//
//
//  Created by Luis Lasierra on 28/6/24.
//

import SwiftUI

// Puedo llamar LibraryContent o usar cualquier otro nombre
@available(iOS 14.0, *)
struct LibraryContent: LibraryContentProvider {
    @LibraryContentBuilder
    func modifiers(base: Image) -> [LibraryItem] {
        LibraryItem(
            base.resizedToFill(width: 100.0, height: 100.0),
            title: "Resized To Fill",
            category: .control
        )
    }
    
//    @LibraryContentBuilder
//    var views: [LibraryItem] {
//        LibraryItem(
//            RouteRowView(route: Route.preview),
//            title: "Route Row View",
//            category: .layout
//        )
//        
//        LibraryItem(
//            RemoveAndSaveButtonsView(message: .constant("message")),
//            title: "Remove and Save Buttons View",
//            category: .control
//        )
//    }
}
