#include <iostream>
using namespace std;
class Time{
public:
    int hour;
    int min;
    int sec;
public:
    Time();

    Time(int hour, int min, int sec);

    //Function TimeX+TimeY:
    Time operator+(Time time);

    //Function TimeX-TimeY:
    Time operator-(Time time);

    //Function ++Time:
    Time operator++();

    //Function Time++:
    Time operator++(int);

    //Function Time--:
    Time operator--();

    //Function --Time:
    Time operator--(int);

    //Function Compare:
    //   >
    void operator>(Time time);

    //  <
    void operator<(Time time);

    // ==
    void operator==(Time time);

    // !=
    void operator!=(Time time);

    //Function >> :
    friend istream& operator>>(istream& in,Time& time);

    //Function << :
    friend ostream& operator<<(ostream& out, Time& time);

};