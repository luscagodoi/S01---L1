#include <iostream>

using namespace std;

double celsiusParaFahrenheit(double celsius){
    return 1.8*celsius+32;
}

double celsiusParaKelvin(double celsius){
    return celsius+273.15;
}

int main() {
    int escolha;
    double celsius;
    
    do{
        cout<<"1. Converter Celsius para Fahrenheit."<<endl;
        cout<<"2. Converter Celsius para Kelvin."<<endl;
        cout<<"3. Sair."<<endl;
        
        cin>>escolha;
        
        switch(escolha){
            case 1: 
                cout<<"Insira a temperatura em Celsius: ";
                cin>>celsius;
                cout<<"Temperatura em Kelvin: "<<celsiusParaFahrenheit(celsius)<<endl;
            break;
            case 2:
                cout<<"Insira a temperatura em Celsius: ";
                cin>>celsius;
                cout<<"Temperatura em Kelvin: "<<celsiusParaKelvin(celsius)<<endl;
            break;
            case 3:
                cout<<"See ya!";
        }
    }while(escolha!=3);
}

// Crie duas funções:
//  • double celsiusParaFahrenheit(double celsius): converte de Celsius para Fahrenheit.
//  • double celsiusParaKelvin(double celsius): converte de Celsius para Kelvin.
//
// No main, use um do-while loop para apresentar um menu ao usuário.
// As opções devem ser:
//     1. Converter Celsius para Fahrenheit.
//     2. Converter Celsius para Kelvin.
//     3. Sair.
//
// Use um switch para lidar com a opção escolhida.
//     Case 1:
//         Chame a função celsiusParaFahrenheit e imprima o resultado.
//     Case 2:
//         Chame a função celsiusParaKelvin e imprima o resultado.
//     Case 3:
//         Saia do do-while loop.
//
// O loop deve continuar até que o usuário escolha a opção de sair.
