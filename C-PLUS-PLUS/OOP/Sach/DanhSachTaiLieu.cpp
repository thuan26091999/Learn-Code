#include "DanhSachTaiLieu.h"
#include <iostream>

using namespace std;

 void DanhSachTaiLieu::input() {
     int luaChon;
     while (true) {
        cout << "\n\n\t\t========Thu Vien Sach========" << endl;
        cout << "\t\t1. Nhap Danh Sach Sach" << endl;
        cout << "\t\t2. Nhap Danh Sach Giao Trinh" << endl;
        cout << "\t\t0. Thoat" << endl;
        cout << "\n\n\t\t========End========" << endl;
        cout << "\n\n\t\tNhap Lua chon = ";
        cin >> luaChon;
        if (luaChon == 1) {
            Sach a;
            a.input();
            dsSach.push_back(a);
        } else if (luaChon == 2) {
            GiaoTrinh x;
            x.input();
            dsGiaoTrinh.push_back(x);
        } else if (luaChon == 0) {
            break;
        } else {
            cout << "\nLua Chon Khong Hop Le, Vui Long Nhap Lai ." << endl;
        }
    }
}


void DanhSachTaiLieu::output() {
    for (int i = 0; i <dsGiaoTrinh.size() ; i++) {
        cout << "\nGiao Trinh Thu" << i + 1;
        dsGiaoTrinh[i].output();
    }
 }