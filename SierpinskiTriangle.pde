public void setup()
{
size(400,400);
background(0,0,0);
fill(#0083D8);
stroke(255);
}
public void draw()
{
sierpinski(400,400,400);
}

public void sierpinski(int x, int y, int len)
{
if(len <= 1){
  triangle(x,y,x-len,y,x-len/2,y-len/2);
}else{
  sierpinski(x,y,len/2);
  sierpinski(x-len/2,y,len/2);
  sierpinski(x-len/4,y-len/2,len/2);
}
}
