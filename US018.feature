Feature: Invitar a otros usuarios.

  Como usuario, quiero invitar a mis contactos y ganar puntos,
  para fomentar el uso de la aplicación y obtener recompensas.

  Scenario: Envío de invitación
    Given Que el usuario quiere invitar a un contacto
    When Comparte su código de invitación
    Then El nuevo usuario podrá usarlo al registrarse

  Scenario: Registro exitoso con código
    Given Que el invitado se registra con el código
    When Se completa el registro
    Then Ambos reciben puntos de recompensa

  Ejemplos: Variables de entrada
    | código_invitación | estado_registro |
    | ABC123            | Completo        |
    | XYZ789            | Completo        |

  Ejemplos: Variables de salida
    | resultado_esperado                                 |
    | Invitado registrado con código                     |
    | Puntos de recompensa asignados al usuario y al invitado |
