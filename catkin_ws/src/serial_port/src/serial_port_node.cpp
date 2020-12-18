#include "ros/ros.h"
#include <stdexcept>
#include <limits>
//
#include "serial/serial.h"
#include <exception>
#include "std_msgs/String.h"
#include <sstream>
#include "ros/node_handle.h"

//socat PTY,link=/dev/ttyS10 PTY,link=/dev/ttyS11
std::string buffer;
size_t size;
std::string eol("\n");
serial::Serial my_serial;  //"/dev/ttyS0");
std_msgs::String serial_msg;

void readGPRMC() {
  int count;
  char inChar[20];
  

}


int main(int argc, char **argv)
{
  ros::init(argc, argv,"GPS");

ros::NodeHandle n;
ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);
ros::Rate loop_rate(500);
my_serial.setPort("/dev/ttyS3");
my_serial.setBaudrate(9600);
serial::Timeout t = serial::Timeout::simpleTimeout(1000);
my_serial.setTimeout(t);
try {
  my_serial.open();
}
catch ( serial::IOException& e) {
  ROS_ERROR(" %s Error to open port ", e.what());
  return -1;
}
if(my_serial.isOpen()){
  ROS_INFO("serial port initialized");
  }else {
  return -1;
}
// while (ros::ok()){
//   size=my_serial.available();
//   size_t countToRead = std::min(size,(size_t)1024);
//   if (countToRead > 0){
//     uint8_t buffer[1024];
//     size = my_serial.read(buffer,countToRead);
//     //int n=sizeof(buffer)/sizeof(buffer[0]);
//     std::cout << "buffer[" << countToRead <<"]: ";
//     for (int i = 0; i < countToRead; i++){
//       std::cout << (int) buffer[i] << " ";
//     }
//     std::cout << "\n";
//   }

  while (ros::ok()){
    char Buffer;
    size=my_serial.available();
    size_t countToRead = std::min(size,(size_t)1024);
    if (countToRead > 0){
      my_serial.readline(buffer);
        for (int i = 0; i < countToRead; i++){
          Buffer=buffer[i];
          if(strncmp(&Buffer,"$GPRMC", 6) == 0){
            readGPRMC();
            }

        }
  }
//  chatter_pub.publish(serial_msg);
//  ros::spinOnce();
  loop_rate.sleep();
}
return 0;
}
//__________________________________________________
// int configMask[4];
// int clearMask=
// UBX-CFG-NMEA
// UBX-CFG-GNSS
// UBX-CFG-ANT
// UBX-RXM-SFRBX
