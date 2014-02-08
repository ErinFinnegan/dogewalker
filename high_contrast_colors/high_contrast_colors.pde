size(600,200);
color[] palette = new color[20];

colorMode(HSB,1.0,1.0,1.0);

float offset = random(1);

for (int i = 0; i < palette.length; i++) {
   palette[i] = color(offset + (0.618033988749895f * i) % 1,1,1);
   fill(palette[i]);
   rect(i*30,0,30,height);
}
