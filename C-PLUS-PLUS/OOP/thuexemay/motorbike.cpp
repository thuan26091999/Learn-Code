#include "motorbike.h"
#include <iostream>

Motor::Motor() {
    this->ID = 0;
    this->motorType = "";
    this->rentOneDay = 0 ;
}

Motor::Motor(int ID, string motorType, int rentOneDay) {
    this->ID = ID;
    this->motorType = motorType;
    this->rentOneDay = rentOneDay;
}

//getter and setter:
void Motor::setID(int ID) {
    this->ID = ID;
}

void Motor::setmotorType(string motorType) {
    this->motorType = motorType;
}

void Motor::setrentOneDay( int rentOneDay) {
    this->rentOneDay = rentOneDay;
}

int Motor::getID() {
    return this->ID;
}

string Motor::getmotorType() {
    return this->motorType;
}

int Motor::getrentOneDay() {
    return rentOneDay;
}

//input function:

void Motor::input() {

    int ID;
    cout << "\nID = ";
    cin >> ID;
    setID(ID);

    string motorType;
    cout << "\nMotorType = ";
    cin.ignore();
    getline(cin, motorType);
    setmotorType(motorType);

    int rentOneDay;
    cout << "\nRent One Day = ";
    cin >> rentOneDay;
    setrentOneDay(rentOneDay);

}

void Motor::output()  {
    cout << "\n------------------------------------------\n";
    cout << getID() << endl;
    cout << getmotorType() << endl;
    cout << getrentOneDay() << endl;
}


//Bill Function:

void Motor::bill() {
    int dayHire;
    int total;
    cout << "\nBạn muốn thuê bao nhiêu ngày ?  = ";
    cin >> dayHire;
    total = dayHire * getrentOneDay();
    cout << "\nSố tiền cần phải thanh toán là = " << total << endl;
}