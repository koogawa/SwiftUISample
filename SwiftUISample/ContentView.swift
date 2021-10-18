//
//  ContentView.swift
//  SwiftUISample
//
//  Created by koogawa on 2020/05/09.
//  Copyright © 2020 Kosuke Ogawa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                HStack {
                }
            }
            .navigationTitle("Testing")
            .navigationBarItems(leading:
                                    Button(action: {
                print(1)
            }) {
                Image(systemName: "chevron.down")
                    .padding(.trailing, 8)
                    .padding(.vertical, 8)
            },
                                trailing:
                                    HStack {
                Button(action: {
                    print(2)
                }) {
                    Image(systemName: "square.and.arrow.up")
                        .padding(.leading, 8)
                        .padding(.vertical, 8)
                }

                Button(action: {
                    print(3)
                }) {
                    Image(systemName: "ellipsis")
                        .padding(.leading, 8)
                        .padding(.vertical, 8)
                }
            })
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
