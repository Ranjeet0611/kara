import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Color.clear
                .ignoresSafeArea()
        }
        .frame(width: WindowConfiguration.defaultSize.width,
               height: WindowConfiguration.defaultSize.height)
    }
}

#Preview {
    MainView()
}
