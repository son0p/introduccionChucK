// le asignamos al objeto miSonido las caracteristicas de la clase SinOsc y
// lo conectamos a la salida de audio dac (digital analog converter) 
// ensaye alternativas  SinOsc: SawOsc TriOsc SquareOsc
SinOsc miSonido => dac;

// hacemos que el tiempo corra  para que haya sonido, durante un dia, puede cambiar ese valor de tiempo
// ensaye 2::second 1::second  1::ms 
1::day => now;