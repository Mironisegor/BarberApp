import SwiftUI

struct BarbersView: View {
    let customGrayColor = Color(red: 0.24, green: 0.24, blue: 0.24)
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var selectedBarber: Barber?
    @State private var selectedBarbers: [Barber: Bool] = [:]
    
    var body: some View {
        NavigationView {
            ZStack {
                customGrayColor.edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 0) {
                        ForEach(MockData.barbers) { barber in
                            BarbersListCell(barber: barber, isSelected: Binding(
                                get: { selectedBarbers[barber] ?? false },
                                set: { newValue in
                                    selectedBarbers[barber] = newValue
                                    if newValue {
                                        selectedBarber = barber
                                    } else {
                                        selectedBarber = nil
                                    }
                                }
                            ))
                            .background(customGrayColor)
                            .padding(.vertical, 8)
                        }
                    }
                }
                .background(customGrayColor)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Работники")
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
    BarbersView(selectedBarber: .constant(nil))
}
