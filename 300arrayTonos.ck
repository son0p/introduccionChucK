// cadena de sonido
SawOsc saw => NRev r => dac;
 
0.2 => saw.gain;
0.1 => r.mix;

// frequencias equivalentes a la escala pentatonica de Mi
// E = 164, G = 196, etc.
[164, 196, 220, 246, 293] @=> int penta[];
// array de notas MIDI de la pentatonica de Mi
[76, 79, 81, 83, 86] @=> int pentaMidi[];

// loop infinito
while(true)
{
	// recorre el array penta[] desde la posición 0 hasta
	// la posición máxima del array penta.cap()
	for (0 => int i; i < penta.cap(); i++)
	{
		// asigna el valor que encuentre en la posición i
		// a la frecuencia de nuestro objeto saw
		penta[i] => saw.freq;
		// imprime en la pantalla el valor que acaba de usar
		<<< "Frecuencia: ", penta[i] >>>;
		// transcurre el tiempo 
		0.25::second => now;
	}

	// recorre el array pentaMidi[] de 0 a su máximo
	for (0 => int i; i < pentaMidi.cap(); i++)
	{
		// usando la función mtof (midi to frequency) del objeto Std
		// nos permite convertir el valor de una nota MIDI a frecuencia
		Std.mtof(pentaMidi[i]) => saw.freq;
		<<< "Nota MIDI: ", pentaMidi[i] >>>;
		0.25::second => now;
	}
}
