Feature: Contactar con soporte técnico.

  Como usuario, quiero contactar con soporte ante cualquier duda,
  para recibir asistencia de forma clara y oportuna.

  Scenario: Acceso al botón de contacto
    Given Que el usuario busca ayuda
    When Presiona "Contacto" en el menú
    Then Podrá elegir entre correo, chat o formulario

  Scenario: Confirmación de contacto enviado
    Given Que el usuario ha enviado un mensaje
    When Finaliza el proceso
    Then El sistema muestra un mensaje de que fue recibido correctamente

  Ejemplos: Variables de entrada
    | canal_seleccionado | contenido_mensaje             |
    | Correo              | Consulta sobre rutas seguras  |
    | Chat                | Error en visualización        |

  Ejemplos: Variables de salida
    | resultado_esperado                                      |
    | Canales de contacto mostrados correctamente             |
    | Mensaje de confirmación tras enviar el contacto         |
