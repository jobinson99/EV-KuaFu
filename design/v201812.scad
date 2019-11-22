////////////////////////////////////////////////////////
// 电动车-夸父 ev-kuafu
///////////////////////////////////////////////////////

use <utils/formed-material/formed-material.scad>
include <utils/material-color.scad>

module material_use () {

// 所用材料
 translate([-100,290,0]) bar_rectangle(80,40,2,10);
 translate([-100,240,0]) bar_rectangle(60,40,1.7,10);
 translate([-100,190,0])  bar_rectangle(60,40,1.2,10);

 translate([-100, 130,0]) bar_angle_equal(40,3.5,10);
 translate([-100,90,0])  bar_angle_equal(28,2.5,10);
}

module framework_bottom () {

     // 主轴
     rotate([0,90,0]) translate([0,270,40]) bar_rectangle(60,40,1.7,4000);
     rotate([0,90,0]) translate([0,-270,40]) bar_rectangle(60,40,1.7,4000);

     // 挡
     rotate([0,90,90]) translate([0,-40,-470]) bar_rectangle(80,40,2,980);
     rotate([0,90,90]) translate([0,-4080,-470]) bar_rectangle(80,40,2,980);

     // 主承架
     rotate([0,90,0]) translate([0,350,300]) bar_rectangle(80,40,2,900);
     rotate([0,90,0]) translate([0,-350,300]) bar_rectangle(80,40,2,900);
     rotate([0,90,0]) translate([0,350,2700]) bar_rectangle(80,40,2,900);
     rotate([0,90,0]) translate([0,-350,2700]) bar_rectangle(80,40,2,900);
     
// 托架
     rotate([11,90,0]) translate([90, -100,1250]) rotate([0,0,130]) bar_angle_equal(40,3.5,1500);
     rotate([-11,90,0]) translate([90, 100,1250]) rotate([0,0,130]) bar_angle_equal(40,3.5,1500);

//// 撑
     // 前
     rotate([-130,90,0]) translate([0, -615,-6]) bar_angle_equal(40,3.5,270);
     rotate([130,90,0]) translate([0, 535,-1228]) bar_angle_equal(40,3.5,270);

     rotate([-50,90,0]) translate([0, -587,-235]) bar_angle_equal(40,3.5,270);
     rotate([50,90,0]) translate([0,560,928]) bar_angle_equal(40,3.5,270);

     // 后
  
     rotate([-130,90,0]) translate([0, -2453,-1549]) bar_angle_equal(40,3.5,270);
     rotate([130,90,0]) translate([0, 2375,-2770]) bar_angle_equal(40,3.5,270);
%     rotate([-50,90,0]) translate([0, -2427,1309]) bar_angle_equal(40,3.5,270);
%     rotate([50,90,0]) translate([0, 2398,2469]) bar_angle_equal(40,3.5,270);      
     
     // 主轴 连接
     rotate([0,90,90]) translate([0,-440,-230]) bar_rectangle(60,40,1.7,500);
     rotate([0,90,90]) translate([0,-1080,-230]) bar_rectangle(60,40,1.7,500);
     rotate([0,90,90]) translate([0,-2850,-230]) bar_rectangle(60,40,1.7,500);
     rotate([0,90,90]) translate([0,-3490,-230]) bar_rectangle(60,40,1.7,500);

// 斜连
rotate([0,90,-57]) translate([0,1100,395]) bar_rectangle(60,40,1.2,620);
rotate([0,90,57]) translate([0,-1430,630]) bar_rectangle(60,40,1.2,620);     

rotate([0,90,-90]) translate([60,1900,-300]) bar_angle_equal(40,3.5,560);

rotate([0,90,-57]) translate([0,1800,847]) bar_rectangle(60,40,1.2,620);
     rotate([0,90,57]) translate([0,-2160,1105]) bar_rectangle(60,40,1.2,620);
     
     // 中部外翼
     rotate([0,90,0]) translate([0,710,1200]) bar_rectangle(60,40,1.7,1500);
     rotate([0,90,0]) translate([0,-710,1200]) bar_rectangle(60,40,1.7,1500);

     rotate([0,90,90]) translate([0,-1240,310]) bar_rectangle(60,40,1.7,400);
     rotate([0,90,90]) translate([0,-1240,-670]) bar_rectangle(60,40,1.7,400);
     rotate([0,90,90]) translate([0,-2700,310]) bar_rectangle(60,40,1.7,400);
     rotate([0,90,90]) translate([0,-2700,-670]) bar_rectangle(60,40,1.7,400);
// 中部外翼斜连接
rotate([0,90,57]) translate([0,-1050,1025]) bar_rectangle(60,40,1.2,500);
rotate([0,90,-57]) translate([0,2200,585]) bar_rectangle(60,40,1.2,500);
rotate([0,90,-57]) translate([0,1050,1005]) bar_rectangle(60,40,1.2,500);
     rotate([0,90,57]) translate([0,-2200,605]) bar_rectangle(60,40,1.2,500);
     
// 前后承架
    rotate([0,90,90]) translate([0,-300,310]) bar_rectangle(60,40,1.7,400);
    rotate([0,90,90]) translate([0,-300,-670]) bar_rectangle(60,40,1.7,400);
     rotate([0,90,90]) translate([0,-3640,310]) bar_rectangle(60,40,1.7,400);
     rotate([0,90,90]) translate([0,-3640,-670]) bar_rectangle(60,40,1.7,400);
 
// 前架
 rotate([0,90,0]) translate([0,710,60])  bar_rectangle(60,40,1.2,240);
 rotate([0,90,0]) translate([0,-710,60])  bar_rectangle(60,40,1.2,240);

 rotate([0,90,76]) translate([0,83,494])  bar_rectangle(60,40,1.2,250); 
 rotate([0,90,-76]) translate([0,-114,455])  bar_rectangle(60,40,1.2,250);
 
// 后架
 rotate([0,90,0]) translate([0,710,3600])  bar_rectangle(60,40,1.2,370);
 rotate([0,90,0]) translate([0,-710,3600])  bar_rectangle(60,40,1.2,370);

  rotate([0,90,-65]) translate([0,3873,1012])  bar_rectangle(60,40,1.2,250); 
  rotate([0,90,65]) translate([0,-3897,1048])  bar_rectangle(60,40,1.2,250);
 
}

// 车身
module framework_body(){
     // 前架
      translate([55,752,-60]) rotate([0,0,-90]) bar_angle_equal(28,2.5,300);
     translate([55,-712,-60])  bar_angle_equal(28,2.5,300);

     translate([325,752,-60]) rotate([0,0,180]) bar_angle_equal(28,2.5,500);
     translate([325,-712,-60]) rotate([0,0,90]) bar_angle_equal(28,2.5,500);

     // 部件固定
     translate([440,-200,-60])  bar_rectangle(60,40,1.2,550);
     translate([440,-310,-60])  bar_rectangle(60,40,1.2,550);
     
rotate([0,90,0]) translate([-440,753,300]) rotate([0,0,-90]) bar_angle_equal(28,2.5,900);
rotate([0,90,0]) translate([-440,-713,300]) bar_angle_equal(28,2.5,900);
     
rotate([0,90,90]) translate([-440,-925,-720]) rotate([0,0,90])
     bar_angle_equal(28,2.5,1470);

module seat () {
// 座椅底架
// 驾驶座
     rotate([90,90,0]) translate([-230,0,0]) bar_angle_equal(40,3.5,260);
     rotate([0,90,0]) translate([-230,0,0]) rotate([0,0,-90]) bar_angle_equal(40,3.5,330);
     rotate([90,90,0]) translate([-230,330,0]) rotate([0,0,-90]) bar_angle_equal(40,3.5,260);
     rotate([0,90,0]) translate([-230,-260,0]) bar_angle_equal(40,3.5,330);

// 椅腿
     translate([0,0,0]) rotate([0,0,-90]) bar_angle_equal(40,3.5,230);
     translate([330,0,0]) rotate([0,0,180]) bar_angle_equal(40,3.5,230);
     translate([0,-260,0]) bar_angle_equal(40,3.5,230);
     translate([330,-260,0]) rotate([0,0,90]) bar_angle_equal(40,3.5,230);
}

module seat_sub () {
// 副座
     rotate([90,90,0]) translate([-230,0,0]) bar_angle_equal(28,2.5,260);
     rotate([0,90,0]) translate([-230,0,0]) rotate([0,0,-90]) bar_angle_equal(28,2.5,330);
     rotate([90,90,0]) translate([-230,330,0]) rotate([0,0,-90])  bar_angle_equal(28,2.5,260);
     rotate([0,90,0]) translate([-230,-260,0]) bar_angle_equal(28,2.5,330);

// 椅腿
     translate([0,0,0]) rotate([0,0,-90]) bar_angle_equal(28,2.5,230);
     translate([330,0,0]) rotate([0,0,180]) bar_angle_equal(28,2.5,230);
     translate([0,-260,0]) bar_angle_equal(28,2.5,230);
     translate([330,-260,0]) rotate([0,0,90]) bar_angle_equal(28,2.5,230);
}

translate([1240, -270, -60]) seat ();
translate([1240, 570, -60]) seat_sub ();

// 车厢前柱
     translate([1198,752,-60]) rotate([0,0,-90]) bar_angle_equal(28,2.5,1000);
     translate([1198,-712,-60]) bar_angle_equal(28,2.5,1000);

     // 车箱后柱
     translate([1900,752,-60]) rotate([0,0,-90]) bar_angle_equal(28,2.5,1000);
     translate([1900,-712,-60]) bar_angle_equal(28,2.5,1000);
     
}

// 车顶棚
module framework_top() {
      rotate([0,90,90]) translate([0,0,100])  rotate([0,0,180])  bar_angle_equal(28,2.5,1200);
      rotate([0,90,0]) translate([0,1300,0])  rotate([0,0,180])  bar_angle_equal(28,2.5,2400);
      rotate([0,90,90]) translate([0,-2400,100])  rotate([0,0,90])  bar_angle_equal(28,2.5,1200);
      rotate([0,90,0]) translate([0,100,0]) rotate([0,0,90]) bar_angle_equal(28,2.5,2400);
}


// 外壳
module shell() {
     // 车前盖
     rotate([0,-90,0]) translate([0,-650,0]) cube([300,1300,10]);
     
     // 车前窗

     rotate([0,-60,0]) translate([350,0,80]) cube([1200,550,10]);
     rotate([0,-60,0]) translate([350,-550,80]) cube([1200,550,10]);
     
     // 车门

     
     // 太阳能电板
     rotate([0,1,0]) translate([800,-540,1400]) cube([1200,550,30]);
     rotate([0,1,0]) translate([800,60,1400]) cube([1200,550,30]);
     rotate([0,1,0]) translate([2010,-540,1400]) cube([1200,550,30]);
     rotate([0,1,0]) translate([2010,60,1400]) cube([1200,550,30]);
// 车后墙
     rotate([0,-90,0]) translate([0,-690,-1900]) cube([1300,1420,10]);

}

// 部件
module parts(){
// 电池组

     module battery_pack () {
	  cube([400,600,200]);
     }
     translate([20,-300,0]) battery_pack (); 
     
     // 方向盘

     module control_wheel () {
	  rotate_extrude (angle=360) translate([200,0,0]) circle(10);
	  rotate([90,0,-30]) cylinder(200, 20,10);
	  rotate([90,0,80]) cylinder(200, 20,10);
	  rotate([90,0,-160]) cylinder(200, 20,10);
	  cylinder(10,50,50);
     }

     translate([520,-100, -100])  rotate([0,36,-18]) cylinder(450,30,25);
     translate([780,-190, 280]) rotate([0,50,-18]) cylinder(450,25,17);
     translate([1100,-295,570]) rotate([0,50,0]) control_wheel();

     // 座椅

// 轮子
     module wheel() {
	  rotate([90,0,0]) cylinder(240,240,240);
     }
     translate([750,710,-110]) wheel();
     translate([750,-450,-110]) wheel();
     translate([3150,710,-110]) wheel();
     translate([3150,-450,-110]) wheel();
     rotate([90,0,0]) translate([750,-120,-700]) cylinder(1300,25,25);
     rotate([90,0,0]) translate([3100,-120,-700]) cylinder(1300,25,25);

}

/////////////////////////////////////////
// Test
/////////////////////////////////////////
// 比例尺 1：10
 color("black")
 scale([0.1,0.1,0.1]) framework_bottom();
scale([0.1,0.1,0.1]) framework_body();
% scale([0.1,0.1,0.1]) translate([800,-650,1200]) framework_top();
 % scale([0.1,0.1,0.1]) shell();


% scale([0.1,0.1,0.1]) parts();

// % scale([0.5,0.5,0.5]) material_use();
