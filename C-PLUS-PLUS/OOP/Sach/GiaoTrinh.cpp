
#include "GiaoTrinh.h"
#include <iostream>
using namespace std;
GiaoTrinh::GiaoTrinh() {
    Sach();
    this->chuyenNganh = "";
}

void GiaoTrinh::input() {
    Sach::input();
    cout << "\nChuyen Nganh = ";
    getline(cin, this->chuyenNganh);
}

void GiaoTrinh::output() {
    Sach::output();
    cout << this->chuyenNganh << endl;
}