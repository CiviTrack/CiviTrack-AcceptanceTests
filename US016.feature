Feature: Visualizar y validar reportes de incidentes.

  Como usuario, quiero acceder a los detalles de un reporte para ver quién lo ha reportado, 
  cuántas validaciones tiene, revisar las evidencias disponibles 
  y tener la opción de validarlo yo también si considero que es verídico.

  Scenario: Acceso a la lista de reportes
    Given Que el usuario accede al tercer ícono del menú principal ("Ver Reportes")
    When Se muestra la lista de incidentes reportados
    Then Podrá visualizar cada reporte con información como:
      | tipo de incidente |
      | distancia         |
      | ubicación         |
      | estado (activo o inactivo) |
      | fecha y hora      |
    And Verá un botón llamado "Ver Validaciones" en cada tarjeta de reporte

  Scenario: Ver detalles del reporte y validaciones
    Given Que el usuario presiona el botón “Ver Validaciones” de un incidente
    When Se carga la pantalla de detalles del reporte
    Then Podrá ver:
      | número total de validaciones                         |
      | nombre del usuario que hizo el reporte               |
      | evidencias (fotos o videos)                          |
      | botón “Validar” para añadir su propia validación     |

  Ejemplos: Variables de entrada
    | incidente_id | acción_usuario         |
    | INC045       | Presiona Ver Validaciones |

  Ejemplos: Variables de salida
    | resultado_esperado                                                                     |
    | Detalles completos del incidente mostrados, incluyendo validaciones y botón "Validar" |
