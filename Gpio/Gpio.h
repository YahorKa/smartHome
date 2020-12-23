 #ifndef Gpio_h
 #define Gpio_h
 #include <iostream>
 #include <fstream>
 #include <string>
 #include <unistd.h>
 using namespace std;


#include <string>
class gpiOrange {
public:
  gpiOrange();
  gpiOrange(string gpioNum);
  int gpioExport();
  int gpioUnexport();
  int gpioSetDir(string dir);
  int gpioGetVal(string val);
  string getGpioNum();
private:
  std::string gpioNum;
};
#endif
