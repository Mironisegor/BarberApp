import SwiftUI

struct BarberShopsView: View {
    let customGrayColor = Color(red: 0.24, green: 0.24, blue: 0.24)
    @Binding var isPresented: Bool
    @Binding var selectedBarberShop: BarberShop?
    @State private var selectedBarberShopIndex: Int? = nil
    
    var body: some View {
        NavigationView {
            ZStack {
                customGrayColor.edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 0) {
                        ForEach(Array(MockData.barberShops.enumerated()), id: \.element.id) { index, barberShop in
                            BarberShopListCell(shop: barberShop, isSelected: Binding(
                                get: { selectedBarberShopIndex == index },
                                set: { newValue in
                                    if newValue {
                                        selectedBarberShopIndex = index
                                        selectedBarberShop = barberShop
                                    } else {
                                        selectedBarberShopIndex = nil
                                        selectedBarberShop = nil
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
                        Text("Барбершопы")
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
    BarberShopsView(isPresented: .constant(true), selectedBarberShop: .constant(nil))
}
