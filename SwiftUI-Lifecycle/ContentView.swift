//
//  ContentView.swift
//  SwiftUI-Lifecycle
//
//  Created by bruno on 09/07/21.
//

import SwiftUI

struct ContentView: View {
    @State var somethingThatChanges = false
    @State var localStringThatChanges = ""
    @State var playButtonChanged: Bool = false
//    @EnvironmentObject var teste
    
    var presenter: ContentPresenter
    
    var body: some View {
        VStack {
            Button(action: {
                somethingThatChanges.toggle()
            }, label: {
                Text("Button")
            })
            
            TextField("Teste", text: $localStringThatChanges)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            PlayButton(isPlaying: $playButtonChanged)
        }
        .onChange(of: playButtonChanged) { changed in
            print(changed)
        }
        .onAppear {
            debugPrint("Appeared")
        }
        .onDisappear {
            debugPrint("Disappeared")
        }
        .onReceive(presenter.$somethingThatNeedToBeListen) { data in
            debugPrint(data)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(presenter: ContentPresenter())
    }
}
