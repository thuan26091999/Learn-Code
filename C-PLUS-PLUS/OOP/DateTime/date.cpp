#include "date.h"
#include <iostream>
using namespace std;
Date::Date() {
    this->day = 0;
    this->mon = 0;
    this->year = 0;
}

Date::Date(int day, int mon, int year) {
    this->day = day;
    this->mon = mon;
    this->year = year;
}

 void Date::checkYear(Date currentDate) {
     if (currentDate.year % 400 == 0|| currentDate.year % 4 == 0 && currentDate.year % 100 !=0) {
         cout << currentDate.year << " la nam Nhuan" << endl;
     } else{
         cout << currentDate.year << " khong la nam Nhuan" << endl;
     }
}

void Date::dayOfMon(Date currentDate) {
    int monInput;
    cout << "Ban Muon Kiem tra thang nao : ";
    cin >> monInput;
    switch (monInput) {
        case 1:
            cout << "Thang 1 co 31 ngay" << endl;
            break;
        case 2:
            if (currentDate.year % 400 == 0|| currentDate.year % 4 == 0 && currentDate.year % 100 !=0) {
                cout << "Thang 2 co 29 ngay" << endl;
                break;
            } else{
                cout << "thang 2 co 28 ngay" << endl;
                break;
            }
        case 3:
            cout << "Thang 3 co 31 ngay" << endl;
            break;
        case 4:
            cout << "Thang 4 co 30 ngay" << endl;
            break;
        case 5:
            cout << "Thang 5 co 31 ngay" << endl;
            break;
        case 6:
            cout << "Thang 6 co 30 ngay" << endl;
            break;
        case 7:
            cout << "Thang 7 co 31 ngay" << endl;
            break;
        case 8:
            cout << "Thang 8 co 31 ngay" << endl;
            break;
        case 9:
            cout << "Thang 9 co 30 ngay" << endl;
            break;
        case 10:
            cout << "Thang 10 co 31 ngay" << endl;
            break;
        case 11:
            cout << "Thang 11 co 30 ngay" << endl;
            break;
        case 12:
            cout << "Thang 12 co 31 ngay" << endl;
            break;
    }
}

void Date::resultOfTwoDate() {

}