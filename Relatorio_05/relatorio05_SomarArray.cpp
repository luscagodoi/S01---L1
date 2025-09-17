#include <iostream>

using namespace std;

float somarArray(float arr[], int tamanho){
    float sum = 0;
    
    for(int i=0; i<tamanho; i++){
        sum += arr[i];
    }
    
    return sum;
}

int main() {
    int n = 6;
    cout<<"Insira um tamanho para o array: ";
    cin>>n;
    float array[n];
    
    cout<<"Insira os valores para o array:\n";
    for(int i=0; i<n; i++){
        cin>>array[i];
    }
    
    cout<<"A soma dos valores do array é: "<<somarArray(array, n);

    return 0;
}

// Crie uma função float somarArray(float arr[], int tamanho).
// A função deve receber um array de inteiros (int arr[]) e seu
// tamanho (int tamanho) como parâmetros.
// Some os valores que estão guardados no array.
// Retorne o valor final da soma.
// Na main, faça a entrada de valores em um array de float.
// Chame a função somarArray com o array e seu tamanho, e
// imprima o resultado.
