# ChucK:      código == instrumento

El lenguaje de programación ChucK permite, entre otras cosas,  generar música o sonidos usando matemática, puede hacer variar el sonido según el entorno, y nos permite convertir datos en sonido.

La relación entre sonido y matemáticas es natural para un racionalista, sin embargo, podria ser algo inusual para en una cultura que asocia al músico creador con la inspiración espontánea, o la expresión de sus sentimientos.
Tomaremos una actitud prudente para ilustrar la participación de la matemática en un ejercicio musical: [(Aquí un sonido que varía segun unas condiciones matemáticas)](003matematicaSimple.ck)
Como podemos escuchar en esta pieza de corta vida, una multiplicación nos permite variar las octavas.


Agreguemos un poco de fuerza a nuestro vocabulario de programación y veamos un ejemplo mas enriquecido:
[(007bacterialSunset.ck)](007bacterialSunset.ck)

La palabra "control" puede, de echo, tener una gran empatía con la matemática, entonces queda abierta la posibilidad de controlar cualquier cualidad del sonido con matemática.

=======

Una de las ventajas de ChucK es poder modificar el programa en vivo (mientras suena) veamos como alteramos valores de nuestro ejemplo e inyectamos el nuevo código si detener el programa anterior.

Un sistema reactivo mantiene una interacción permanente con su entorno, un ejemplo típico puede ser los sistemas de control de tráfico aéreo. [1]

En el dominio de la música que reacciona al entorno mediante sensores, en el cual la emoción se deriva de "escucuchar" como cambia la música ante un evento que vemos o sentimos, traemos esta circustancia donde una melodía en modo menor se ve obligada a cambiar a modo mayor al aumento de la luz percibida por un sensor de luz llamado fotocelda.
[(Variación de un sonido según la luz)](400reaccionaSerial.ck)


En ChucK se pueden escribir rutinas que se van repitiendo y modificando según unas condiciones. En contraste a la música que es compuesta en una partitura o grabación y que intenta sonar siempre igual, ChucK puede crear condiciones para una música llena de variaciones aleatorias y que pueden reaccionar a sensores.
ChucK es una potente herramienta para arte sonoro, música generativa, bandas sonoras de videojuegos.

Existen otros lenguajes como Puredata, SuperCollider, Csound etc.

La mayoría de tareas de sintesis y música pueden ser realizadas por cualquiera de estos lenguajes, pero ciertos tipos de tareas pueden lograrse más fácilmente en un que en otro, esto nos pone en la idea del lenguaje de programación como "una manera de pensar".

Alan Perlis alguna vez dijo "no vale la pena aprender un lenguaje de programación que no cambie su manera de pensar". 
Uno de los benficios importantes de ChucK es su capacidad de ayudarnos a pensar, de manera diferente, los retos a que se enfrenta el compositor o investigador sonoro.
ChucK nos ayuda a programar sonido y música desde una perspectiva humana, mas que adaptar al humano al diseño de la máquina.[1]

Adicionalmente, ChucK ofrece una aproximación al "código en vivo", donde el programador esta habilitado para desarrollar/probar/prototipar programas en vivo. Éste estilo de programación nos lleva a presentaciones donde la audiencia observa el "codigo en vivo" como gestos musicales.

Código == Intrumento musical

Un aspecto central de la solución que provee ChucK es exponer control programable sobre el tiempo en cooperación con un modelo de programación paralela basada en tiempo.

En ChucK siempre se escribe código en animación suspendida, es decir, el tiempo en ChucK no cambia a no ser que el programador lo avance explícitamente.

Tratemos de entender esto: hace que el tiempo sea computable y directamente controlable, aún mas, el programador puede especificar modulos de código, cada uno de los cuales controla independientemente sus computaciones en el tiempo pero también puede ser sincromnizado a otro módulos.

En general una herramienta es útil si hace al menos una tarea mejor que cualquier otra herramienta (por ejemplo, el martillo, o el destornillador).

[(Sonificación de un Hashtag de Twitter)](https://vimeo.com/81179236)


---

[1] "The ChucK Audio Programming Language 'A Strongly-Timed and On-the-fly Environ/mentality'" Ge Wang
