//**Coreano bajo la lluvia**
//variables para la lluvia
float[] dropY = new float[100];
float[] dropX = new float[100];
float speed = random(4, 10);
//variables para la figura humana
float x = 50;
float y= 300;
float mov = 5;
//variables para la pelota
float movx = 5;
float movy = 4.2;
float xp = 220;
float yp = 318;
//variable para la imagen de fondo
PImage bg;
//clase lluvia
Lluvia [] drops = new Lluvia [300];

//estructura estática
void setup () {
size (800,500);
   //condicional lluvia, traído de la clase Drop
  for (int i = 0; i < drops.length; i++){
  drops [i] = new Lluvia ();
}
}
//estructura dinámica

void draw (){
   //Pongo acá el background para el movimiento de las figuras  
  bg= loadImage("snow3.png");
  background (bg);
  //condicional lluvia, traído de la clase Drop
   for (int i = 0; i < drops.length; i++){
  drops [i].fall();
  drops [i].show ();
  }
//construcción de figura humana a partir de un tanagram
  fill (41,88,168);
   beginShape ();
   vertex (x, y+150);
   vertex (x, y+120);
   vertex (x+40, y+120);
   vertex (x+60, y+100);
   vertex (x+40, y+100);
   vertex (x+90, y+60);
   vertex (x+50, y+20);
   vertex (x+110,y+20);
   vertex (x+100,y);
   vertex (x+120,y-10);
   vertex (x+130,y+10);
   vertex (x+110,y+20);
   vertex (x+160,y+20);
   vertex (x+105,y+60);
   vertex (x+130,y+110);
   vertex (x+130,y+130);
   vertex (x+150,y+150);
   vertex (x+118,y+150);
   vertex (x+118,y+120);
   vertex (x+90,y+100);
   vertex (x+60,y+130);
   vertex (x+30,y+130);
    endShape (); 

//movimiento de la figura humana
x = x + mov;
//límites del desplazamiento de la figura
if (x >width-180 || x<10){
    mov = mov * -1; 
  }

//llamado a la función que creé para la pelota
pelota ();

  }
//creación de la pelota
void pelota (){
  fill (192,31,37);
  ellipse (xp,yp,20,20);
 //movimiento de la pelota
 xp=xp+movx;
 yp=yp-movy;
 //límites del rebote de la pelota
   if (xp>width-10|| xp <10){
    
     movx= movx *-1;
 }
  if (yp>height-10 || yp <10){
       movy= movy *-1;
   }   
}