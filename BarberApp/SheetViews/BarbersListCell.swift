import SwiftUI

struct BarbersListCell: View {
    let barber: Barber
    @Binding var isSelected: Bool
    
    var body: some View {
        Button{
            isSelected.toggle()
        } label: {
            HStack {
                Image(systemName: barber.image)
                    .font(.system(size: 40, weight: .semibold))
                    .foregroundColor(.gray)
                    .padding(.leading, 10)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text(barber.name)
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(.black)
                    Text(barber.type)
                        .font(.system(size: 17, weight: .light))
                        .foregroundColor(.black)
                    if (barber.rate > 0) {
                        HStack {
                            Image(systemName: "star.fill")
                                .font(.system(size: 10, weight: .semibold))
                                .foregroundColor(.yellow)
                            Text("\(String(format: "%.1f", barber.rate))")
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
            .frame(width: 330, height: 80)
            .background(Color.white)
            .cornerRadius(15)
        }
    }
}

import SwiftUI

struct BarberCheckboxToggleStyle: ToggleStyle {
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
    BarbersListCell(barber: MockData.sampleBarberOne, isSelected: .constant(false))
}
