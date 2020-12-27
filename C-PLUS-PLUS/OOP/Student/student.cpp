#include "student.h"
#include <iostream>


//Seter:
void Student::setID(int ID) {
    this->ID = ID;
}
void Student::setname(string name) {
    this->name = name;
}
void Student::setlastNam(string lastName) {
    this->lastName = lastName;
}
void Student::setclassM(string classM) {
    this->classM = classM;

}
void Student::setpoint(double point) {
    this->point = point;
}
//geter:
int Student::getID() {
    return this->ID;
}
string Student::getname() {
    return this->name;
}

string Student::getlastName() {
    return this->lastName;
}
string Student::getclassM() {
    return this->classM;
}
double Student::getpoint() {
    return this->point;
}






void Student::input() {
    int ID;
    cout << "\nID  =";
    cin >> ID;
    setID(ID);

    string name;
    cout << "\nNAME  =";
    cin.ignore();
    getline(cin, name);
    setname(name);

    string lastName;
    cout << "\nLAST NAME = ";
    cin.ignore();
    getline(cin, lastName);
    setname(lastName);

    string classM;
    cout << "\nClass = ";
    cin.ignore();
    getline(cin, classM);
    setname(classM);

    double point;
    cout << "\nPOINT = ";
    cin>>point;
    setpoint(point);
}

void Student::output() {
    cout << "\nID = ";
    getID();
    cout<<"\nNAME = ";
    getname();
    cout<<"\nLAST NAME = ";
    getlastName();
    cout<<"\nCLASS = ";
    getclassM();
    cout<<"\nPOINT = ";
    getpoint();
}