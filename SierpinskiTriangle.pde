public void setup()
{
	size(600,600);
	background(0);
}
public void draw()
{

	sierpinski(0,600,600);
}

public void sierpinski(int x, int y, int len) 
{
//color
	// int red = 100;
	// if(mouseX<300&&mouseY<200){
	// 	red--;
	// }
	// else if(mouseX>300&&mouseY<200){
	// 	red++;
	// }
	noFill();
	stroke(90,250,100);
//triangle
	if (len<=20){

		triangle(x,y,x+len,y,x+len/2,y-len);
	}
	else{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);

	}
}