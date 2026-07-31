import AppKit
import SwiftUI

@MainActor
final class FloatingWindowController {
    static let shared = FloatingWindowController()

    private var window: FloatingWindow?

    private init() {}

    func show<Content: View>(_ rootView: Content) {
        if let window {
            window.contentView = NSHostingView(rootView: rootView)
            window.makeKeyAndOrderFront(nil)
            NSApp.activate(ignoringOtherApps: true)
            return
        }

        let hostingView = NSHostingView(rootView: rootView)
        let floatingWindow = FloatingWindow(contentView: hostingView)
        window = floatingWindow
        floatingWindow.makeKeyAndOrderFront(nil)
        NSApp.activate(ignoringOtherApps: true)
    }

    func hide() {
        window?.orderOut(nil)
    }

    func close() {
        window?.close()
        window = nil
    }

    func toggle<Content: View>(_ rootView: Content) {
        guard let window else {
            show(rootView)
            return
        }

        if window.isVisible {
            hide()
        } else {
            show(rootView)
        }
    }

    func center() {
        window?.center()
    }
}
