import SwiftUI

struct ContentView: View {
    @AppStorage("titleOn") private var titleOn = true 

    var body: some View {
        TabView {
            InfoView(titleOn: titleOn)
                .tabItem {
                    Label("Info", systemImage: "info.circle.fill")
                }

            Text("Hello")
                .tabItem {
                    Label("Hello", systemImage: "circle.hexagongrid.circle")
                }

            SettingsView(titleOn: titleOn)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}


#Preview {
    ContentView()
}
