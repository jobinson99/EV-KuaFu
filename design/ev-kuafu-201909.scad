////////////////////////////////////////////////////////
// 电动车-夸父 ev-kuafu
///////////////////////////////////////////////////////

use <utils/formed-material/formed-material.scad>
use <utils/formed-material/formed-link.scad>
include <utils/material-color.scad>

module material_use () {
}


module framework_bottom () {
// 主轴
     translate([0,250,100]) rotate([0,90,0]) formed_C(height = 150,flange_height=60,flange_width=20, thickness = 2, length = 3000);

     translate([3000,-250,100]) rotate([180,90,0]) formed_C(height = 150,flange_height=60,flange_width=20, thickness = 2, length = 3000);


     translate([0,650,100])  rotate([90,90,0]) formed_U(height = 150,flange_height=60, thickness = 2, length = 1300);
    
     translate([3000,-650,100])  rotate([-90,90,0]) formed_U(height = 150,flange_height=60, thickness = 2, length = 1300);     
    
//  中部外翼   
    
}
module framework_front () {
     // 前架
     translate([55,752,0]) rotate([0,0,-90]) bar_angle_equal(28,2.5,300);
     translate([55,-712,0])  bar_angle_equal(28,2.5,300);    
}

module framework_back () {
     // 后架
}


// 车身
module framework_body() {

     module seat_base() {
	  // 椅腿   
	  translate([0,0,0]) rotate([0,0,-90]) bar_angle_equal(40,3.5,230);
	  translate([330,0,0]) rotate([0,0,180]) bar_angle_equal(40,3.5,230);
	  translate([0,-700,0]) bar_angle_equal(40,3.5,230);
	  translate([330,-700,0]) rotate([0,0,90]) bar_angle_equal(40,3.5,230);  
    
// 驾驶安装座    
	  translate([0,0,230]) rotate([90,90,0])bar_angle_equal(40,3.5,700);
	  translate([330,-700,230]) rotate([-90,90,0]) bar_angle_equal(40,3.5,700);
    
	  translate([330,0,230]) rotate([180,90,0]) bar_angle_equal(40,3.5,330);    
	  translate([0,-260,230]) rotate([0,90,0]) bar_angle_equal(40,3.5,330);  
    
	  translate([330,-440,230]) rotate([180,90,0]) bar_angle_equal(40,3.5,330);
	  translate([0,-700,230]) rotate([0,90,0]) bar_angle_equal(40,3.5,330); 
  
     }

     % translate([1140, 350, 60]) seat_base();

// 仪表架


     // 操作台架
     
}

// 车顶棚
module framework_top() {
     translate([0,1200,0]) rotate([90,0,0]) bar_angle_equal(28,2.5,1200);
     translate([0,1200,0]) rotate([180,-90,0]) bar_angle_equal(28,2.5,2100);
     translate([2100,1200,0]) rotate([90,-90,0]) bar_angle_equal(28,2.5,1200);
     translate([2100,0,0]) rotate([180,-90,180])bar_angle_equal(28,2.5,2100);
}


// 外壳
module shell () {
     // 车前墙
    translate([0,-650,100]) rotate([0,-90,0]) cube([400,1300,10]); 

     // 车前盖和迎风玻璃
     % translate([0,0,500]) rotate([0,-30,0]) cube([1300,650,10]);
     % translate([0,-650,500]) rotate([0,-30,0]) cube([1300,650,10]);
    
     // 车门
    
// 车后盖
     % translate([1100,-700,1300])  rotate([0,20,0]) cube([2000,1400,10]); 
    
     // 太阳能电板
    color("grey") translate([1100,-650,1400]) rotate([0,20,0]) cube([1200,550,30]);
      color("grey") translate([1100,60,1400]) rotate([0,20,0]) cube([1200,550,30]);
     color("grey") translate([1900,-650,1050]) rotate([0,20,0]) cube([1200,550,30]);
      color("grey") translate([1900,60,1050]) rotate([0,20,0]) cube([1200,550,30]);  
    
     // 车后墙
     translate([3000,-700,100]) rotate([0,-90,0]) cube([400,1400,10]);  
    
}



// 部件
module parts () {
    
     // 电池组
     module battery_pack () {
	  cube([400,600,200]);
     }
     translate([1500,-300,20]) battery_pack();    
    
     // 方向盘
     module control_wheel () {
	  rotate_extrude (angle=360) translate([200,0,0]) circle(10);
	  rotate([90,0,-30]) cylinder(200, 20,10);
	  rotate([90,0,80]) cylinder(200, 20,10);
	  rotate([90,0,-160]) cylinder(200, 20,10);
	  cylinder(10,50,50);
     }

     translate([410,-100, -100]) rotate([0,36,-18]) cylinder(450,30,25);
     translate([670,-190, 280]) rotate([0,50,-18]) cylinder(450,25,17);
     translate([1000,-295,570]) rotate([0,50,0]) control_wheel();  


     // 仪表盘
     
     // 操作台
     
     module seat () {
// 驾驶座
	  translate([0,0,230]) rotate([90,90,0])bar_angle_equal(40,3.5,260);
	  rotate([0,90,0]) translate([-230,0,0]) rotate([0,0,-90]) bar_angle_equal(40,3.5,330);
	  rotate([90,90,0]) translate([-230,330,0]) rotate([0,0,-90]) bar_angle_equal(40,3.5,260);
	  rotate([0,90,0]) translate([-230,-260,0]) bar_angle_equal(40,3.5,330);
    
	  translate([0,-300,250]) cube([400,400,100]);
	  translate([400,-300,250]) rotate([100,0,90]) cube([400,700,100]);

     }

     module seat_sub () {
// 副座
	  rotate([90,90,0]) translate([-230,0,0]) bar_angle_equal(28,2.5,260);
	  rotate([0,90,0]) translate([-230,0,0]) rotate([0,0,-90]) bar_angle_equal(28,2.5,330);
	  rotate([90,90,0]) translate([-230,330,0]) rotate([0,0,-90])  bar_angle_equal(28,2.5,260);
	  rotate([0,90,0]) translate([-230,-260,0]) bar_angle_equal(28,2.5,330);
    
	  translate([0,-300,250]) cube([400,400,100]);
	  translate([400,-300,250]) rotate([100,0,90]) cube([400,700,100]);
    
     }
   
     translate([1140, -100, 60]) seat();
     translate([1140, 400, 60]) seat_sub();     
    
// 轮子
     module wheel() {
	  rotate([90,0,0]) cylinder(240,240,240);
     }
     translate([500,710,-110]) wheel();
     translate([500,-450,-110]) wheel();
     translate([2500,710,-110]) wheel();
     translate([2500,-450,-110]) wheel();
     translate([500,640,-110]) rotate([90,0,0])cylinder(1300,25,25);
     translate([2500,640,-110])  rotate([90,0,0]) cylinder(1300,25,25);

}



/////////////////////////////////////////
// Test
////////////////////////////////////////

module framework() {
     framework_bottom();
     framework_front();
     framework_body();
     framework_back();
     translate([1100,-650,1200]) rotate([0,20,0]) framework_top();    
}

module car() {
// 比例尺 1：10
     color("black") framework();
     
     shell();

     % parts();
    
}

scale([0.1,0.1,0.1]) car();

// % scale([0.5,0.5,0.5]) material_use();


