import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(spacing: 12) {
      Text("{{PRODUCT_NAME}}").font(.title)
      Text("WEBServices Factory").foregroundStyle(.secondary)
    }
    .padding()
    .frame(minWidth: 420, minHeight: 280)
  }
}
