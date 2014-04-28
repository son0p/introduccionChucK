"Tools are no substitute for thought. None of the tools you mention help me think" - @joeerl

para explicar variables puedo usar el concepto de contenedores porta comida. porta ropa, porta zapatos, porta herramientas. y los tipos es crear el portador... 


int, float, dur

para for loop
ICE:
I : Initialization
C: Conditional t e s t
E : End o f Every r e p e t i t i o n


# tiempo
time itself computable

Wait-on-event is similar in spirit to chuck-to-now,
except events have no pre-computed time of arrival.

ChucK’s timing mechanisms provides a way for programmers to
reason about about time in their audio code in a truly precise and deterministic
way.

In ChucK, precise control over time is designed
to be available at all levels to the programmer, in a synchronous manner.

In summary, the timing mechanism moves the primary control over time from
inside opaque unit generators to the code directly. The result is that the compu-
tation is explicitly tied to time. The programmer not only knows what is to be
computed, but also precisely when, relative to ChucK time. This global control
over time enables programs to specify arbitrarily complex timing, allowing a pro-
grammer / composer to “sculpt” a sound or passage into perfection by operating
on it at any temporal granularity.

# Concurrency
However, unlike traditional threads, whose execution is
interleaved in a non-deterministic manner by a preemptive scheduler, a shred is
a deterministic piece of computation that has sample-accurate control over audio
timing, and is naturally synchronized with all other shreds via the same timing
mechanism

In a high level sense, the idea of concurrency in ChucK is similar to the idea of
mixing independent “tracks” of audio samples in CMix [46] (and other languages).
Lansky’s original idea was to provide a programming environment where the com-
poser can deal with and perfect individual parts independently [67]. ChucK extends
this idea by allowing full programmability for each shred.
