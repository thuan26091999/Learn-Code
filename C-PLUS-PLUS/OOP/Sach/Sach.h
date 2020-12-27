#include <string>
using namespace std;


class Sach {
protected:
    int ID;
    string tieuDe;
    string tacGia;
    int namSX;
    string nhaSB;
public:
    Sach();

    void input();

    void output();
};