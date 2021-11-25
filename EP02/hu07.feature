Feature: HU07: Como usuario quiero ganar puntos al reportar casos de robos para reunirme luego con un especialista de seguridad
    Scenario: E01: Ingreso a la aplicación a reportar casos de robos para contactarme luego con un especialista en seguridad.
        TA01:
        Given  que me encuentro en la app. 
        When busco la opción de reportar robos y lleno el formulario.
        Then  formalizo mi reporte y ganó 100 puntos en mi perfil.
        Examples:
          | usuario | password | menú principal                      |
          | sv31    | sv31     | "App- Realizar reporte-gano puntos" |
        
        Scenario: E02: No recibir los puntos por realizar reporte
        TA02:
        Given que estoy en la sección de realizar un reporte de robo.
        When doy clic en el botón enviar y no ganó puntos en mi perfil .
        Then  me muestra un mensaje que me advierte que los puntos se me asignarán máximo dentro de 48 horas.
        Examples:
          | usuario | password | menú principal                       |
          | sv31    | sv31     | "App-Realizar reporte-gano puntos"   |