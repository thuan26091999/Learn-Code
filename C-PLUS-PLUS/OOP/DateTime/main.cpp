#include <iostream>
#include "date.h"
using namespace std;

int main(){
    Date currentDate(20, 3, 2020);
    Date date1(15, 12, 2100);
    currentDate.checkYear(currentDate);
    date1.dayOfMon(date1);

    return 0;
}