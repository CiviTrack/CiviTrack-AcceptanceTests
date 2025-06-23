Feature: Pantalla de inicio y botón "Comenzar".

  Como usuario, quiero ver una pantalla de bienvenida con un botón "Comenzar",
  para iniciar el flujo de uso de la aplicación de manera clara y atractiva.

  Scenario: Visualización de la pantalla de inicio
    Given Que el usuario abre la aplicación
    When Se carga correctamente
    Then El sistema mostrará una imagen de bienvenida con el botón "Comenzar"

  Scenario: Redirección al siguiente paso
    Given Que el usuario presiona "Comenzar"
    When Se realiza la acción
    Then El sistema lo llevará al proceso de registro
