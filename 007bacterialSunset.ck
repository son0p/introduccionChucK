//----------------------
// Bacterial Sunset Modo patrones
//
//-------------------------------------------


// The period
.5::second => dur T;
// synchronize to period, at the end of the code is the logic to advance in .25ms portions of time
T - (now % T) => now;


// Routes 
SawOsc saw => dac;
TriOsc tri => Pan2 p => dac;
SinOsc sin => dac; 
Noise n =>  Pan2 q =>dac;

// main gain for fadeins and fadeouts, initializing main gain variable
0.5 => float mainGain;


//  SawOsc notes
[50, 50, 50, 55, 50, 50, 60, 62] @=> int bass[];


//  TriOsc notes
[50, 50, 52, 50, 50, 60, 62, 57] @=> int chord[];

//  SinOsc notes
[50, 52, 53, 55, 57, 59, 60, 62] @=> int melody[];
[55, 52, 53, 55, 57, 55, 55, 62] @=> int melody2[];


// create a counter to rule de whole piece
0 => int count;


// main loop 
while (count < 189)
  {
    <<<"Now:",(now / second) >>>;// show now in console
    
    count++; // increment counter

    // initializa gains inside loop to be affected by mainGain 
    mainGain * 0.3 => saw.gain;
    mainGain * 0.3 => tri.gain;
    0 => p.pan;
    mainGain * 0.3 => sin.gain;
    mainGain * 0 => n.gain;

    
     
    //----------
    // SawOsc moments
    //-------------------
    if (count < 64)
      { 
	count % 8 => int i; // divide counter in cicles of 8 counts 
	Std.mtof(bass[i])/2 => saw.freq; // loop thru array and divide notes 2 octaves lower
      }
    else 
      {
	count % 8 => int i; 
	Std.mtof(bass[i])/4 => saw.freq;  // loop thru array  4 octaves lower
      }

      //---------
      // Noise moments
      //------------------
     
      // slow fade in of noise, convert range from count 20 to 46 in n.gain from  0.01 to 0.5
      while ( (count >20) && (count < 64) )
	{
	  (((count - 20)- 1)*(0.5 - 0.0))/(64 - 1)+0.01 => n.gain;
	  break;
	}

      // after fade in, start sparks of 5miliseconds of noise glith, with affected pan, and gain 
      if (count > 46)
	{
	0.8 => n.gain;
	Math.sin( now/1::second*2*pi) => q.pan; // modulate pan 
	Math.sin( now/1::second*2*pi) => n.gain; // modulate gain
	5::ms =>now; 
	0 => n.gain; // mute after 5ms
	}
      
      //----------
      // SinOsc moments
      //----------------
	if (count > 12)
	  {
	    count % 4 => int j; // counter in cicles of 4
	    Std.mtof(melody2[j])*4 => sin.freq; // sine notes 4 octaves high
	  }
	if (count > 86)
	  {
	    count % 8 => int j; // counter in cicles of 8
	    Std.mtof(melody2[j])*4 => sin.freq; 
	    
	  }
	if (count > 160) 
	  {
	    count % 4 => int j; 
	    Std.mtof(melody2[j]) => sin.freq;
	  }
   

	//-----------
	// triOsc moments
	//------------------
	count % 8 => int k; // cycles of 8
	Math.sin( now/1::second*2*pi) => p.pan; // panning modulated by Math.sin
	Std.mtof(chord[k])*4 => tri.freq; 
	// insert silence randomly in a range of the cycle
	if ((k > 4) && ( k < 7))
	  {
	    Math.random2( 0 ,k )  => int silence; // random value between 0 and value of k, define silence var
	    if ( silence > 2 )
	      {
		0 => tri.gain;
	      }
	  }
	// go down 2 octaves for the ending part
	if (count > 140)
	  {
	    Std.mtof(chord[k])*2 => tri.freq; 
	  }

    
    //fade out
    
    while ( count > 140 )
      {
	// 60.0 convert to float, 60.0/140 = 0.42, is the starting point to mainGain to fadeout 
	60.0 / count => mainGain; 
	break;
      }
      

    //advance time
    if( Std.randf() > -.5 ) .25::T => now; //if random float is bigger than -.5  make a quarter .25 else a whole .5
        else .5::T => now;

  }


