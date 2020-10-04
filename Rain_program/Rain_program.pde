 int score = 0;
 void checkCatch(int x){
         if ( y > mouseX && x < mouseX+100)
            score++;
         else if (score > 0) 
            score--;
        println("Your score is now: " + score);
         
   
        
    }

 
int x =  (int) random(500);
int y = 0;
void setup(){
 size(500, 500); 
}
void draw(){
 background( #F0F8FF );
   fill(#00008b);
    stroke(#FF0000, #7CFC00, #F0F8FF);
    ellipse(x, y, 20, 20);
 if(y > 500 ){
   y=0;
   x = (int) random(500);
 }
    y +=2;
    
     fill( #808080);
  rect(mouseX,mouseY ,50 ,50 );
 if(y > mouseY && y < mouseY + 50  && x >mouseX && x< mouseX + 50){
   score +=1;
     y=0;
 x = (int) random(500);
 }
    fill(#808080);
    textSize(16);
     text("Score: " + score, 20, 20);
}
