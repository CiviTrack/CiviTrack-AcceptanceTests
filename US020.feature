Feature: Reportar errores técnicos.

  Como usuario, quiero reportar errores que encuentre en la app,
  para que el equipo de soporte pueda corregirlos y mejorar la experiencia.

  Scenario: Envío de reporte técnico
    Given Que el usuario detecta un error
    When Describe el problema y lo envía
    Then El sistema registra el incidente en soporte

  Scenario: Adjuntar evidencia técnica
    Given Que el usuario tiene una captura del error
    When La adjunta al formulario
    Then Se envía como parte del reporte

  Ejemplos: Variables de entrada
    | tipo_error          | evidencia_adjunta      |
    | Pantalla congelada  | captura_pantalla.png   |
    | Cierre inesperado   | log_error.txt          |

  Ejemplos: Variables de salida
    | resultado_esperado                                         |
    | Reporte técnico registrado en el sistema de soporte        |
    | Evidencia adjunta incluida correctamente en el reporte     |
