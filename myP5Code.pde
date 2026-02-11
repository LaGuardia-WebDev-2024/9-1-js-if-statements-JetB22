//setup Function - will automatically run Once
setup = function(){
    size(400, 400); 
    frameRate(30); 
}

var y = 0;  // position of the ball
var speed = 100;  // how far the ball moves every time
var dvdLogoX = 175;
var dvdLogoY = 0;
var dvdLogoSpeedH = 5;
var dvdLogoSpeedV = 5;

//draw Function - will run repeatedly
draw = function() {
    background(255, 255, 255, 150);

    ellipse(200, y, 50, 50);

    y = y + speed;

    if(y > 300){
        speed= -100
        fill(random(255),random(255),random(255));
    };

    if(y < 100){
        speed = 100
        fill(random(255),random(255),random(255));
    };

    rect(dvdLogoX,dvdLogoY,50,50)
    dvdLogoX = dvdLogoX + dvdLogoSpeedH;
    dvdLogoY = dvdLogoY + dvdLogoSpeedV;

    if(dvdLogoX > 350){
        dvdLogoSpeedH = -5
        fill(random(255),random(255),random(255));
    };

    if(dvdLogoY > 350){
        dvdLogoSpeedV = -5
        fill(random(255),random(255),random(255));
    };  

    if(dvdLogoX < 0){
        dvdLogoSpeedH = 5
        fill(random(255),random(255),random(255));
    }; 

    if(dvdLogoY < 0){
        dvdLogoSpeedV = 5
        fill(random(255),random(255),random(255));
    }; 


};