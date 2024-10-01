import SwiftUI

struct ServicesView: View {
    @Binding var isPresented: Bool
    @State private var selectedServiceIndex: Int? = nil
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.accentColor.edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 10) {
                        ForEach(Array(MockData.services.enumerated()), id: \.element.id) { index, service in
                            ServicesListCell(service: service, isSelected: Binding(
                                get: { selectedServiceIndex == index },
                                set: { newValue in
                                    if newValue {
                                        selectedServiceIndex = index
                                    } else {
                                        selectedServiceIndex = nil
                                    }
                                }
                            ))
                        }
                    }
                }
                .background(Color.accentColor)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Услуги")
                            .font(.system(size: 35, weight: .semibold))
                            .foregroundColor(Color.white)
                            .padding(.top, 10)
                    }
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            isPresented = false
                        }) {
                            Image("buttonBack")
                                .foregroundColor(.white)
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ServicesView(isPresented: .constant(true))
}
