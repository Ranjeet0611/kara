import AppKit
import SwiftUI

final class AppDelegate: NSObject, NSApplicationDelegate {

    private let windowController = FloatingWindowController.shared

    func applicationDidFinishLaunching(_ notification: Notification) {
        let rootView = MainView()
        windowController.show(rootView)
        windowController.center()
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        true
    }
}
