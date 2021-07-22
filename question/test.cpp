#include <iostream>

using namespace std;

void print(unsigned long i) {
    cout << i << endl;
}

int main() {
    for (int i = 1; i < 4; ++i) {
        print(i);
    }
    return 0;
}