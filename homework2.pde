int NUM = 5000;
float[] y = new float[NUM];
float[] x = new float[NUM];
float[] speed = new float[NUM];
PImage img;

void setup() {
  size(400, 400);
  for (int i = 0;i < NUM; i++) {
    speed[i] = random(1, 3);
    x[i] = random(width);
    y[i] = random(height);
  }
}

void draw() {
  background(#000022);
  // フォントを変換
  PFont font = createFont("MS Gothic", 10, true);
  // フォントを設定
  textFont(font);
  // ファイル保存
  img = loadImage("kasa.png");
  for (int i = 0;i < NUM;i++) {
    y[i] = y[i] + speed[i];
    text("＊", x[i], y[i]);
    if (y[i] > height) {
      y[i] = random(-100, 0);
      x[i] = random(width);
    }
    if (mouseX-50 < x[i] && x[i] < mouseX + 45 && y[i] > mouseY - 10 && mouseY + 20 > y[i]) {
     y[i]= 410;
    }
  }
    image(img, mouseX-50, mouseY-48);
}

