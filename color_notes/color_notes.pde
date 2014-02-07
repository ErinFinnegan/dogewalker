offset = Random.NextFloat();

for (int i = 0; i < n; i++) {
   color[i] = gradient.GetColor(offset + (0.618033988749895f * i) % 1);
}

println(offset);


color c1 = color(204, 153, 0);
color c2 = #FFCC00;
noStroke();
fill(c1);
rect(0, 0, 25, 100);
fill(c2);
rect(25, 0, 25, 100);
color c3 = get(10, 50);
fill(c3);
rect(50, 0, 50, 100);

//ADDED some comments about color
