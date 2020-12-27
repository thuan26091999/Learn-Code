#include <iostream>
#include "time.h"
using namespace std;

//Initilization:
Time::Time() {
    this->hour=0;
    this->min = 0;
    this->sec = 0;
}
Time::Time(int hour, int min, int sec) {
    this->hour = hour;
    this->min = min;
    this->sec = sec;
}

//Function TimeX+TimeY:
Time Time::operator+(Time time) {
    int currentSec;
    Time result;
    currentSec = this->sec+time.sec+(this->min+time.min)*60+(this->hour+time.hour)*3600;
    result.hour = currentSec/3600;
    result.min = (currentSec - (int(currentSec/3600)*3600))/60;
    result.sec = currentSec - int(currentSec/3600)*3600-int((currentSec - (int(currentSec/3600)*3600))/60)*60;
    if (result.hour>23) {
        result.hour-=24;
    }
    return result;
}

//Function TimeX-TimeY:
Time Time::operator-(Time time) {
    int currentSec;
    Time result;
    currentSec = this->sec-time.sec+(this->min-time.min)*60+(this->hour-time.hour)*3600;
    result.hour = currentSec/3600;
    result.min = (currentSec - (int(currentSec/3600)*3600))/60;
    result.sec = currentSec - int(currentSec/3600)*3600-int((currentSec - (int(currentSec/3600)*3600))/60)*60;
    if (result.hour<0) {
        result.hour+=24;
    }
    if (result.min < 0) {
        result.min+=60;
    }
    if (result.sec < 0) {
        result.sec+=60;
    }
    return result;
}

//Function ++Time:
Time Time::operator++() {
    ++this->sec;
    if (this->sec >= 60) {
        ++this->min;
        this->sec-=60;
    }
    if (this->min >= 60) {
        ++this->hour;
        this->min -= 60;
    }
    if (this->hour >= 24) {
        this->hour -= 24;
    }
    return Time(this->hour,this->min,this->sec);
}

//Function Time++:
Time Time::operator++(int) {

    //Save Current Time :
    Time time(this->hour, this->min,this->sec) ;

    //Time ++:
    ++this->sec;
    if (this->sec >= 60) {
        ++this->min;
        this->sec-=60;
    }
    if (this->min >= 60) {
        ++this->hour;
        this->min -= 60;
    }
    if (this->hour >= 24) {
        this->hour -= 24;
    }
    //return object Time:
    return time;
}

//Function --Time:
Time Time::operator--() {
    --this->sec;
    if (this->sec < 0) {
        --this->min;
        this->sec+=60;
    }
    if (this->min < 0) {
        --this->hour;
        this->min += 60;
    }
    if (this->hour < 0) {
        this->hour += 24;
    }
    return Time(this->hour,this->min,this->sec);
}

//Function Time--:
Time Time::operator--(int) {
    //Save Current Time:
    Time time(this->hour,this->min, this->sec);
    //Time--:
    --this->sec;
    if (this->sec < 0) {
        --this->min;
        this->sec+=60;
    }
    if (this->min < 0) {
        --this->hour;
        this->min += 60;
    }
    if (this->hour < 0) {
        this->hour += 24;
    }
    return time;
}

//Function Compare > :
void Time::operator>(Time time) {
    int currentSec;
    currentSec = this->sec-time.sec+(this->min-time.min)*60+(this->hour-time.hour)*3600;
    if (currentSec > 0) {
        cout << "True" << endl;
    } else cout << "False" << endl;

}

//Function Compare < :
void Time::operator<(Time time) {
    int currentSec;
    currentSec = this->sec-time.sec+(this->min-time.min)*60+(this->hour-time.hour)*3600;
    if (currentSec < 0) {
        cout << "True" << endl;
    } else cout << "False" << endl;

}

//Function Compare == :
void Time::operator==(Time time) {
    int currentSec;
    currentSec = this->sec-time.sec+(this->min-time.min)*60+(this->hour-time.hour)*3600;
    if (currentSec == 0) {
        cout << "True" << endl;
    } else cout << "False" << endl;

}

//Function Compare != :
void Time::operator!=(Time time) {
    int currentSec;
    currentSec = this->sec-time.sec+(this->min-time.min)*60+(this->hour-time.hour)*3600;
    if (currentSec != 0) {
        cout << "True" << endl;
    } else cout << "False" << endl;

}

//Function >> :
istream &operator>>(istream &in, Time &time) {
    cout << "\nTime Is : " << endl;
    cout << "\nhour = ";
    in >> time.hour;
    cout<<"\nmin = ";
    in >> time.min;
    cout<<"\nsec = ";
    in >> time.sec;
    cout << endl;
}

//Function << :
ostream &operator<<(ostream &out, Time &time) {
    out<< time.hour << "h:" << time.min << "m:" << time.sec << "s ";
}
//Done !!!
