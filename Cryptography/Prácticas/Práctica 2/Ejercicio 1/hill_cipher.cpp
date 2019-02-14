#include <bits/stdc++.h>

using namespace std;

const int MAX_VAL = 127;
const int MIN_VAL = 32;

typedef long long int lli;
typedef vector<vector<lli>> Matrix;

lli euclides(lli a, lli b, lli &x, lli &y, lli mod = 0){
    if(!b){
        x = 1;
        y = 0;
        return a;
    }
    lli gcd = euclides(b, a % b, x, y, mod);
    x = (!mod) ? x - y * (a / b) : (mod + x - (y * (a / b)) % mod) % mod;
    swap(x, y);
    return gcd;
}

lli inverse(int a, int b){
    lli x = 0, y = 0, ans = 0;
    if(euclides(a, b, x, y, 0) == 1){
        ans = (x < 0) ? b - x : x;
    }
    return ans;
}

Matrix getInverseMatrix(Matrix matrix, lli mod_inverse){

    for(int i = 0; i < matrix.size(); i++)
        for(int j = 0; j < matrix[i].size(); j++)
            matrix[i][j] *= mod_inverse;
    return matrix; 
}

lli det(Matrix &matrix){
    return matrix[0][0]*matrix[1][1] * matrix[2][2] + matrix[0][1]*matrix[1][2]*matrix[2][0] + matrix[0][2]*matrix[1][0]*matrix[2][1] 
    - matrix[0][2]*matrix[1][1]*matrix[2][0] - matrix[0][1]*matrix[1][0]*matrix[2][2] - matrix[0][0]*matrix[1][2]*matrix[2][1];
}

Matrix getMatrix(){
    Matrix matrix(3, vector<lli>(3));
    for(int i = 0; i < 3; i++){
        for(int j = 0; j < 3; j++)
            matrix[i][j] = rand() % 27;
    }
    return matrix;
}

lli multiply(){
    
}

string cipher(Matrix matrix, string str){
    
    for(int i = 0, j = 0; i < str.size(); i++){
        
    }
}

void imprimir(Matrix &matrix){
    for(int i = 0; i < matrix.size(); i++){
        cout << endl;
        for(int j = 0; j < matrix[i].size(); j++){
            cout << matrix[i][j] << " ";
        }   
    }
}

int main(){
    Matrix matrix = getMatrix();
    cout << det(matrix) << endl;
    cout << "Modular inverse " << inverse(det(matrix), 96) << endl;
    return 0;
}