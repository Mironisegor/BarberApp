import SwiftUI

struct BarbersView: View {
    let customGrayColor = Color(red: 0.24, green: 0.24, blue: 0.24)
    @Binding var isPresented: Bool
    @Binding var selectedBarber: Barber?
    @State private var selectedBarberIndex: Int? = nil
    
    var body: some View {
        NavigationView {
            ZStack {
                customGrayColor.edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 0) {
                        ForEach(Array(MockData.barbers.enumerated()), id: \.element.id) { index, barber in
                            BarbersListCell(barber: barber, isSelected: Binding(
                                get: { selectedBarberIndex == index },
                                set: { newValue in
                                    if newValue {
                                        selectedBarberIndex = index
                                        selectedBarber = barber
                                    } else {
                                        selectedBarberIndex = nil
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
    BarbersView(isPresented: .constant(true), selectedBarber: .constant(nil))
}
