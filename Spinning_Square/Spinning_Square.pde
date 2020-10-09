int floatCount = 100;
int j;

float xps[] = new float[floatCount];
float yps[] = new float[floatCount];
color colours[] = new color[floatCount];

int dragging;

void setup()
{
  size(800, 800);
  noStroke();
  
  dragging = -1;
  
  for (int i = 0; i < floatCount; i++)
  {
    xps[i] = random(20, width - 20);
    yps[i] = random(20, height - 20);
    colours[i] = color(random(0, 255), random(0, 255), random(0, 255));
  }
}

void draw()
{
  background(100);
  
  if (dragging != -1)
  {
    xps[dragging] = mouseX;
    yps[dragging] = mouseY;
  }

  for (int i = 0; i < floatCount; i++)
  {
    fill(random(1,255), random(1,255), random(1,255));

    rect(xps[i], yps[i], 30, 30);
  }
  rotate(radians(j));
  j = j + 1;
}

void mousePressed()
{
  for (int i = 0; i < floatCount; i++)
  {
    if (dist(xps[i], yps[i], mouseX, mouseY) < 30)
    {
      dragging = i;
    }
  }
}

void mouseReleased()
{
  dragging = -1;
}
