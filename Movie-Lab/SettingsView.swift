import SwiftUI

struct SettingsView: View {
    @State private var notificationsEnabled = true
    @State private var selectedOption = 0
    @State private var level = 50.0
    @AppStorage("titleOn") var titleOn: Bool = true
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            Color(.blue)
            
            Form {
                Section(header: Text("Настройки")) {
                    Toggle("Включить", isOn: $notificationsEnabled)
                    
                    HStack {
                        Text("Текущая цветовая схема:")
                        Spacer()
                        Text(colorScheme == .dark ? "Dark Theme enabled" : "Light Theme enabled")
                    }
                }
                
                Section(header: Text("Отображение заголовка")) {
                    Toggle("Navigation title enabled", isOn: $titleOn)
                    if titleOn {
                        Text("Заголовок навигации включен")
                    }
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
            .onChange(of: titleOn) { newValue in
                print("Статус заголовка изменен на \(newValue ? "включен" : "выключен")")
                
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
