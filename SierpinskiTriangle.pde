int len = 1000;
int q = 1000;
int g = 0;
public void setup()
{
  background(0);
  size(1000,1000);
  sierpinski(0,1000,len);
}
public void draw()
{

}
public void mouseDragged()
{
  g++;
  if(g<90){
    background(0,0,0);
    q = q/2;
    sierpinski(0,1000,len);
  }
  else 
  {
    g = 0;
    q = 1000;
    sierpinski(0,1000,len);
  }
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= q){
    triangle(x ,y ,x+len/2 ,y-len ,x+len, y);
  }
  else
   {
     sierpinski(x,y,len/2);
     sierpinski(x+len/2,y,len/2);
     sierpinski(x+len/4, y-len/2,len/2);
   }
}