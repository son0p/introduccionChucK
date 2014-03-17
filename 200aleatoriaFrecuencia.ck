// cadena de sonido
SinOsc xave => NRev r => Chorus s => dac;.3 => xave.gain;

// parámetros de los efectos
0.1 => r.mix;
0.1 => s.mix;
0.75 => s.modDepth;
5 => s.modFreq;

// definimos dos flotantes
float x, y;

// hacemos ocho partes
for (1 => int p; p <= 8; p++) {
   
   // generamos una frecuencia base aleatoria entre 110 y 220
   Std.rand2f(110, 220) => float base;
   
   // generamos una estructura en forma de  arpegio de 16 notas 
   // a partir de la frecuencia base
   for (1 => int c; c <= 16; c++) {
      
      // nos aseguramos que toque un tono diferente al anterior
      while (x == y) {
          Std.rand2(1, 6) => x;
      }
      
      x * base => xave.freq;
      0.15::second => now;
      x => y;
   }
}
