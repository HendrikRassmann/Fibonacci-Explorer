int angle =10;
int iteration =5;
float zoom = 1.0;
int[]fib = {0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144,
233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 
28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352};

void setup(){
 size(600,600); 
 frameRate(24);

 background(255);
}

void draw(){
  translate(width/2,height/2);
  background(255);
  strokeWeight(2);
  fill(255,0,0);
    for (int i = 0; i < fib.length && i <= iteration; i++){
      line(0,0,0,fib[i]*zoom);
      translate(0,fib[i]*zoom);
      rotate(radians(angle));
      ellipse(0,0,20,20);
  }
  //angle++;
  //zoom *= 0.98;
  System.out.println("Der Winkel ist: " + str(angle) + " Grad");  
  System.out.println("Der ZoomFactor ist: x" + str(zoom));  
}

void keyPressed(){
  if (keyCode == UP) angle += 1;
  if (keyCode == DOWN) angle -= 1;
  if (keyCode == RIGHT) zoom /= 0.9;
  if (keyCode == LEFT) zoom *= 0.9;
  if (keyCode == ENTER) iteration += 1;
  
}
