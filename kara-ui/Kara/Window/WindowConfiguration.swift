import SwiftUI

struct WindowConfiguration {
    static let defaultSize = CGSize(width: 420, height: 420)
    static let cornerRadius: CGFloat = 24
    static let isMovableByBackground = true
    static let isResizable = false
    static let isTransparent = true
    static let level: NSWindow.Level = .floating
}
