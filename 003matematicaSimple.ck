SinOsc generador => NRev reverb => dac;

0.3 => reverb.mix;
0.3 => generador.gain;

100 => float sonidoOrigen;

sonidoOrigen => generador.freq;
1::second => now;

sonidoOrigen + 100 => generador.freq;
1::second => now;

sonidoOrigen + 200 => generador.freq;
1::second => now;

while(true)
{
	sonidoOrigen * 2 => sonidoOrigen;
	sonidoOrigen =>  generador.freq;
	0.5::second => now;
	
}