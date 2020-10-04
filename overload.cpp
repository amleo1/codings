// Program to compute absolute value
// Works for both int and float

#include <iostream>
using namespace std;

// function with float type parameter
float absolute(float var){
    if (var < 0.0)
        var = -var;
    return var;
}

// function with int type parameter
int absolute(int var) {
     if (var < 0)
         var = -var;
    return var;
}

int main() {
    
    // call function with int type parameter
    cout << "Absolute value of -3 = " << absolute(-3) << endl;

    // call function with float type parameter
    cout << "Absolute value of 5.4 = " << absolute(5.4f) << endl;
    return 0;
}
