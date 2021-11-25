Feature: HU16 Como usuario deseo que la geolocalización reconozca los puntos de longitud y latitud en menos de 5 milisegundos para estar alerta a tiempo real de los peligros. 
    Scenario: EO1 Visualizar las zonas seguras 
        TA01
        Given quiero visualizar el nombre de las zonas seguras en un mapa.
        When ingresó al geolocalizador de la app.
        Then me muestra la zona con su respectivo logo que identifica a una zona segura en todas las zonas del mapa.
        Examples:
        |usuario | boton  geolocalizador| Distrito    |resultado|                                                    |
        |Pedro   |presiono              | La victoria |me muestra la zona con su respectivo logo que identifica a una zona segura en todas las zonas del mapa|
    
    Scenario: EO2 Visualizar las zonas seguras 
        TA02
        Given me encuentro en la opción del geolocalizador.
        When  ingresó el nombre incorrecto de una zona.
        Then me muestra un mensaje advirtiendo que el nombre ingresado no existe.
        Examples:
        |usuario | ingreso nombre          |Distrito     |resultado                                                           |
        |Pedro   |pongo nombre incorrecto  |la vicptoria |me muestra un mensaje advirtiendo que el nombre ingresado no existe.|
    

     Scenario: EO3 Solicitó información en tiempo real
        TA03
        Given he ingresado al geolocalizador de la app.
        When solicito información actualizado y verídica de una determinada zona.
        Then este me permite visualizarlo en menos de 1 segundo.
        Examples:
    |usuario | información de la zona | Distrito  |resultado|                                     
    |Pedro   | ingreso                |la victoria|me permite visualizarlo en menos de 1 segundo|
    
    
    Scenario: EO4 Visualizar la opción del geo localizador
        TA04
        Given he iniciado sesión con mi cuenta en la app. 
        When  estoy en la sección de funcionalidades.
        Then debo ver al geolocalizador diferenciado para usarlo.
        Examples:
        |usuario | seccion de funciones   |resultado|                                     
        |Pedro   | ingreso                |ver al geolocalizador diferenciado para usarlo|
    
    
    Scenario: EO5 Uso el geolocalizador para una determinada zona
        TA05
        Given ingresé correctamente el nombre de la zona.  
        When presione el botón buscar.
        Then de observar el nivel de peligrosidad de la zona en 1 segundo.
        Examples:
        |usuario | buscar   |resultado                                                |                                     
        |Pedro   | presiono |observar el nivel de peligrosidad de la zona en 1 segundo|
    