using namespace std;

class Date {
private:
    int day;
    int mon;
    int year;
public:
    Date();

    Date(int day, int mon, int year);

    static void checkYear(Date);

    static void dayOfMon(Date);

    static void resultOfTwoDate();

};