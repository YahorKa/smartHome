#include "Gpio.h"
int main(){
  gpiOrange lightRed("14");
  lightRed.gpioExport();
  lightRed.gpioSetDir("in");
  lightRed.gpioGetVal("1");
  lightRed.getGpioNum();
  //
  gpiOrange lightRedO("15");
  lightRedO.gpioExport();
  lightRedO.gpioSetDir("out");
  lightRedO.gpioGetVal("0");
  lightRedO.getGpioNum();

  sleep(3);
  std::cout<<"switch off "<<endl;
  lightRed.gpioUnexport();
  lightRedO.gpioUnexport();
return 0;
  }
