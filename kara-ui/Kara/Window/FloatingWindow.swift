import AppKit
import SwiftUI

final class FloatingWindow: NSWindow {

    init(contentView: NSView) {
        super.init(
            contentRect: NSRect(origin: .zero, size: WindowConfiguration.defaultSize),
            styleMask: [.borderless],
            backing: .buffered,
            defer: false
        )

        self.contentView = contentView
        isOpaque = !WindowConfiguration.isTransparent
        backgroundColor = .clear
        hasShadow = true
        titleVisibility = .hidden
        titlebarAppearsTransparent = true
        isMovableByWindowBackground = WindowConfiguration.isMovableByBackground
        level = WindowConfiguration.level
        collectionBehavior = [.canJoinAllSpaces, .fullScreenAuxiliary]
        center()
    }
}
