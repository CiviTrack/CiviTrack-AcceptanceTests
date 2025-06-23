Feature: Guardar rutas frecuentes.

  Como usuario, quiero guardar rutas que uso con frecuencia,
  para poder acceder a ellas fácilmente en el futuro.

  Scenario: Guardado de ruta personalizada
    Given Que el usuario ha buscado una ruta
    When Pulsa "Guardar ruta"
    Then Esta se almacena en su perfil para accesos futuros

  Scenario: Edición de ruta guardada
    Given Que el usuario quiere modificar una ruta
    When Entra a su lista de rutas
    Then Podrá editar el nombre o eliminarla

  Ejemplos: Variables de entrada
    | acción_usuario    | ruta_nombre      |
    | Guardar ruta      | Casa - Universidad |
    | Editar nombre     | Casa - Trabajo     |
    | Eliminar ruta     | Ruta de prueba     |

  Ejemplos: Variables de salida
    | resultado_esperado                                                    |
    | Ruta almacenada correctamente en el perfil del usuario               |
    | Ruta modificada o eliminada correctamente desde la lista de guardadas |
