import SwiftUI

struct GlassBackground: View {
    var body: some View {
        RoundedRectangle(cornerRadius: WindowTheme.cornerRadius, style: .continuous)
            .fill(.ultraThinMaterial)
            .overlay {
                RoundedRectangle(cornerRadius: WindowTheme.cornerRadius, style: .continuous)
                    .stroke(Color.karaBorder, lineWidth: WindowTheme.borderWidth)
            }
            .shadow(color: .black.opacity(0.24), radius: WindowTheme.shadowRadius, y: 8)
    }
}

#Preview {
    ZStack {
        Color.karaBackground
        GlassBackground()
            .frame(width: 420, height: 420)
            .padding()
    }
}
