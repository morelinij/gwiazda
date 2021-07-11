void setup()
{
  size( 400, 400 );
  smooth();
  frameRate(1);
} 

void draw() {
  translate(200, 200);
  star(5, 90, 190);
} 

void star( int numSpikes, float innerRadius, float outerRadius )
{
  int numVertices = numSpikes * 2;
  float angleStep = TWO_PI / numVertices;
  beginShape();
  
  for ( int i = 0; i < numVertices; i++ ) {
    float x, y;
    if ( i % 2 == 0 ) {
      x = cos( angleStep * i ) * outerRadius;
      y = sin( angleStep * i ) * outerRadius;
    } else {
      x = cos( angleStep * i ) * innerRadius;
      y = sin( angleStep * i ) * innerRadius;
    } 
    vertex( x, y );
  } 
  endShape(CLOSE);
}
