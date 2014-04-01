// simple sound reacting to serial port
// serial code in chuck example
// https://chuck-dev.stanford.edu/svn/chuck/trunk/src/examples/serial/ints.ck

// sound chain
SawOsc s => NRev r => dac;

// audio parameters
0.2 => r.mix;

// assign variables
220 => float fr;

// Serial Input
SerialIO.list() @=> string list[];

for(int i; i < list.cap(); i++)
{
    chout <= i <= ": " <= list[i] <= IO.newline();
}

0 => int device;
if(me.args()) me.arg(0) => Std.atoi => device;

SerialIO cereal;
cereal.open(device, SerialIO.B9600, SerialIO.ASCII);

while(true)
{
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

	// audio conditionals
	if (fr > 10)
	{
		fr => s.freq;
	}
	else
	{
		220 => s.freq;
	}
	// play
	0.25::second => now;
	// turn of gain
	0.0 => s.gain;
	0.25::second => now;
}




