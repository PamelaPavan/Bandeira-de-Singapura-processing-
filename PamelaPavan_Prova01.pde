/// BANDEIRA DE SINGAPURA


int x1 = 245, y1 = 205;
int x2 = 355, y2 = 205;
int x3 = 260, y3 = 280;
int x4 = 330, y4 = 280;
int x5 = 300, y5 = 160;
int circX = 20;
int circY = 30;
int r5 = 10, r6 = 25;
int count=0;
void setup() {
    size(900, 700); // Tamanho tela
    background(235);
    
}

void draw() {
  background(235);
  noStroke(); 
  fill(0);
  textSize(15);
  text("Versão Original: NÃO MEXER NO MOUSE OU APERTAR TECLAS ", 10, 25);
  text("Movimento da estrela: Clicar na tela com o Botão Esquerdo do Mouse", 10, 40);
  text("Aumenta Dimensão da estrela: Botão Direito do Mouse", 10, 55);
  text("Apague tudo ao SEGURAR 'a' ou 'A'", 10, 70);
  
  // Retângulo Vermelho
  fill(240, 60,60);
  rect(100, 100, 700, 250);
  
  // Retângulo Branco
  fill(255);
  rect(100, 350, 700, 250);
  
  // Borda branca da bandeira
  push();
   noFill();
  strokeWeight(4);
  stroke(255);
  rect(100, 100, 700, 500);
  pop();
  
  // Lua
  fill(255);
  circle(260,225, 210);  
  fill(240, 60,60);
  circle(300,225, 210);
  
  // Estrelas
 
  fill(255);
  


  
  star(x1,y1,10,25,5);
  
  star(x2,y2,10,25,5);  

  star(x3,y3,10,25,5);
  
  star(x4,y4,10,25,5);
  
  star(x5,y5,r5,r6,5);  
  
  
  if (keyPressed==false && mousePressed==false){
    saveFrame("BandeiraOriginal.png");
  }
  
  if(keyPressed==true){
    
   if (key == 'a' || key == 'A'){

     fill(255);
     rect(0, 0, 900, 700);
     saveFrame("BandeiraApagada.png");
  
   }
   
  
  }
    
  
}

// Função que mostra a posição do mouse, quando clicado
void mouseClicked(){
  println("x = ", mouseX, "-"," y = ", mouseY); 
  
}

void mousePressed(){
 
     
    if(mouseButton == LEFT){
   
      x1=mouseX;
      y1=mouseY; 
      saveFrame("BandeiraMovimentada.png");
      
    }
    if(mouseButton==RIGHT) {
      
      if(count==0){
        r5 = 50;
        r6 = 70;
        count=count+1;
      }
      else{
        r5=10;
        r6=25;
        count=count-1;
      }

      saveFrame("BandeiraDeformada.png");
     }
  
  
}






// Função para criação de estrelas
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2;
  beginShape();
  for (float a = 0.95; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
