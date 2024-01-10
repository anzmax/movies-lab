import SwiftUI

struct SettingsView: View {
    @State private var notificationsEnabled = true
    @State private var selectedOption = 0
    @State private var level = 50.0

    var body: some View {
        ZStack {
            Color(.blue)
            
            Form {
                Section(header: Text("Настройки")) {
                    Toggle("Включить", isOn: $notificationsEnabled)
                }
                
                Section(header: Text("Выбор опции")) {
                    Picker("Выберите опцию", selection: $selectedOption) {
                        Text("Опция 1").tag(0)
                        Text("Опция 2").tag(1)
                        Text("Опция 3").tag(2)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Уровень")) {
                    HStack {
                        Text("Выбор")
                        Spacer()
                        Slider(value: $level, in: 0...100, step: 1)
                    }
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
