#include <string>

using namespace std;

class Motor {
private:
    int ID;
    string motorType;
    int rentOneDay;
public:
    Motor();

    Motor(int ID, string motorType, int rentOneDay);


    //Getter and Setter:
    void setID(int ID);

    void setmotorType( string motorType);

    void setrentOneDay(int rentOneDay);

    int getID();

    string getmotorType();

    int getrentOneDay();

    //input Function:
    void input();

    //output Function:
    void output();

    //Bill
    void bill();
};