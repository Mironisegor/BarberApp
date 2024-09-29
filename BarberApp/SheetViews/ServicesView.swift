import SwiftUI

struct ServicesView: View {
    @Binding var selectedService: Service?
    @State private var selectedServices: [Service: Bool] = [:]
    
    var body: some View {
        ZStack {
            Color.gray.edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(MockData.services) { service in
                        ServicesListCell(service: service, isSelected: Binding(
                            get: { selectedServices[service] ?? false },
                            set: { newValue in
                                selectedServices[service] = newValue
                                if newValue {
                                    selectedService = service
                                } else {
                                    selectedService = nil
                                }
                            }
                        ))
                    }
                }
            }
            .background(Color.gray)
        }
    }
}

#Preview {
    ServicesView(selectedService: .constant(nil))
}
