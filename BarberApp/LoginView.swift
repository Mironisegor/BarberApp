import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    @State var isShowingMainView = false
    @State var isShowingRegistrationView = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Добро пожаловать")
                    .font(.system(size: 30, weight: .medium))
                    .foregroundColor(.white)
                    .padding(.top, 10)
                
                Form {
                    Section(header: Text("E-mail")) {
                        TextField("Введите email", text: $email)
                            .foregroundColor(.black)
                    }
                    .foregroundColor(.white)
                    
                    Section(header: Text("Пароль")
                        .foregroundColor(.white)) {
                        SecureField("Введите пароль", text: $password)
                            .foregroundColor(.black)
                    }
                }
                .scrollContentBackground(.hidden)
                .padding(.top, 20)
                
                Button {
                    isShowingMainView.toggle()
                } label: {
                    Text("Войти")
                        .font(.system(size: 22, weight: .medium))
                        .frame(width: 200, height: 50)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        .padding(.bottom, 30)
                }
                
                Button {
                    isShowingRegistrationView.toggle()
                } label: {
                    HStack {
                        Text("Еще нет аккаунта?")
                            .font(.system(size: 18, weight: .regular))
                            .foregroundColor(.white)
                        Text("Регистрация")
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
        }
        .fullScreenCover(isPresented: $isShowingRegistrationView) {
            RegistartionView()
        }
    }
}

#Preview {
    LoginView()
}
