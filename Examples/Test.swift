//
//  Test.swift
//  PixelKit with SwiftUI
//
//  Created by Anton Heestand on 2021-02-04.
//

import SwiftUI
import PixelKit

struct Test: View {
    @State var fraction: CGFloat = 0.5
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                
                CirclePIX(radius: fraction * 0.5)
                
                HStack {
                    Button(action: {
                        withAnimation(.easeInOut) {
                            fraction = 0.0
                        }
                    }, label: {
                        Text("0.0")
                            .padding(5)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .opacity(0.25)
                            )
                    })
                    GeometryReader { geo in
                        RoundedRectangle(cornerRadius: 5)
                            .opacity(0.2)
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 10 + fraction * (geo.size.width - 10))
                    }
                    .frame(height: 10)
                    Button(action: {
                        withAnimation(.easeInOut) {
                            fraction = 1.0
                        }
                    }, label: {
                        Text("1.0")
                            .padding(5)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .opacity(0.25)
                            )
                    })
                }
            }
            .environment(\.colorScheme, .dark)
            .padding()
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
