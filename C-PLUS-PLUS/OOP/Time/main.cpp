#include <iostream>
#include "time.h"
using namespace std;

int main(){
    Time timeOne(1, 1, 1);
    Time timeTwo(23, 59, 59);
    Time timeThree;
    Time resultOne;

    // + - :
    resultOne = timeOne + timeTwo;
    cout << timeOne << " + " << timeTwo << " = " << resultOne << endl;
    resultOne = timeOne - timeTwo;
    cout << timeOne << " - " << timeTwo << " = " << resultOne << endl;

//    // >> :
    cin >> timeThree;
    cout << "timeThree = " << timeThree;

    //Compare:
    cout<<" \ntimeOne > timeTwo is ";
    timeOne>timeTwo;
    //....Done !!!!
}
