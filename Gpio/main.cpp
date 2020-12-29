#include "Gpio.h"
int main(){
  gpiOrange pin14("14");
  pin14.gpioExport();
  pin14.gpioSetDir("out");
  pin14.gpioGetVal("1");
  pin14.getGpioNum();
  //
  gpiOrange pin15("15");
  pin15.gpioExport();
  pin15.gpioSetDir("out");
  pin15.gpioGetVal("1");
  pin15.getGpioNum();

  gpiOrange pin16("16");
  pin16.gpioExport();
  pin16.gpioSetDir("out");
  pin16.gpioGetVal("1");
  pin16.getGpioNum();

  gpiOrange pin6("6");
  pin6.gpioExport();
  pin6.gpioSetDir("out");
  pin6.gpioGetVal("1");
  pin6.getGpioNum();

  gpiOrange pin11("11");
  pin11.gpioExport();
  pin11.gpioSetDir("out");
  pin11.gpioGetVal("1");
  pin11.getGpioNum();

  gpiOrange pin12("12");
  pin12.gpioExport();
  pin12.gpioSetDir("out");
  pin12.gpioGetVal("1");
  pin12.getGpioNum();

  gpiOrange pin1("1");
  pin1.gpioExport();
  pin1.gpioSetDir("out");
  pin1.gpioGetVal("1");
  pin1.getGpioNum();

  piOrange pin0("0");
  pin0.gpioExport();
  pin0.gpioSetDir("out");
  pin0.gpioGetVal("1");
  pin0.getGpioNum();

  piOrange pin3("3");
  pin3.gpioExport();
  pin3.gpioSetDir("out");
  pin3.gpioGetVal("1");
  pin3.getGpioNum();

  piOrange pin198("198");
  pin198.gpioExport();
  pin198.gpioSetDir("out");
  pin198.gpioGetVal("1");
  pin198.getGpioNum();

  piOrange pin199("199");
  pin199.gpioExport();
  pin199.gpioSetDir("out");
  pin199.gpioGetVal("1");
  pin199.getGpioNum();

  piOrange pin2("2");
  pin2.gpioExport();
  pin2.gpioSetDir("out");
  pin2.gpioGetVal("1");
  pin2.getGpioNum();

  piOrange pin7("7");
  pin7.gpioExport();
  pin7.gpioSetDir("out");
  pin7.gpioGetVal("1");
  pin7.getGpioNum();

  piOrange pin10("10");
  pin10.gpioExport();
  pin10.gpioSetDir("out");
  pin10.gpioGetVal("1");
  pin10.getGpioNum();

  piOrange pin13("13");
  pin13.gpioExport();
  pin13.gpioSetDir("out");
  pin13.gpioGetVal("1");
  pin13.getGpioNum();

  sleep(3);
  std::cout<<"switch off "<<endl;
  pin14.gpioUnexport();
  pin15.gpioUnexport();
  pin13.gpioUnexport();
  pin10.gpioUnexport();
  pin7.gpioUnexport();
  pin2.gpioUnexport();
  pin199.gpioUnexport();
  pin198.gpioUnexport();
  pin3.gpioUnexport();
  pin0.gpioUnexport();
  pin1.gpioUnexport();
  pin12.gpioUnexport();
  pin11.gpioUnexport();
  pin6.gpioUnexport();
  pin16.gpioUnexport();
  return 0;
  }
