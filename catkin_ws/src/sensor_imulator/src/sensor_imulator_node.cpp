#include "ros/ros.h"
#include "std_msgs/Float32.h"
#include <can_msgs/Frame.h>
#include <sstream>
#include "time.h"
#include <random>
ros::Publisher chatter_pub;
ros::Publisher chatter_pub1;
ros::Publisher chatter_pub2;
ros::Time ros_time;
int arr[3]={0,0,0};
float_t ar[8];
uint32_t t1;
double t;
double v;
double timer;
double x0;
double x;
double pos1;
class vihicle_model{
public:
  std::normal_distribution <double> d1;
  std::normal_distribution <double> d2;
  std::normal_distribution <double> d3;
  std::normal_distribution <double> d4;
  std::normal_distribution <double> d5;
  std::normal_distribution <double> d6;
  std::default_random_engine generator;
  vihicle_model(double n1,double n2,double n3,double n4,double n5,double n6) :
    d1{0,n1},
    d2{0,n2},
    d3{0,n3},
    d4{0,n4},
    d5{0,n5},
    d6{0,n6}
  {}
  void get_speed1(){
    v=10* sin(t);
    v+=d1(generator);
  }
  void get_speed2(){
    v= sin(t);
    v+=d2(generator);
  }
  void get_speed3(){
    v= sin(t);
    v+=d3(generator);
  }
  void get_speed4(){
    v= sin(t);
    v+=d4(generator);
  }
  void get_speed5(){
    v= sin(t);
    v+=d5(generator);
  }
  void get_speed6(){
    v= sin(t);
    v+=d6(generator);
  }
  void get_accelerate1(){
    double acc=10*cos(t);
  }
  void get_pos(){
  pos1=-10*cos(t);
  }
private:
};
vihicle_model ins{0.1,2,3,4,5,6};
void callback1(const ros::TimerEvent& ev){
  ros_time=ros::Time::now();
  t=ros_time.toSec();
  t=(t-t1)/4;
  ins.get_speed1();
  ins.get_pos();
  //x0=x0+ins.get_pos();
  int ptr= v*100;
  arr[0]=ptr & 0xff;
  arr[1]=(ptr>>8) & 0xff;
  arr[2]=(ptr>>16) & 0xff;
  can_msgs::Frame msg;
  std_msgs::Float32 speed;
  std_msgs::Float32 pos;
  msg.id = 0x610;
  msg.header.frame_id = "0";
  msg.is_extended = false;
  msg.is_rtr = false;
  msg.is_error = false;
  msg.dlc = 8;
  msg.data[0] =arr[0];
  msg.data[1] =arr[1];
  msg.data[2] =arr[2];
  msg.data[3] =0;
  msg.data[4] =0;
  msg.data[5] =0;
  msg.data[6] =0;
  msg.data[7] =0;
  speed.data=v;
  pos.data=pos1;
  chatter_pub.publish(msg);
  chatter_pub1.publish(speed);
  chatter_pub2.publish(pos);
  ROS_INFO(" speed%lf pos%lf ID%u [%d %d %d %d  %d %d %d %d]", v,x0,msg.id, msg.data[0], msg.data[1], msg.data[2], msg.data[3], msg.data[4], msg.data[5], msg.data[6], msg.data[7]);
}
void callback2(const ros::TimerEvent& ev){
    ros_time=ros::Time::now();
    t=ros_time.sec;
    t= t-t1;
    ins.get_speed2();
    ins.get_pos();
  //  x0=x0+ins.get_pos();
    int ptr= v*100;
    arr[0]=ptr & 0xff;
    arr[1]=(ptr>>8) & 0xff;
    arr[2]=(ptr>>16) & 0xff;
    can_msgs::Frame msg;
    std_msgs::Float32 speed;
    msg.id = 0x620;
    msg.header.frame_id = "0";  // "0" for no frame.
    msg.is_extended = false;
    msg.is_rtr = false;
    msg.is_error = false;
    msg.dlc = 8;
    msg.data[0] =arr[0];
    msg.data[1] =arr[1];
    msg.data[2] =arr[2];
    msg.data[3] =0;
    msg.data[4] =0;
    msg.data[5] =0;
    msg.data[6] =0;
    msg.data[7] =0;
    speed.data=v;
    chatter_pub.publish(msg);
    //chatter_pub1.publish(speed);
    ROS_INFO("speed%f pos%lf ID%u [%d %d %d %d  %d %d %d %d]", v,x0,msg.id, msg.data[0], msg.data[1], msg.data[2], msg.data[3], msg.data[4], msg.data[5], msg.data[6], msg.data[7]);
}
void callback3(const ros::TimerEvent& ev){
  ros_time=ros::Time::now();
  t=ros_time.sec;
  t= t-t1;
  ins.get_speed3();
  ins.get_pos();
  //x0=x0+ins.get_pos();
  int ptr= v*100;
  arr[0]=ptr & 0xff;
  arr[1]=(ptr>>8) & 0xff;
  arr[2]=(ptr>>16) & 0xff;
  can_msgs::Frame msg;
  msg.id = 0x630;
  msg.header.frame_id = "0";  // "0" for no frame.
  msg.is_extended = false;
  msg.is_rtr = false;
  msg.is_error = false;
  msg.dlc = 8;
  msg.data[0] =arr[0];
  msg.data[1] =arr[1];
  msg.data[2] =arr[2];
  msg.data[3] =0;
  msg.data[4] =0;
  msg.data[5] =0;
  msg.data[6] =0;
  msg.data[7] =0;
  chatter_pub.publish(msg);
  ROS_INFO("speed%f pos%lf ID%u [%d %d %d %d  %d %d %d %d]", v,x0,msg.id, msg.data[0], msg.data[1], msg.data[2], msg.data[3], msg.data[4], msg.data[5], msg.data[6], msg.data[7]);
}
void callback4(const ros::TimerEvent& ev){
  ros_time=ros::Time::now();
  t=ros_time.sec;
  t= t-t1;
  ins.get_speed4();
  ins.get_pos();
//  x0=x0+ins.get_pos();

  int ptr= v*100;
  arr[0]=ptr & 0xff;
  arr[1]=(ptr>>8) & 0xff;
  arr[2]=(ptr>>16) & 0xff;
  can_msgs::Frame msg;
  msg.id = 0x640;
  msg.header.frame_id = "0";  // "0" for no frame.
  msg.is_extended = false;
  msg.is_rtr = false;
  msg.is_error = false;
  msg.dlc = 8;
  msg.data[0] =arr[0];
  msg.data[1] =arr[1];
  msg.data[2] =arr[2];
  msg.data[3] =0;
  msg.data[4] =0;
  msg.data[5] =0;
  msg.data[6] =0;
  msg.data[7] =0;
  chatter_pub.publish(msg);
  ROS_INFO("speed%f pos%lf ID%u [%d %d %d %d  %d %d %d %d]", v,x0,msg.id, msg.data[0], msg.data[1], msg.data[2], msg.data[3], msg.data[4], msg.data[5], msg.data[6], msg.data[7]);
}
void callback5(const ros::TimerEvent& ev){
  ros_time=ros::Time::now();
  t=ros_time.sec;
  t= t-t1;
  ins.get_speed5();
  ins.get_pos();
//  x0=x0+ins.get_pos();
  int ptr= v*100;
  arr[0]=ptr & 0xff;
  arr[1]=(ptr>>8) & 0xff;
  arr[2]=(ptr>>16) & 0xff;
  can_msgs::Frame msg;
  msg.id = 0x650;
  msg.header.frame_id = "0";  // "0" for no frame.
  msg.is_extended = false;
  msg.is_rtr = false;
  msg.is_error = false;
  msg.dlc = 8;
  msg.data[0] =arr[0];
  msg.data[1] =arr[1];
  msg.data[2] =arr[2];
  msg.data[3] =0;
  msg.data[4] =0;
  msg.data[5] =0;
  msg.data[6] =0;
  msg.data[7] =0;
  chatter_pub.publish(msg);
  ROS_INFO("speed%f pos%lf ID%u [%d %d %d %d  %d %d %d %d]", v,x0,msg.id, msg.data[0], msg.data[1], msg.data[2], msg.data[3], msg.data[4], msg.data[5], msg.data[6], msg.data[7]);
}
void callback6(const ros::TimerEvent& ev){
  ros_time=ros::Time::now();
  t=ros_time.sec;
  t= t-t1;
  ins.get_speed6();
  ins.get_pos();
  //x0=x0+ins.get_pos();
  int ptr= v*100;
  arr[0]=ptr & 0xff;
  arr[1]=(ptr>>8) & 0xff;
  arr[2]=(ptr>>16) & 0xff;
  can_msgs::Frame msg;
  msg.id = 0x660;
  msg.header.frame_id = "0";  // "0" for no frame.
  msg.is_extended = false;
  msg.is_rtr = false;
  msg.is_error = false;
  msg.dlc = 8;
  msg.data[0] =arr[0];
  msg.data[1] =arr[1];
  msg.data[2] =arr[2];
  msg.data[3] =0;
  msg.data[4] =0;
  msg.data[5] =0;
  msg.data[6] =0;
  msg.data[7] =0;
  chatter_pub.publish(msg);
  ROS_INFO("speed%f pos%lf ID%u [%d %d %d %d  %d %d %d %d]", v,x0,msg.id, msg.data[0], msg.data[1], msg.data[2], msg.data[3], msg.data[4], msg.data[5], msg.data[6], msg.data[7]);
}
int main(int argc, char **argv)
{
  ros::init(argc, argv, "talker");
  ros::NodeHandle n;
  ros_time=ros::Time::now();
  t1=ros_time.sec;
  chatter_pub = n.advertise<can_msgs::Frame>("chatter", 1000);
  chatter_pub1 = n.advertise<std_msgs::Float32>("speed", 1000);
  chatter_pub2 = n.advertise<std_msgs::Float32>("pos", 1000);
  ros::Timer timer1=n.createTimer(ros::Duration(0.1), callback1);
  ros::Timer timer2=n.createTimer(ros::Duration(0.1), callback2);
  ros::Timer timer3=n.createTimer(ros::Duration(0.1), callback3);
  ros::Timer timer4=n.createTimer(ros::Duration(0.1), callback4);
  ros::Timer timer5=n.createTimer(ros::Duration(0.1), callback5);
  ros::Timer timer6=n.createTimer(ros::Duration(0.1), callback6);
  ros::spin();
  return 0;
}
