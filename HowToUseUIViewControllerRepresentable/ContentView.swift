//
//  ContentView.swift
//  HowToUseUIViewControllerRepresentable
//
//  Created by ramil on 12.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showScreen: Bool = false
    
    var body: some View {
        VStack {
            Text("Hi")
            
            Button {
                showScreen.toggle()
            } label: {
                Text("Click Here")
            }
            .sheet(isPresented: $showScreen) {
                BasicUIViewControllerRepresentable()
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BasicUIViewControllerRepresentable: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let vc = UIViewController()
        vc.view.backgroundColor = .blue
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
