//
//  SwiftUIView.swift
//  Minor Project
//
//  Created by Anshu Aaron Varma on 11/10/23.
//

import SwiftUI
var array = ["HOME", "WORK"]
struct SwiftUIView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink{
                    HostedViewController()
                        .ignoresSafeArea()
                }label: {
                    VStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                        Text("Object Detection")
                    }
                }
                Text("OR")
                    .bold()
                    .padding()
                NavigationLink{
                    NavViewController(parameter: "Home")
                } label: {
                    VStack {
                        Image(systemName: "figure.walk")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                        Text("Navigation to Elevator")
                    }
                }
                Text("")
                Text("")
//                Text("")
                NavigationLink{
                    NavViewController(parameter: "Work")
                } label: {
                    VStack {
//                        Image(systemName: "figure.walk")
//                            .imageScale(.large)
//                            .foregroundColor(.accentColor)
                        Text("Navigation to Room")
                    }
                }
            }
        }
    }
}

    #Preview {
        SwiftUIView()
    }

