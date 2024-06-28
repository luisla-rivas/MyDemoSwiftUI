//
//  Text+helper.swift
//  MyDemoSwiftUI
//
//  Created by Luis Lasierra on 28/6/24.
//

import SwiftUI

extension Text {
    func myRCBTitleStyle() -> some View {
        return self
            .font(.custom("Arial Rounded MT Bold", size: 28)) //.font(.title)
            //.fontDesign(.rounded) //iOS16: .fontDesign(.rounded)
            //.fontWidth(.condensed)
            .fontWeight(.bold)
            .lineLimit(2)
        }
}
