Feature: Gestión automática del estado de incidentes.

  Como usuario, quiero que los reportes de incidentes se desactiven automáticamente después de 48 horas,
  para asegurar que solo se muestren alertas recientes, sin eliminar el historial para futuras consultas.

  Scenario: Desactivación automática del incidente
    Given Que un usuario ha reportado un incidente
    When Han transcurrido 48 horas desde la fecha y hora del registro
    Then El sistema cambiará automáticamente su estado a “inactivo”, dejando de mostrarse en el mapa en tiempo real, pero manteniéndose en la base de datos

  Scenario: Reporte actualizado por nuevos usuarios
    Given Que un incidente persiste después de 48 horas
    When Otro usuario lo vuelve a reportar
    Then El sistema lo registrará como un nuevo incidente con nueva fecha y hora de expiración

  Ejemplos: Variables de entrada
    | incidente_id | tiempo_transcurrido | nuevo_reporte |
    | INC123       | 48h                  | No            |
    | INC123       | 50h                  | Sí            |

  Ejemplos: Variables de salida
    | resultado_esperado                                                                    |
    | Estado del incidente cambiado a "inactivo", ya no visible en el mapa en tiempo real   |
    | Nuevo incidente creado con nueva fecha y hora                                         |
