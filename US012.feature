Feature: Ver nivel de congestión por ruta.

  Como usuario, quiero saber el nivel de congestión antes de tomar una ruta,
  para tomar decisiones informadas sobre mi desplazamiento.

  Scenario: Visualización de congestión
    Given Que el usuario consulta una ruta
    When El sistema detecta tráfico
    Then Mostrará un indicador de nivel (bajo, medio, alto)

  Scenario: Ruta sin tráfico
    Given Que la ruta está libre
    When El usuario la revisa
    Then El sistema mostrará el estado como "fluido"

  Ejemplos: Variables de entrada
    | ruta_id | nivel_trafico |
    | R001    | alto           |
    | R002    | fluido         |

  Ejemplos: Variables de salida
    | resultado_esperado                         |
    | Indicador de nivel: "Alto"                 |
    | Estado: "fluido"                           |
