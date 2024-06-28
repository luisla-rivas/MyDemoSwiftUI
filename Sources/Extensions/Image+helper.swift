//
//  Image+helper.swift
//  MyDemoSwiftUI
//
//  Created by Luis Lasierra on 28/6/24.
//

import SwiftUI

extension Image {
    public func resizedToFill(width: CGFloat, height: CGFloat) -> some View {
        return self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)
            .clipped()
        }
    
    public func resizedToFit(width: CGFloat, height: CGFloat) -> some View {
        return self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: width, height: height)
            .clipped()
        }
}
