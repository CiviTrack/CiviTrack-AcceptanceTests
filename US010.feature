Feature: Ver rutas sugeridas por comunidad.

  Como usuario, quiero ver rutas seguras recomendadas por otros,
  para tomar decisiones informadas basadas en la experiencia colectiva.

  Scenario: Acceso a rutas populares
    Given Que el usuario abre el panel de comunidad
    When Revisa las rutas sugeridas
    Then Verá opciones ordenadas por número de recomendaciones

  Scenario: Votación de ruta sugerida
    Given Que el usuario ha probado una ruta sugerida
    When La califica positivamente
    Then Se sumará su voto al total visible

  Ejemplos: Variables de entrada
    | acción_usuario           | ruta_sugerida_id |
    | Revisa rutas sugeridas   | RS001            |
    | Califica positivamente   | RS001            |

  Ejemplos: Variables de salida
    | resultado_esperado                                                  |
    | Lista de rutas sugeridas ordenadas por número de recomendaciones   |
    | Total de votos de la ruta incrementado y visible                   |
