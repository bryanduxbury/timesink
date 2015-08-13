t = 5;
l = 0.005 * 25.4;

module chain_hull() {
  for (i=[0:$children-2]) {
    hull() {
      child(i);
      child(i+1);
    }
  }
}

module frontback() {
  
}

module middle() {
  difference() {
    translate([-100, 0, 0]) square(size=[100, 50]);
    
    translate([-25, 25, 0]) chain_hull() {
      translate([25 - 3 - 1.5, -30, 0]) 
        square(size=[3, 3], center=true);

      translate([25 - 3 - 1.5, 25 - 10, 0]) 
        circle(r=1.5, $fn=12);

      translate([25 - 9 - 1.5, 25 - 10, 0]) 
        circle(r=1.5, $fn=12);

      translate([25 - 9 - 1.5, -25 + 4.5, 0]) 
        circle(r=1.5, $fn=12);

      translate([0, -25 + 4.5, 0]) 
        circle(r=1.5, $fn=12);
    }
    
    translate([-25, 28, 0]) square(size=[20, 50], center=true);
    
    translate([-35, 0, 0]) chain_hull() {
      translate([0, 25, 0]) square(size=[6, 3], center=true);
      translate([-4.5, 25, 0]) circle(r=1.5, $fn=12);
      translate([-4.5, 40, 0]) circle(r=1.5, $fn=12);
      translate([-15, 40, 0]) circle(r=1.5, $fn=12);
      translate([-15, 22, 0]) circle(r=1.5, $fn=12);
    }
  }
  
}

middle();