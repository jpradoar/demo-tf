
### Jenkins EC2 strategy

<pre>
 Jenkins
	  levantar una instancia EC2
        IF (es para ejecutar algo)
            levantar una instancia SPOT
          ELSE IF (es para ejecutar alguna tarea sobre otro recurso que dure menos de 5min)
            levantar una instancia SPOT con un rol de administrador attachado
            eso sirve para que no tengas que poner las credenciales en .aws/
          ELSE
            Levantar una instancia ON_DEMAND para ejecutar tareas tipo terraform
            o cosas que requieran algo similar a mantener un estado o algo mas complejo.
</pre>
