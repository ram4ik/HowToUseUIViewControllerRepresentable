//
//  ContentView.swift
//  HowToUseUIViewControllerRepresentable
//
//  Created by ramil on 12.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showScreen: Bool = false
    @State private var pickerScreen: Bool = false
    
    var body: some View {
        VStack {
            Text("Hi")
            
            Button {
                showScreen.toggle()
            } label: {
                Text("Click Here")
            }
            .sheet(isPresented: $showScreen) {
                BasicUIViewControllerRepresentable(labelText: "New text here...")
            }
            
            Button {
                pickerScreen.toggle()
            } label: {
                Text("Picker")
            }
            .sheet(isPresented: $pickerScreen) {
                UIImagePickerControllerRepresentable()
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct UIImagePickerControllerRepresentable: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let vc = UIImagePickerController()
        vc.allowsEditing = false
        
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
}

struct BasicUIViewControllerRepresentable: UIViewControllerRepresentable {
    
    let labelText: String
    
    func makeUIViewController(context: Context) -> some UIViewController {
        
        let vc = MyFirstViewController()
        vc.labelText = labelText
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

class MyFirstViewController: UIViewController {
    
    var labelText: String = "Starting value"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        let label = UILabel()
        label.text = labelText
        label.textColor = UIColor.white
        
        view.addSubview(label)
        label.frame = view.frame
    }
}
