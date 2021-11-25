Feature: HU19 Como ciudadano quiero conocer a detalle las zonas peligrosas de Lima para implementar acciones de prevención al asistir a dichos lugares. 
    Scenario: EO1 Ingresó en la opción de visualizar la información de la zona 
        TA01
        Given he iniciado sesión y estoy en las opciones.
        When presione el botón de visualizar una lista de las zonas más peligrosas.
        Then debo observar una lista de los lugares peligrosos durante la semana.
        Examples:
        |usuario | boton visualizar zona |resultado|                                                    |
        |Pedro   |presiono               |observar una lista de los lugares peligrosos durante la semana|
    Scenario: EO2 Me muestra una lista de zonas peligrosas de hace un mes
        TA02
        Given me encuentro en las funcionalidades de la app.
        When ingresó en el botón de visualizar la lista de zonas peligrosas. 
        Then visualizó la lista desactualizada de las zonas más peligrosas de hace un mes.
        Examples:
       |usuario |Elija:Sur o Norte | boton visualizar zona |resultado|                                                    |
       |Pedro   |Sur         |presiono               |visualizó la lista desactualizada de las zonas más peligrosas de hace un mes|