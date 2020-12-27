#include "Sach.h"
#include <iostream>
using namespace std;
Sach::Sach() {
    this->ID = 0;
    this->tieuDe = "";
    this->tacGia = "";
    this->namSX = 0;
    this->nhaSB = "";
}

void Sach::input() {
    cout << "\nNhap ID = ";
    cin >> this->ID;
    cout << "\nNhap Tieu De = ";
    cin.ignore();
    getline(cin, this->tieuDe);
    cout << "\nNhap Tac Gia = ";
    getline(cin, this->tacGia);
    cout << "\nNhap Nam San Xuat = ";
    cin >> this->namSX;
    cout << "\nNhap Nha Xuat Ban = ";
    cin.ignore();
    getline(cin, this->nhaSB);
}

void Sach::output() {
    cout << this->ID << endl;
    cout << this->tieuDe << endl;
    cout << this->tacGia << endl;
    cout << this->namSX << endl;
    cout << this->nhaSB << endl;
}