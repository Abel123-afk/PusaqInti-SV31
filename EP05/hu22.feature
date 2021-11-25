Feature: HU22: Como usuario deseo visualizar la clasificación de las zonas para no frecuentar las de mayor riesgo.  
    Scenario: E01: Usuario visualiza la clasificación de las zonas con riesgo.
        TA01:
        Given me encuentro en la visualización de las zonas de riesgo.
        When veo la clasificación de las zonas="Zonas de Lima" y presionó el botón buscar.
        Then el sistema me muestra una ruta por donde tengo que dirigirme para llegar a mi destino("Home-Zona-Ruta")
        Examples:
          | Clasificación   | menú principal             |
          | Zonas de Lima   | "Home-Zonas-Rutas seguras" |
        
        Scenario: E02: No Usuario no visualiza correctamente la zona
        TA02:
        Given me encuentro me autetifique en la app.
        When estoy en la sección de visualización="Lima Provincias" y no conozco las avenidad correctas="Avenida 28 de Julio".
        Then la app le solicita activar la geolocalización para guiarme correctamente("Home-Perfil-Puntos").
        Examples:
          | Zona               | Avenida       | menú principal           |
          | Lima Provincias    | 28 de Julio   | "Home-Zonas-Activar GPS"     |
        