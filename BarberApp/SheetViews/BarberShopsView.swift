import SwiftUI

struct BarberShopsView: View {
    let customGrayColor = Color(red: 0.24, green: 0.24, blue: 0.24)
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var selectedBarberShop: BarberShop?
    @State private var selectedBarberShops: [BarberShop: Bool] = [:]
    
    var body: some View {
        NavigationView {
            ZStack {
                customGrayColor.edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 0) {
                        ForEach(MockData.barberShops) { shop in
                            BarberShopListCell(shop: shop, isSelected: Binding(
                                get: { selectedBarberShops[shop] ?? false },
                                set: { newValue in
                                    selectedBarberShops[shop] = newValue
                                    if newValue {
                                        selectedBarberShop = shop
                                    } else {
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
    BarberShopsView(selectedBarberShop: .constant(nil))
}
