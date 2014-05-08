// sonido reaccionando a valores de la entrada serial
// serial code in chuck example
// https://chuck-dev.stanford.edu/svn/chuck/trunk/src/examples/serial/ints.ck

// cadena de sonido
SawOsc s => NRev r => dac;

// parámetros de audio
0.1 => r.mix;
0.1 => s.gain;




// asignación de variables
420 => float fr;
int oldNote;
int pushNote;
int notes[7];
int melody[7];


// nota raiz y modos
56 => int root;
// modo jónico
[(root),(root + 2),(root + 4),(root + 5),(root + 7), (root + 9),
(root + 11), (root + 12)] @=> int notesIonian[];
// modo dórico
[(root),(root + 2),(root + 3),(root + 5),(root + 7), (root + 9),
(root + 10), (root + 12)] @=> int notesDorian[];


// INICIO con
0 => int count;

while(true)
{
	count % 8 => int ii;
	//<<< ii >>>;
	
	// audio conditionals
	if (fr > 10)
	{
		for(0 => int i; i < 7; i++)
		{
			notesIonian[Math.random2(0, 7)] => oldNote;
			Std.mtof(oldNote) => s.freq;
			0.25::second => now;
			<<< "Jonico", oldNote >>>;
		}
		
	
	
	}
	count++;
}





