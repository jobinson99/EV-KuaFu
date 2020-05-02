////////////////////////////////////////////////////////
// 电动车-夸父 ev-kuafu
///////////////////////////////////////////////////////

use <utils/formed-material/formed-material.scad>
include <utils/material-color.scad>

module material_use () {
    }
    
    
module framework_bottom () {
// 主轴

     
}

// 车身
module framework_body() {
     
}

// 车顶棚
module framework_top () {
     
}

// 外壳
module shell (){
     
}

// 部件
module parts(){
// 轮子
module wheel() {
	  rotate([90,0,0]) cylinder(240,240,240);
     }
     translate([750,710,-110]) wheel();
     translate([750,-450,-110]) wheel();
     translate([2150,710,-110]) wheel();
     translate([2150,-450,-110]) wheel();
     rotate([90,0,0]) translate([750,-120,-700]) cylinder(1300,25,25);
     rotate([90,0,0]) translate([2100,-120,-700]) cylinder(1300,25,25);

}

/////////////////////////////////////////
// Test
/////////////////////////////////////////

// 比例尺 1：10
scale([0.1,0.1,0.1]) framework_bottom();
framework_body();
framework_top();
shell();

% scale([0.1,0.1,0.1]) parts();

// % scale([0.5,0.5,0.5]) material_use();
