Feature: Registro con correo personal.

  Como usuario, quiero registrarme con mi correo personal, 
  para facilitar el acceso a la plataforma sin necesidad de pertenecer a una institución académica específica.

  Scenario: Registro exitoso con correo personal
    Given Que el usuario se encuentra en el formulario de registro
    When Introduce un correo con dominio genérico válido (ej. @gmail.com, @hotmail.com)
    And Completa los demás campos requeridos
    Then El sistema permitirá completar el registro y mostrará un mensaje de confirmación

  Scenario: Registro fallido por formato de correo inválido
    Given Que el usuario está en el formulario de registro
    When Introduce un correo con formato incorrecto o incompleto
    Then El sistema mostrará un mensaje de error indicando que el correo electrónico no es válido

  Ejemplos: Variables de entrada
    | correo_electrónico         | campos_completos |
    | user123@gmail.com          | Sí               |
    | user_sin_arroba.com        | Sí               |

  Ejemplos: Variables de salida
    | resultado_esperado                                                    |
    | Registro exitoso y mensaje de confirmación                           |
    | Mensaje de error: "El correo electrónico ingresado no es válido"    |

