//
//  OfflineView.swift
//  MyDemoSwiftUI
//
//  Created by Luis Lasierra on 28/6/24.
//

import SwiftUI

@available(iOS 13.0, *)
public struct OfflineView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black.opacity(0.10)) //.fill(.regularMaterial)
                .edgesIgnoringSafeArea(.all) //.ignoresSafeArea()
            VStack {
                Text("No Network connection.")
                    .font(.headline)
                Text("App requires internet connection to work!")
                    .font(.callout)
                    .foregroundColor(.secondary)
                    //.foregroundStyle(.secondary)
            }
        }
    }
}

/*
struct AppOfflineView_Previews: PreviewProvider {
    static var previews: some View {
        AppOfflineView()
    }
}
*/
