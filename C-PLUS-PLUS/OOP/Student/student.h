#include <string>
using namespace std;

class Student {
private:
    int ID;
    string name;
    string lastName;
    string classM;
    double point;
public:
    void input();

    void output();

    //seter:
    void setID(int ID);
    void setname(string name);
    void setlastNam(string lastName);
    void setclassM(string classM);
    void setpoint(double point);

    //geter:
    int getID();
    string getname();
    string getlastName();
    string getclassM();
    double getpoint();

};