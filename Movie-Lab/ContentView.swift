import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            InfoView()
                .tabItem {
                    Label("Info", systemImage: "info.circle.fill")
                }
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "circle.hexagongrid.circle")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
