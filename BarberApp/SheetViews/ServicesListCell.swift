import SwiftUI

struct ServicesListCell: View {
    let service: Service
    @Binding var isSelected: Bool
    
    var body: some View {
        HStack {
            Toggle(isOn: $isSelected) {
                EmptyView()
            }
            .toggleStyle(ServiceCheckboxToggleStyle())
            .frame(width: 24)
            .padding(.leading, 10)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(service.type)
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(.black)
                if (service.minPrice == 0) {
                    Text("RUB " + " \(String(service.maxPrice))")
                        .font(.system(size: 13, weight: .semibold))
                        .foregroundColor(.blue)
                } else {
                    Text("\(String(service.minPrice))" + " - RUB " + "\(String(service.maxPrice))" )
                        .font(.system(size: 13, weight: .semibold))
                        .foregroundColor(.blue)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
        }
        .frame(width: 360, height: 60)
        .background(Color.white)
        .cornerRadius(15)
    }
}

struct ServiceCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }) {
            Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                .foregroundColor(configuration.isOn ? .blue : .gray)
                .font(.system(size: 24))
        }
    }
}

#Preview {
    ServicesListCell(service: MockData.sampleServiceOne, isSelected: .constant(false))
}
