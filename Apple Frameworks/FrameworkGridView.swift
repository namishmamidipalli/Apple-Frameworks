//
//  FrameworkGridView.swift
//  Apple Frameworks
//
//  Created by Namish Mamidipalli on 10/22/23.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    var body: some View {
        LazyVGrid(columns: columns) {
            AppView(icon: "app-clip", name: "App Clips")
            AppView(icon: "app-clip", name: "App Clips")
            AppView(icon: "app-clip", name: "App Clips")
            AppView(icon: "app-clip", name: "App Clips")
            AppView(icon: "app-clip", name: "App Clips")
            AppView(icon: "app-clip", name: "App Clips")
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct AppView: View {
    
    var icon: String
    var name: String
    var body: some View {
        VStack {
            Image(icon)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
