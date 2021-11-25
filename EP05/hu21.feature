Feature: HU21: Como usuario quiero valorar cada zona de acuerdo a la peligrosidad de robo para ganar puntos en mi perfil. 
    Scenario: E01: Visualizar el criterio de evaluación de las zonas peligrosas
        TA01:
        Given quiero calificar la peligrosidad de las zonas.
        When ingreso el nombre de la zona correcta="Chorrillos" y presiono el botón buscar.
        Then observó los criterios a tomar en cuenta para determinar la peligrosidad de una zona("Home-Zona-Calificación").
        Examples:
          | Zona         | Criterio       | menú principal            |
          | Chorrillos   | Calificar      | "Home-Zonas-Calificación" |
        
        Scenario: E02: No recibir puntos en mi perfil
        TA02:
        Given otorgue una calificación una zona peligrosa .
        When estoy en mi perfil ="Abel".
        Then el sistema no me muestra los puntos que bebía tener("Home-Perfil-Puntos").
        Examples:
          | usuario | Perfil  | menú principal           |
          | Abel    | Abel    | "Home-Perfil-Puntos"     |
          