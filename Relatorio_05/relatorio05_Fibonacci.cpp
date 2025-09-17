#include <iostream>

using namespace std;

int fibonacci(int n) {
    if(n==0) return 0;
    if(n==1) return 1;
    return fibonacci(n-1)+fibonacci(n-2);
}

int main() {
    int n;
    
    cout<<"Insira um numero: ";
    cin>>n;
    cout<<"O numero da sequencia de fibonacci na posição "<<n<<" é: "<<fibonacci(n);

    return 0;
}

// Crie uma função recursiva chamada int fibonacci(int n).
// A função deve ter as seguintes regras:
//    - Se n for 0, retorne 0.
//    - Se n for 1, retorne 1.
// Para qualquer outro valor de n, retorne a soma dos dois números
// de Fibonacci anteriores, chamando a própria função: fibonacci(n-1) + fibonacci(n-2).
// No main, peça ao usuário para digitar um número n e imprima o
// resultado de fibonacci(n).
