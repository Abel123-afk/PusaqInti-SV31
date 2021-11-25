Feature: HU17 Como usuario deseo actualizar constantemente la situación de las zonas para mantener a los usuarios correctamente informados.  
    Scenario: EO1 Actualizó la zona correctamente
        TA01
        Given me encuentro en la opción de actualizar las zonas.
        When seleccionó el lugar en el mapa, ingresó su nombre="" y redactó lo que sucedió en la zona.
        Then visualizó un mensaje de actualización correcta de la zona.
        Examples:
        |Usuario|password| menu principal                        |
        |Pedro  |252qwq  | selecion de lugar - ingresar el suceso|
    
    Scenario: EO2 Ingresar a la sección de actualización 
        TA02
        Given he iniciado sesión en la app.
        When  seleccionó las funcionalidades="" de la app y presiono el botón actualizar.
        Then Visualizo la situación de las zonas actualizadas recientemente.
        Examples:
        |funcionalidad de la app |boton actualizar| resultado     |
        |reporte de robos        |presionar       |Visualizo la situación de las zonas actualizadas recientemente|

     Scenario: EO3 Visualizar las zonas actualizados recientes
        TA03
        Given me encuentro en la app.
        When se realicen las actualizaciones de las zonas.
        Then en la sección correspondiente lo observó.
        Examples:
        |funcionalidad de la app   | resultado              |
        | mostrar actualizaciones  |Observo la actualización|
  
    Scenario: EO4 Verificar que la actualización fue correcta
        TA04
        Given realice una actualización en la app.
        When  ingrese en la opción de verificar mi reporte.
        Then la app me muestra que la actualización se hizo correctamente.
        Examples:
        | usuario |boton verificar| resultado     |
        |  pedro |presionar       |muestra que la actualización se hizo correctamente|
    
    Scenario: EO5 Actualizó por error la zona incorrecta
        TA05
        Given estoy en la sección de actualizar la peligrosidad de la zona.
        When seleccionó la zona en el mapa e ingresó el nombre incorrecto.
        Then visualizó un mensaje que me advierte que el nombre no coincide con la zona seleccionada.
        Examples:
        | usuario |ingreso nombre del lugar| resultado     |
        |  pedro  |la victoria             |visualizó un mensaje que me advierte que el nombre no coincide con la zona seleccionada.|
    