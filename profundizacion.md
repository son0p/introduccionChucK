# ChucK

"Un programa es una secuencia de instrucciones para un computador. Un lenguaje de programación es una colección de reglas semánticas y sintácticas para especificar esas instrucciones." GeWang

Los lenguajes de programación son la interfáz mas fundamental y duradera que ha sido diseñada para generar instrucciones a una computadora.

La programación para audio, tanto en investigación acústica, como en composicón y presentación  musical, requiere rápida experimentación, verificación, de ideas y aproximaciones, que es realizada a travez de prototipos, tanto de corto como largo plazo.
Se puede obtener gran beneficio al tener la habilidad de modificar, o incluso crear, partes del sistema de software "en vivo" a medida que se ejecuta.
Los creadores de ChucK creen que el prototipaje rápido en sí mismo, es una aproximación  particularmente útil a la programación de audio, ayudando a encontrar diferentes maneras de pensar acerca de los problemas.

El diseño del lenguaje de programación ChucK apunta a programación expresiva, prototipaje rápido, legibilidad.

Otras motivaciones son: proveer nuevas herramientas para la ciencia de la computación, pedagogía de musica por computadora, y explorar nuevos paradigmas musicales.

## Representar datos complejos
ChucK tiene tipos primitivos para representar datos complejos.
Datos complejos compuestos de : reales e imaginarios o `magnitud y fase`.

## Arrays
- pueden ser indexados por enteros.
- un array puede ser usado como un `mapa asociativo`, indexado por cadenas.
Son Objetos y se comportan como tales bajo `asignación de referencia` y otras operaciones comunes a los objetos.

# Tiempo
El tiempo solo avanza manipulando explicitamente __now__.

En ChucK __time__ representa un punto absoluto en el tiempo (desde el inicio del tiempo de ChucK), y __dur__ representa una duración.

```java
// un segundo de duración
1::second => dur foo;

// un punto en el tiempo
now + foo => time later;

```

# Concurrencia
Shreds (procesos paralelos) de diferentes archivos pueden compartir datos (incluso eventos). Esto se puede lograr a travez de una clase pública, con variables estáticas y functiones.

# Línea de comando
Un argumento es especificado adicionando el caracter dos puntos (:) al nombre del programa de ChucK que debe recibir ese argumento, seguido de la lista de argumentos.



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



Lo que hicimos aquí fue traer un generador que viene por defecto llamado `SinOsc`, le asignamos las propiedades de ese generador a un objeto propio que vamos a manipular que llamamos `miSonido` (podría llamarse "pito", "onda", "sin", "s", en fin cualquier nombre) y conectamos `miSonido` a la tarjeta de sonido, en la siguiente línea hicimos que el tiempo `now`  transcurriera durante 30 segundos. 

Avancemos un poco, creemos un nuevo archivo llamado *avanzando.ck* y adentro copiemos lo siguiente:


>*avanzando.ck*
```Java
// cadena de sonido
SinOsc miSonidoVariando => dac;
// variaciones
330 => miSonidoVariando.freq;
0.5 => miSonidoVariando.gain;
// transcurre el tiempo
3::second => now;
```

Ahora ejecutemos nuestro nuevo ejemplo con:

```bash
$ chuck avanzando.ck
```

Podemos editar nuestro código y cambiar los valores de `miSonidoVariando.freq`, intente cambiar el numero 330 por 440, por 2000 quizá 100 o por números que se le ocurran.
`miSonidoVariando.gain` también puede ser cambiado por valores entre 0 y 1.

Lo que esta sucediendo aquí es que teníamos un objeto predeterminado en ChucK llamado `SinOsc`, le asignamos los atributos de ese objeto a nuestro objeto que llamamos `miSonidoVariado`, nuestro objeto hereda las características y las funciones, dos de las muchas funciones que hereda son `freq` y `gain` que se refieren a Frecuencia y Ganancia respectivamente. Entonces al decir `330 => miSonidoVariado.freq` estamos asignando el valor 330 a la frecuencia de nuestro objeto `miSonidoVariado` que heredo su sonido y características de `SinOsc`.

Algo que hace valioso a ChucK es su capacidad de generar sonidos o música que no ha sido escrita previamente, en el siguiente ejemplo usaremos la funciona matemática Random para crear cambiar aleatoriamente la frecuencia.

[200aleatoriaFrecuencia.ck](200aleatoriaFrecuencia.ck)


  ChucK se escribe de manera similar a otros lenguajes de programación, donde se puede leer la lógica (el orden de las tareas a realizar), esto le da una ventaja sobre programas  que usan conexiones gráficas, que a pesar de ser muy legibles en un programa sencillo, se vuelven  ilegibles en programas complejos y es difícil re-usar partes de su código.
  
  
  
  
  
 
  En nuestro contexto hay un crecimiento de la cultura de la programación, grupos como MedellinJS atraen jóvenes interesados en aprender de programación, muchos de ellos están concentrados en desarrollar sitios web o aplicaciones móviles y videojuegos, creemos que  ChucK puede ser una  herramienta poderosa para programar el aspecto musical y sonoro de las aplicaciones móviles, videojuegos, e instalaciones sonoras.
 
  Artistas como Kaziuz y Aeromostra estan profundizando en el uso de ChucK en sus proyectos.


Bibliogrfía:

"The ChucK Audio Programming Language 'A Strongly-Timed and On-the-fly Environ/mentality'" Ge Wang
