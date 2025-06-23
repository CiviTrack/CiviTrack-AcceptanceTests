Feature: Obtener insignias por participación.

  Como estudiante, quiero recibir insignias por contribuir con la comunidad,
  para motivarme y reflejar mi participación activa.

  Scenario: Insignia por número de reportes
    Given Que el usuario ha hecho 10 reportes válidos
    When Alcanza esa meta
    Then Se desbloquea una insignia y se agrega a su perfil

  Scenario: Insignia por validaciones
    Given Que el usuario ha validado 15 reportes de otros
    When Se cumpla el requisito
    Then Se le asignará una insignia de colaborador activo

  Ejemplos: Variables de entrada
    | tipo_actividad | cantidad |
    | Reportes       | 10       |
    | Validaciones   | 15       |

  Ejemplos: Variables de salida
    | resultado_esperado                                       |
    | Insignia desbloqueada y visible en el perfil del usuario |
    | Insignia de "Colaborador activo" asignada                |
