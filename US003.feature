Feature: Inicio de sesión.

  Como usuario, quiero iniciar sesión con mi correo y contraseña, 
  para acceder a mi cuenta de forma segura.

  Scenario: Inicio de sesión exitoso
    Given Que el usuario ya tiene una cuenta registrada
    When Introduce su correo y contraseña correctamente en el formulario de inicio de sesión
    Then El sistema validará las credenciales y lo redirigirá a la pantalla principal de la app

  Scenario: Inicio de sesión fallido por credenciales incorrectas
    Given Que el usuario intenta iniciar sesión
    When Introduce una combinación inválida de correo y/o contraseña
    Then El sistema mostrará un mensaje de error indicando que las credenciales son incorrectas y no permitirá el acceso

  Scenario: Inicio de sesión bloqueado
    Given Que el usuario intenta iniciar sesión
    When Introduce una combinación inválida de correo y/o contraseña
    Then El sistema mostrará un mensaje de que su cuenta se ha bloqueado por motivos de seguridad y que vuelva a acceder en un tiempo estimado

  Ejemplos: Variables de entrada
    | correo_electrónico         | contraseña         | intentos_fallidos |
    | usuario@gmail.com          | correcta123        | 0                 |
    | usuario@gmail.com          | incorrecta         | 1                 |
    | usuario@gmail.com          | incorrecta         | 5                 |

  Ejemplos: Variables de salida
    | resultado_esperado                                                                       |
    | Acceso concedido y redirección a pantalla principal                                       |
    | Mensaje de error: "Credenciales incorrectas. Intenta nuevamente."                         |
    | Mensaje de seguridad: "Cuenta bloqueada temporalmente. Intenta después de 15 minutos."   |
