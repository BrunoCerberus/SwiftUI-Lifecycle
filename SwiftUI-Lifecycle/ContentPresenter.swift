//
//  ContentPresenter.swift
//  SwiftUI-Lifecycle
//
//  Created by bruno on 09/07/21.
//

import Foundation
import SwiftUI

final class ContentPresenter {
    @Published var somethingThatNeedToBeListen: Bool = false
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 2, repeats: true, block: { timer in
            self.somethingThatNeedToBeListen.toggle()
        })
    }
}
