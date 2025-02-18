import SwiftUI

struct UpdatesView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<3) { index in
                    UpdateRow()
                }
            }
            .navigationTitle("Updates")
        }
    }
}

struct UpdateRow: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "bell.fill")
                    .foregroundColor(.blue)
                    .font(.title2)
                
                VStack(alignment: .leading) {
                    Text("New Update Available")
                        .font(.headline)
                    Text("2 hours ago")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding(.vertical, 4)
        }
    }
}

// End of file
