//
//  PlayButton.swift
//  SwiftUI-Lifecycle
//
//  Created by bruno on 09/07/21.
//

import SwiftUI

struct PlayButton: View {
    @Binding var isPlaying: Bool

    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Image(systemName: isPlaying ? "pause.circle" : "play.circle")
        }
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton(isPlaying: .constant(false))
            .previewLayout(.fixed(width: 64, height: 64))
    }
}
