//
//  MainView.swift
//  Kara
//

import SwiftUI

struct MainView: View {

    var body: some View {

        ZStack {

            // Dark background so the glass effect is visible
            Color.karaBackground
                .ignoresSafeArea()

            // Glass Window
            GlassBackground()
                .padding(12)

        }
        .frame(
            width: WindowTheme.defaultSize.width,
            height: WindowTheme.defaultSize.height
        )
    }
}

#Preview {

    MainView()

}
