ChucK
=================

Hola! esta guia pretende introducir a los nuevos desarrolladores y ayudar a los experimentados en el mundo de [ChucK](http://chuck.cs.princeton.edu/)
Su estructura esta inspirada (copiada) de:http://jstherightway.org/

---
## Escoja su camino

### [Iniciar con ...](https://github.com/son0p/introduccionChucK/blob/master/README.md#iniciar-con--1)
### [Rutinas de estudio](rutinasDeEstudio.md)
### [Practicas](practicas.md)
### [Ejemplos de código](https://github.com/son0p/introduccionChucK#ejemplos-de-c%C3%B3digo-1)
### [A quienes seguir](https://github.com/son0p/introduccionChucK#a-quienes-seguir-1)
### [Tutoriales en video](https://github.com/son0p/introduccionChucK#tutoriales-en-video-1)
### [Fortalezas](https://github.com/son0p/introduccionChucK#fortalezas-1)

















---

### Iniciar con ...
* [¿Qué #$%^&* es ChucK?](divulgacion.md)
* [Mi primer sonido](001primerSonido.ck)
* [Variar Frecuencia y Ganancia](002variarFrecuenciaGanancia.ck)
* [Generar sonidos de manera aleatoria](200aleatoriaFrecuencia.ck)
* [Leer un array](300arrayTonos.ck)









---

### Ejemplos de código
* [ChucKScripts](https://github.com/zeffii/ChucKScripts)
* [Programas en ChucK](http://wiki.cs.princeton.edu/index.php/ChucK/Programs)
* [ChucK en Rosetta code](http://rosettacode.org/wiki/ChucK)






---

### A quienes seguir
* @gewang
* @TweecKs
* @toplaporg
* Un listado de [gente usando ChucK](http://wiki.cs.princeton.edu/index.php/ChucK/Users)
* Foro de usuarios no-oficial en [electro-music](http://electro-music.com/forum/forum-140.html)
* Preguntas y respuestas sobre ChucK en [Stack Overflow](http://stackoverflow.com/questions/tagged/chuck)



---

### Fortalezas
Tomadas de : ISMIR 2008 – Session 1d – MIR Platforms
SUPPORT FOR MIR PROTOTYPING AND REAL-TIME APPLICATIONS IN THE CHUCK PROGRAMMING LANGUAGE

• Flexibility: The programmer may specify both high-
level (e.g., patching an oscillator to a filter, or
initiating structural musical events) and low-level,
time-based operations (e.g., inspecting and
transforming individual samples) in a single unified
language mechanism, without any need for externals.

• Readability: The language provides a strong
correspondence between code structure, time, and
audio building blocks; as a result, the language is
increasingly being used a teaching tool in computer
music programs, including at Princeton, Stanford,
Georgia Tech, and CalArts..

• Modularity: Like many other languages, ChucK
encapsulates behaviors of synthesis building blocks
(filters, oscillators, etc.) using the “Unit Generator”
model. Its object-oriented nature also supports
modular user code.

• A “do-it-yourself” approach: By combining the ease
of high-level computer music environments with the
expressiveness of lower-level languages, ChucK
supports high-level musical representations, as well as
the prototyping and implementation of low-level,
“white-box” signal-processing elements in the same
language.

• Explicit treatment of time: There is no fixed control
rate. It’s possible to assert control on any unit
generator at any point in time, and at any rate, in a
sub-sample-precise manner.
Concurrency: Parallel processes (called shreds) share
a notion of time, so one can precisely synchronize and
easily reason about parallel code modules according to
each’s treatment of time. Parallelism is easy and
expressive.

• On-the-fly programming: Programs can be edited as
they run; this functionality is supported and
encouraged in the miniAudicle development
environment1.

primary advantages of using ChucK for analysis are
threefold:
• Conciseness: ChucK implicitly manages real-time
audio and buffering, and the language is tailored for
audio, so analysis system implementation time and
code length are greatly reduced.
• Rapid turnaround experimentation: Through the
application of on-the-fly programming and ChucK’s
concise audio programming syntax, one can quickly
prototype systems and sub-systems, changing
parameters as well as the underlying system structure,
and experience the results almost immediately.
• Concurrency: Parallel management of feature
extraction, even at multiple rates, is straightforward in
ChucK. This sample-synchronous concurrency would
be extremely challenging and/or inefficient in C++,
Java, or a library built in these languages, due to their
support for preemptive, thread-based concurrency, and
the consequent need to contend with thread-
instantiation, synchronization, bookkeeping, etc.









---

### Tutoriales en video

* [ChucK: A Computer Music Programming Language 1:25:04](http://youtu.be/2rpk461T6l4)
