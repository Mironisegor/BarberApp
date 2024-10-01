import SwiftUI

struct OrdersView: View {
    let customGrayColor = Color(red: 0.24, green: 0.24, blue: 0.24)
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                customGrayColor.edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 0) {
                        ForEach(order.items) { order in
                            OrderListCell(order: order)
                                .background(customGrayColor)
                                .padding(.vertical, 8)
                        }
                    }
                    if (order.items.isEmpty) {
                        Text("No orders yet")
                    }
                }
                .background(customGrayColor)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Ваши Записи")
                            .font(.system(size: 35, weight: .semibold))
                            .foregroundColor(Color.white)
                            .padding(.top, 10)
                    }
                }
            }
        }
    }
}

#Preview {
    let order = Order()
    order.items = [
        MockData.sampleOrderOne
    ]
    return OrdersView()
        .environmentObject(order)
}
