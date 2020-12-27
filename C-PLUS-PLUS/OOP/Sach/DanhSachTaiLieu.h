#include<vector>
#include "GiaoTrinh.h"
using namespace std;

class DanhSachTaiLieu {
private:
    vector<Sach> dsSach;
    vector<GiaoTrinh> dsGiaoTrinh;

public:
    [[noreturn]] void input();

    void output();

    void demSach();
};

