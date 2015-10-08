PImage bg1, bg2, enemy, fighter, hp, treasure;
int bg2_x=0;
int enemyX=50, enemyY=300, enemySpeed=3;
int hpValue=floor(random(200));
int treasureX=floor(random(600)), treasureY=floor(random(440));

void setup () {
  size(640,480) ;  // must use this size.
  
  // get images
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  enemy=loadImage("img/enemy.png");
  fighter=loadImage("img/fighter.png");
  hp=loadImage("img/hp.png");
  treasure=loadImage("img/treasure.png");
}

void draw() {
  // background
  image(bg1,bg2_x-640,0);
  image(bg2,bg2_x,0);
  image(bg2,bg2_x-1280,0);
  bg2_x++;
  bg2_x%=1280;
  
  // enemy
  image(enemy,enemyX,enemyY);
  enemyX+=enemySpeed;
  enemyX%=640;
  
  // fighter
  image(fighter,580,240);  

  // hp
  colorMode(RGB);
  fill(255,0,0);
  rect(10,15,hpValue,15);
  image(hp,10,10);
  
  // treasure
  image(treasure,treasureX,treasureY); 
}
