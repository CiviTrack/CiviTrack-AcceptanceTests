Feature: Recuperación de contraseña.

  Como usuario, quiero recuperar mi contraseña si la olvido, 
  para poder acceder nuevamente a mi cuenta.

  Scenario: Solicitud de recuperación de contraseña
    Given Que el usuario no recuerda su contraseña
    When Hace clic en el enlace “¿Olvidaste tu contraseña?” en la pantalla de inicio de sesión
    And Proporciona su correo electrónico registrado
    Then El sistema enviará un enlace de restablecimiento de contraseña a su correo

  Scenario: Restablecimiento exitoso de contraseña
    Given Que el usuario ha recibido el correo de recuperación
    When Hace clic en el enlace y crea una nueva contraseña válida
    Then El sistema confirmará el cambio y permitirá al usuario iniciar sesión con su nueva contraseña

  Ejemplos: Variables de entrada
    | correo_electrónico         | nueva_contraseña     |
    | usuario@gmail.com          | NuevaClave2025##     |

  Ejemplos: Variables de salida
    | resultado_esperado                                                               |
    | Enlace de recuperación enviado al correo                                         |
    | Mensaje: "Tu contraseña ha sido restablecida exitosamente. Ya puedes iniciar sesión" |
