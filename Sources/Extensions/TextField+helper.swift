//
//  TextField+helper.swift
//  MyDemoSwiftUI
//
//  Created by Luis Lasierra on 28/6/24.
//

import SwiftUI

struct MyTextField: View {
    let label:String
    @Binding var text:String
    var validation:((String) -> String?)?
    
    @State var error = false
    @State var errorMsg = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(label)
                .font(.headline)
            HStack {
                TextField("Enter the \(label.lowercased())", text: $text)
                if !text.isEmpty {
                    Button {
                        text = ""
                    } label: {
                        Image(systemName: "xmark")
                            //.symbolVariant(.circle)
                            //.symbolVariant(.fill)
                    }
                    .buttonStyle(.plain)
                    .foregroundColor(.secondary) //.foregroundStyle(.secondary)
                    .opacity(0.5)
                }
            }
            .padding(2)
            .background(
                Rectangle()
                    .stroke(lineWidth: 2)
                    .fill(.red)
                    .opacity(error ? 1.0 : 0.0)
            )
            .onValueChange(of: text) { newValue in  // iOS13 of .onChange(of: perform:)
                if let validation, let message = validation(newValue) {
                    errorMsg = message.replacingOccurrences(of: "%@", with: label.capitalized)
                    error = true
                } else {
                    error = false
                }
            }
            if error {
                Text(errorMsg)
                    .font(.caption)
                    .foregroundColor(.red)
            }
        }
    }
}

#Preview {
    MyTextField(label: "First name", text: .constant("Luis"))
}
