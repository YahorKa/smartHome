#include "Gpio.h"

gpiOrange::gpiOrange(){
this->gpioNum="4";
}

gpiOrange::gpiOrange(std::string num){
  this->gpioNum=num;

}
int gpiOrange::gpioExport(){
  string root="/sys/class/gpio/export";
  ofstream file(root);

  if (!file.is_open()){
    std::cout<<"OPERATION FAULT : unable to export GPIO"<< this->gpioNum <<endl;
    return -1;
  }
  file << this->gpioNum;
  file.close();
  return 0;
}
//
int gpiOrange::gpioUnexport(){
  string unroot="/sys/class/gpio/unexport";
  ofstream file(unroot);
  if (!file.is_open()){
    std::cout<< "OPERATION FAULT : unable to unexport GPIO"<< this->gpioNum <<endl;
    return -1;
  }
  file << this->gpioNum;
  file.close();
  return 0;
}
//
int gpiOrange::gpioSetDir(string dir){
string rootDir="/sys/class/gpio/gpio"+this->gpioNum+"/direction";
ofstream fileDir(rootDir);
if (!fileDir.is_open()){
  std::cout<<"OPERATION FAULT : unable to set direction GPIO"<<this->gpioNum<<endl;
  return -1;
}

fileDir<< dir;
fileDir.close();
return 0;
}
//
int gpiOrange::gpioGetVal(string val){
  string rootVal="/sys/class/gpio/gpio"+this->gpioNum+"/value";
  ofstream fileVal(rootVal);
  if (!fileVal.is_open()){
    std::cout<<"OPERATION FAULT : unable to set value GPIO"<<this->gpioNum<<endl;
    return -1;
  }
  fileVal<< val;
  fileVal.close();
  return 0;
}
//
string gpiOrange::getGpioNum(){
  std::cout<<this->gpioNum<<endl;
  return this->gpioNum;
}
