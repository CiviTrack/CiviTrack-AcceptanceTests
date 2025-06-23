Feature: Selección de rol del usuario.

  Como usuario, quiero seleccionar si soy estudiante o conductor, 
  para que la aplicación me personalice la experiencia según mi rol.

  Scenario: Mostrar opción de selección de rol tras registro
    Given Que el usuario ha completado el registro
    When Accede por primera vez a la aplicación
    Then El sistema mostrará automáticamente una pantalla para elegir entre "Estudiante" o "Conductor"

  Scenario: Guardar selección de rol
    Given Que el usuario selecciona su rol
    When Confirma su elección
    Then El sistema almacenará el rol asociado a su cuenta y personalizará la experiencia según esta

  Scenario: No mostrar selección de rol en futuros inicios
    Given Que el usuario ya eligió su rol
    When Inicie sesión posteriormente
    Then El sistema no volverá a pedir seleccionar el rol

  Ejemplos: Variables de entrada
    | rol_seleccionado |
    | Estudiante        |
    | Conductor         |

  Ejemplos: Variables de salida
    | resultado_esperado                                                        |
    | Pantalla personalizada según el rol elegido                              |
    | No se solicita selección de rol en futuros inicios de sesión             |
