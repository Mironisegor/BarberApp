import SwiftUI

struct HomeView: View {
    @State private var date = Date.now
    @State private var isShowingBarbershops = false
    @State private var isShowingBarbers = false
    @State private var isShowingServices = false
    
    var body: some View {
        ZStack {
            Color.accentColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Button {
                        isShowingBarbershops = true
                    } label: {
                        HStack {
                            Text("Выбрать барбершоп")
                                .font(.system(size: 15, weight: .semibold))
                                .padding(.leading)
                            Spacer()
                            Image(systemName: "arrow.right")
                                .font(.system(size: 20, weight: .light))
                                .foregroundColor(.gray)
                                .padding(.trailing)
                        }
                        .frame(width: 350, height: 45)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(13)
                        .sheet(isPresented: $isShowingBarbershops) {
                            BarberShopsView(isPresented: $isShowingBarbershops)
                        }
                    }

                    Button {
                        isShowingBarbers = true
                    } label: {
                        HStack {
                            Text("Выбрать барбера")
                                .font(.system(size: 15, weight: .semibold))
                                .padding(.leading)
                            Spacer()
                            Image(systemName: "arrow.right")
                                .font(.system(size: 20, weight: .light))
                                .foregroundColor(.gray)
                                .padding(.trailing)
                        }
                        .frame(width: 350, height: 45)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(13)
                        .sheet(isPresented: $isShowingBarbers) {
                            BarbersView(isPresented: $isShowingBarbers)
                        }
                    }
                    
                    Button {
                        isShowingServices = true
                    } label: {
                        HStack {
                            Text("Выбрать услугу")
                                .font(.system(size: 15, weight: .semibold))
                                .padding(.leading)
                            Spacer()
                            Image(systemName: "arrow.right")
                                .font(.system(size: 20, weight: .light))
                                .foregroundColor(.gray)
                                .padding(.trailing)
                        }
                        .frame(width: 350, height: 45)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(13)
                        .sheet(isPresented: $isShowingServices) {
                            ServicesView(isPresented: $isShowingServices)
                        }
                    }
                    
                    DatePicker("Время", selection: $date, in: ...Date())
                        .padding()
                        .accentColor(.blue)
                        .font(.system(size: 15, weight: .semibold))
                        .frame(width: 350, height: 45)
                        .background(Color.white)
                        .cornerRadius(13)
                }
                .scrollContentBackground(.hidden)
                Spacer()
                VStack {
                    Image(systemName: "scissors")
                        .font(.system(size: 72, weight: .light))
                        .foregroundColor(.white)
                    Text("barber")
                        .font(.system(size: 50, weight: .regular))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 180)
                Button {
                    //
                } label: {
                    Text("Записаться")
                        .font(.system(size: 22, weight: .medium))
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.bottom, 50)
                }
            }
            .padding(.top, 30)
        }
    }
}

#Preview {
    HomeView()
}
