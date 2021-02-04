//
//  Circle.swift
//  PixelKit with SwiftUI
//
//  Created by Anton Heestand on 2021-02-04.
//

import SwiftUI
import PixelKit

struct Circle: View {
    var body: some View {
        BlendsPIX(blendMode: .difference) {
            CirclePIX()
            CirclePIX(radius: 0.125)
        }
        .ignoresSafeArea()
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        Circle()
            .overlay(PlayPreviews())
    }
}
