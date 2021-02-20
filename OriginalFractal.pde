public void setup()
{
  size(500, 500);
  rectMode(CENTER);
}
public void draw()
{
  background(255);
  circleFractal(250, 250, 400);
  myFractal(250, 250, 200);
}
public void myFractal(int x, int y, int siz)
{
  stroke(206, 175, 50);
  fill(252, 231, 143, 200);
  rect(x, y, siz, siz);
  if(siz > 10)
  {
    myFractal(x - siz/2, y, siz/2);
    myFractal(x + siz/2, y, siz/2);
    myFractal(x, y - siz/2, siz/2);
    myFractal(x, y + siz/2, siz/2);
  }
}
public void circleFractal(int x, int y, int siz)
{
  stroke(26, 84, 152);
  fill(139, 192, 255, 150);
  ellipse(x, y, siz, siz);
  if(siz > 10)
  {
    circleFractal(x - siz/2, y, siz/2);
    circleFractal(x + siz/2, y, siz/2);
  }
}
