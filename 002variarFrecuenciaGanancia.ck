// le asignamos al objeto miSonido las caracteristicas de la clase SinOsc y
// lo conectamos a la salida de audio dac (digital analog converter) 
// ensaye alternativas  SinOsc: SawOsc TriOsc SqrOsc
SinOsc miSonido => dac;

// el objeto mi sonido hereda las funciones de SinOsc que es uno de 
// los estandar de la familia Unit Generators, algunas de las funciones
// son: .gain .freq
// leer más en : http://chuck.cs.princeton.edu/doc/program/ugen.html
// asignemos la frecuencia 330 hz a miSonido
// ***  ensaye 440 880 2000 100 50(puede ser inaudible en parlantes de un
// computador)
330 => miSonido.freq;

// el volumen (o ganancia) es un flotante que  puede variar entre 0 y 1 
// variemos el volumen (ganancia)
// *** ensayar 0.3 0.5 1 
0.8 => miSonido.gain;

// hacemos que el tiempo corra  para que haya sonido, durante un dia,
// puede cambiar ese valor de tiempo en horas, segundos, milisegundos.
// ***  ensaye 2::second 1::second  1::ms 
1::day => now;