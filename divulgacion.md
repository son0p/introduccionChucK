 El lenguaje de programación llamado ChucK es una manera de comunicarse con la computadora para que ésta ejecute tareas que principalmente tienen que ver con sonido y música.
 
  Si ud. quiere hacer un sonido o música que se modifique automáticamente, o que genere infinitas variaciones de melodías y ritmos, ChucK puede ser una buena herramienta para lograrlo.

¿Cómo se puede hacer música escribiendo ordenes en un computador?
Supongamos que tenemos un robot muy obediente y queremos que haga un desayuno, le ordenamos al robot que traiga los elementos que necesita para hacer el desayuno, huevos, mantequilla, pan, jugo.
También debe traer algunas herramientas como el sartén, cuchillo, licuadora, vaso.
Con todo dispuesto le decimos que inicie batiendo los huevos, los ponga en la sartén, mientras se están preparando los huevos, prepare el jugo, y parta el pan, pero resulta que no hay pan en la despensa, entonces si no le decimos al robot que reemplace el pan por la arepa, o que es posible tener un desayuno sin pan, el robot colapsaría y se quedaría buscando el pan infinitamente.
Es así como para hacer que nuestra computadora haga música hacemos una lista de tareas, construimos una lógica para que nuestra computadora tome decisiones en situaciones especiales, si pasa eso haga aquello etc.

Vamos a hacer que la computadora genere un sonido, esta tarea es sencilla en ChucK, necesitamos cuatro ingredientes ingredientes:

1. un objeto productor de sonido
2. una manera de conectarlo a algo
3. saber donde esta nuestra tarjeta de sonido
4. que el tiempo transcurra .. pues el sonido sucede cuando el tiempo transcurre. 

El objeto escogido entre muchos que nos pone disponible ChucK es *SinOsc* que cuando el tiempo transcurre produce una onda que suena como un pito o un tono puro, para conectarlo usaremos "=>" y nuestra tarjeta de sonido es identificada como "dac" las siglas de (Digital to Analog Converter), luego tenemos que hacer que el tiempo transcurra unos segundos, creamos un archivo *iniciando.ck* y adentro le ponemos los ingredientes:


>*iniciando.ck*
```Java
SinOsc miSonido => dac;
30::second => now;
```



Para que nuestra ejercicio suene abrimos una terminal y escribimos:

```
$ chuck iniciando.ck
```



Lo que hicimos aquí fue traer un generador que viene por defecto llamado `SinOsc`, le asignamos las propiedades de ese generador a un objeto propio que vamos a manipular que llamamos `miSonido` (podría llamarse "pito", "onda", "sin", "s", en fin cualquiern nombre) y conectamos `miSonido` a la tarjeta de sonido, en la siguiente línea hicimos que el tiempo `now`  transcurriera durante 30 segundos. 

avancemos un poco, creemos un nuevo archivo llamado *avanzando.ck* y adentro copiemos lo siguiente:


>*avanzando.ck*
```Java
// cadena de sonido
SinOsc miSonidoVariando => dac;
// variaciones
330 => miSonidoVariando.freq;
0.5 => miSonidoVariando.gain;
// transcurre el tiempo
10::second => now;
```

Ahora ejecutemos nuestro nuevo ejemplo con:

```bash
$ chuck avanzando.ck
```




  ChucK se escribe de manera similar a otros lenguajes de programación, donde se puede leer la lógica (el orden de las tareas a realizar), esto le da una ventaja sobre programas  que usan conexiones gráficas, que a pesar de ser muy legibles en un programa sencillo, se vuelven  ilegibles en programas complejos y es difícil re-usar partes de su código.
  
  
  
  
  
 
  En nuestro contexto hay un crecimiento de la cultura de la programación, grupos como MedellinJS atraen jóvenes interesados en aprender de programación, muchos de ellos están concentrados en desarrollar sitios web o aplicaciones móviles y videojuegos, creemos que  ChucK puede ser una  herramienta poderosa para programar el aspecto musical y sonoro de las aplicaciones móviles, videojuegos, e instalaciones sonoras.
 
  Artistas como Kaziuz y Aeromostra estan profundizando en el uso de ChucK en sus proyectos.
