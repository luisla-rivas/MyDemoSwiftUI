//
//  OverlayMessage.swift
//  MyDemoSwiftUI
//
//  Created by Luis Lasierra on 28/6/24.
//

import SwiftUI

struct OverlayMessageViewModifier: ViewModifier {
    @Binding var message: String
    @State private var presented = false
    
    func body(content: Content) -> some View {
        if message.isEmpty {
            content
        } else {
            content
            .overlay(
                RoundedRectangle(cornerRadius: 25.0)
                    .opacity(presented ? 0.6 : 0)
                    .padding(.horizontal)
                    .frame(maxHeight: 150)
            )
            .overlay(
                Text(message)
                    .opacity(presented ? 1 : 0)
                    .font(.system(size: 22.0))
                    //.fontWeight(.bold)
                    .lineLimit(2)
                    .foregroundColor(.white)
                //.environment(\.colorScheme, .dark)
            )
            .animation(.smooth(duration: 1), value: presented)
            .onAppear{
                if !message.isEmpty {
                    self.presented.toggle()
                    Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { _ in
                        self.presented.toggle()
                    }
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
                        self.message = ""
                    }
                }
            }
        }
    }
}

extension View {
    public func overlayMessage(_ message: Binding<String>) -> some View {
        modifier(OverlayMessageViewModifier(message: message))
    }
}

/*
 #Preview {
 @State var message = "Item corretly saved!"
 return Color(.yellow)
 .overlayMessage($message)
 .edgesIgnoringSafeArea(.all) //.ignoresSafeArea()
 }
 */
