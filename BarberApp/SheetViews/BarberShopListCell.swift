import SwiftUI

struct BarberShopListCell: View {
    let shop: BarberShop
    @Binding var isSelected : Bool
    
    var body: some View {
        Button {
            //
        } label: {
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Image(systemName: shop.image)
                        .font(.system(size: 50, weight: .semibold))
                        .foregroundColor(.gray)
                    Text(shop.nameOfBarbershop)
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(.black)
                    Text(shop.adress)
                        .font(.system(size: 17, weight: .light))
                        .foregroundColor(.black)
                    if (shop.rate > 0) {
                        HStack {
                            Image(systemName: "star.fill")
                                .font(.system(size: 10, weight: .semibold))
                                .foregroundColor(.yellow)
                            Text("\(String(format: "%.1f", shop.rate))")
                                .font(.system(size: 17, weight: .semibold))
                                .foregroundColor(.black)
                        }
                    }
                }
                .padding(.leading, 10)
                Spacer()
                Image(systemName: "arrow.right")
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundColor(.gray)
                    .padding(.trailing, 10)
            }
            .frame(width: 350, height: 150)
            .background(Color.white)
            .cornerRadius(15)
        }
    }
}

#Preview {
    BarberShopListCell(shop: MockData.sampleBarberShopOne, isSelected: .constant(false))
}
