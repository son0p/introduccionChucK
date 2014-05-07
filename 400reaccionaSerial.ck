// sonido reaccionando a valores de la entrada serial
// serial code in chuck example
// https://chuck-dev.stanford.edu/svn/chuck/trunk/src/examples/serial/ints.ck

// cadena de sonido
SawOsc s => NRev r => dac;

// parámetros de audio
0.2 => r.mix;

// nota raiz y modos
56 => int root;
// modo jónico
[(root),(root + 2),(root + 4),(root + 5),(root + 7), (root + 9),
(root + 11), (root + 12)] @=> int notesIonian[];
// modo dórico
[(root),(root + 2),(root + 3),(root + 5),(root + 7), (root + 9),
(root + 10), (root + 12)] @=> int notesDorian[];




// asignación de variables
420 => float fr;
int oldNote;
int pushNote;
int notes[];

// entrada serial
SerialIO.list() @=> string list[];

for(int i; i < list.cap(); i++)
{
    chout <= i <= ": " <= list[i] <= IO.newline();
}

0 => int device;
if(me.args()) me.arg(0) => Std.atoi => device;

SerialIO cereal;
cereal.open(device, SerialIO.B9600, SerialIO.ASCII);

// inicio contador
0 => int count;

while(true)
{
	count % 8 => int ii;
	<<< ii >>>;
    cereal.onInts(2) => now;
    cereal.getInts() @=> int ints[];
    chout <= "ints: ";
    for(int i; i < ints.cap(); i++)
    {
        chout <= ints[i] <= " ";
    }
    
    chout <= IO.newline();

	// assign value of array to freq variable
	ints[0] => float fr;
	// turn on gain
	0.2 => s.gain;


	// hardcode serial

	// audio conditionals
	if (fr > 10)
	{
		for	(0 => int i; i < 8; i++)
		{
			// Random choose for a note.
			Math.random2(1, notesIonian.cap())-1 => int noteSelector;
			
			// Rule: Intervals of max 6 tones
			noteSelector => int newNote;
			
			if(newNote < (oldNote + 6))
			{
				// <<< "Rule 1: OK" >>>;
				notes[noteSelector] => int pushNote;
				pushNote => int oldNote;
				// Fill the array with selected notes
				pushNote => notesIonian[i];
				// <<< "push Note:",pushNote>>>;
			}
			
		}
	}
	else
	{
		220 => s.freq;
	}
	// play

	for(0 => int ii; ii < notes.cap(); ii++)
	{
		if(notes[ii] > 1){
			Std.mtof(notesIonian[ii]) => s.freq;
			0.25::second => now;
		}
		else
		{
		
		}




	0.25::second => now;
	// turn of gain
	0.0 => s.gain;
	0.25::second => now;
		}
		
}




