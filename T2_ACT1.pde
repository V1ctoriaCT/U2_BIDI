float angulo = 0;
float intensidad = 0;
boolean aumentar = true;

void setup(){
  size(900, 900);
 
}

void draw () {
  
  background(220, 220, 220);
  stroke(0, 0, 0);
  fill(204, 169, 221);
  translate(350, 350);
  ellipse(160, 160, 250, 250);
   
  
  if ( keyPressed == true) {
    
    
    if ( key == 'z' || key == 'Z') {
      
      scale (0.9);
      ellipse(10, 10, 100 , 100);
    }
    
    
    if ( key == 'x' || key == 'X') {
      
      translate (350, 350);
      ellipse(25, 25, 250, 250);
       
    }
    
    
     if ( key == 'c' || key == 'C') {

      float rojo = random(0, 255);
      float verde = random(0, 255);
      float azul = random(0, 255);
      
        stroke(intensidad, 0,0);
        fill(rojo, verde, azul);
        rotate(angulo);
        ellipse(160, 160, 250, 250);
            angulo += 0.02;
      
        if (intensidad == 255){
            aumentar = false;
          }else if (intensidad == 0 ){
            aumentar = true;
          }
  
        if (aumentar ){
            intensidad += 1;
         }else {
            intensidad -= 1;
          }
       }
       
       
     if ( key == 'v' || key == 'V') {
       
         translate (350, 350);
         
        fill(240, 248, 255);         
         
         shearY(angulo);
         shearX(angulo);
         ellipse(15, 55, 250, 250);
           angulo +=intensidad;
       
         if (angulo > PI/2 || angulo < -PI/2) {
              intensidad *= -1;
          }

          if (aumentar) {
              intensidad += 0.01;

          if (intensidad >= PI/4) {
                aumentar = false;
             }
           } else {
            intensidad -= 0.01;

         // if (intensidad <= -PI/4) {
         //       aumentar = true;
         //  }
          } 
    
        }
        
       
    }
}
