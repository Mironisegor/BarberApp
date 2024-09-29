import SwiftUI

struct RegistartionView: View {
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    @State var phoneNumber = ""
    @State var fullName = ""
    @State var isShowingMainView = false
    @State var isShowingLoginView = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Регистрация")
                    .font(.system(size: 30, weight: .medium))
                    .foregroundColor(.white)
                    .padding(.top, 20)
                
                Form {
                    Section(header: Text("НОМЕР ТЕЛЕФОНА")) {
                        TextField("Введите номер телефона", text: $phoneNumber)
                            .foregroundColor(.black)
                    }
                    .foregroundColor(.white)
                    
                    Section(header: Text("E-mail")) {
                        TextField("Введите e-mail", text: $email)
                            .foregroundColor(.black)
                    }
                    .foregroundColor(.white)
                    
                    Section(header: Text("ФИО")) {
                        TextField("Введите ФИО", text: $fullName)
                            .foregroundColor(.black)
                    }
                    .foregroundColor(.white)
                    
                    Section(header: Text("Пароль")
                        .foregroundColor(.white)) {
                        SecureField("Введите пароль", text: $password)
                            .foregroundColor(.black)
                    }
                    .foregroundColor(.white)
                    
                    Section(header: Text("ПОДТВЕРДИТЕ ПАРОЛЬ")
                        .foregroundColor(.white)) {
                        SecureField("Введите пароль", text: $confirmPassword)
                            .foregroundColor(.black)
                    }
                    .foregroundColor(.white)
                }
                .scrollContentBackground(.hidden)
                
                Button {
                    withAnimation {
                        isShowingMainView.toggle()
                    }
                } label: {
                    Text("Зарегистрироваться")
                        .font(.system(size: 22, weight: .medium))
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        .padding(.bottom, 30)
                }
                
                Button {
                    withAnimation {
                        isShowingLoginView.toggle()
                    }
                } label: {
                    HStack {
                        Text("Уже есть аккаунт?")
                            .font(.system(size: 18, weight: .regular))
                            .foregroundColor(.white)
                        Text("Войти")
                            .font(.system(size: 18, weight: .regular))
                            .foregroundColor(.blue)
                    }
                    .padding(.bottom, 40)
                }
            }
            .background(Color.accentColor)
        }
        .fullScreenCover(isPresented: $isShowingMainView) {
            MainView()
                .transition(.move(edge: .trailing))
        }
        .fullScreenCover(isPresented: $isShowingLoginView) {
            LoginView()
                .transition(.move(edge: .trailing))
        }
    }
}

#Preview {
    RegistartionView()
}
