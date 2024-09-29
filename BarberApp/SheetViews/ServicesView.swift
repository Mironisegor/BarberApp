import SwiftUI

struct ServicesView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var selectedService: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.gray.edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 10) {
                        ForEach(MockData.services) { service in
                            ServicesListCell(service: service, isSelected: $selectedService)
                        }
                    }
                }
                .background(Color.gray)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Услуги")
                            .font(.system(size: 35, weight: .semibold))
                            .foregroundColor(Color.white)
                            .padding(.top, 10)
                    }
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "chevron.left")
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
    ServicesView()
}
