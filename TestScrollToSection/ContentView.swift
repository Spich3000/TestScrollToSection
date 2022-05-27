//
//  ContentView.swift
//  TestScrollToSection
//
//  Created by Дмитрий Спичаков on 27.05.2022.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue]

    var body: some View {
        ScrollView {
            ScrollViewReader { value in
                HStack {
                    Button("Jump to #8") {
                        value.scrollTo(8)
                    }
                    .padding()
                    Button("Jump to #3") {
                        value.scrollTo(3)
                    }
                    .padding()
                }

                ForEach(0..<20) { i in
                    Section {
                    Text("Example \(i)")
                        .font(.title)
                        .frame(width: 200, height: 200)
                        .background(colors[i % colors.count])
                    }
                    .id(i)
                }
                
                Button("Jump to #0") {
                    value.scrollTo(0)
                }
                .padding()
            }
            
        }
        .frame(height: 350)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
