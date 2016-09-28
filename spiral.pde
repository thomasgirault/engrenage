
float acumulador = 100;
String s2;
String[] tokens;
void setup() {
  size(1200,1000);
  smooth();
  // s2 = String.join(" ", loadStrings("/home/thomas/Bureau/doigt_engenage.txt"));
  s2 = "po j kpojpo jpojpo jpojpoj p ojpoj pojp oj";

  tokens = splitTokens(s2, ", ");

}
 

 
void mouseWheel(MouseEvent event) {
  float e = event.getAmount();
  acumulador +=  e; 
  println(acumulador);
  // textSize(32);
  // text("text" , 65, 30 + 5 * acumulador);
}

void draw() {
translate( width/4, height/2); // width/2
//translate( 0, height/2);
  // scale( 0.25 );
  background(255);
  stroke(0);
  noFill();
  for( int i=0; i< 1000 ; i++ ) {
    // float f = i * map( mouseY, 0, height, .2, 5 );
    //float f = i * map(height - acumulador, 0, height, 0, 5 );
    float f = (i * height) / (acumulador +1); //, 0, height, 0, 5 );

    float x = cos( radians( i *5 + (millis()/10000. * acumulador) )) * f;
    float y = sin( radians( i *5 + (millis()/10000. * acumulador))) * f;

   //float x = cos( radians( i *5 + (acumulador) )) * f;
   // float y = sin( radians( i *5 + (acumulador))) * f;

    fill(50);
    textSize(30);
    // String s3 = "                         " +  s2.charAt(i % s2.length());
    String s3 = tokens[abs(i  - int(acumulador)) % tokens.length]; // + "\n\n\n\n\n";
    // String s3 = "" + s2.charAt(abs(i + int(second() - acumulador)) % tokens.length);; // + "\n\n\n\n\n";

    text(s3, x , y);//, 500, 500); // , 500, 500);  // Text wraps within text box

    
    //ellipse(  x, y, 10, 10 );   
  }
   
}