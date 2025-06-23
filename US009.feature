Feature: Ver resumen semanal de actividad.

  Como usuario, quiero ver un resumen de mis reportes y contribuciones,
  para tener visibilidad de mi participación en la aplicación.

  Scenario: Resumen automático semanal
    Given Que ha transcurrido una semana
    When El usuario entra a la app
    Then Verá una tarjeta con sus estadísticas semanales

  Scenario: Consulta manual del historial
    Given Que el usuario quiere ver otro período
    When Selecciona fechas anteriores
    Then El sistema mostrará los datos correspondientes

  Ejemplos: Variables de entrada
    | fecha_ingreso     | fecha_consultada        |
    | 2025-06-21         | Última semana           |
    | 2025-06-21         | 2025-05-01 a 2025-05-07 |

  Ejemplos: Variables de salida
    | resultado_esperado                                         |
    | Tarjeta de resumen semanal con número de reportes y aportes |
    | Estadísticas correspondientes al rango de fechas elegido   |
