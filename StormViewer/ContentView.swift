//
//  ContentView.swift
//  StormViewer
//
//  Created by Doce on 03.10.23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedImage: Int?

    var body: some View {
        NavigationView {
            List(0..<10, selection: $selectedImage) { number in
                Text("Storm \(number + 1)")
            }
            .frame(width: 192)
            
            if let selectedImage = selectedImage {
                Image(String(selectedImage))
                    .resizable()
                    .scaledToFit()
            } else {
                Text("Please select an image")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .navigationTitle("Storm Viewer")
        .frame(minWidth: 480, minHeight: 320)
        .onAppear {
            NSWindow.allowsAutomaticWindowTabbing = false
        }
    }
}

#Preview {
    ContentView()
}
