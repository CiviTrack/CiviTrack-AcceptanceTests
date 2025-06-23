Feature: Ver tutorial inicial.

  Como usuario nuevo, quiero ver un tutorial inicial 
  para entender cómo funciona la app.

  Scenario: Visualización automática del tutorial
    Given Que el usuario accede por primera vez a la app
    When Completa el registro
    Then Aparecerá una ventana que lo redirigirá a un video guía de YouTube

  Scenario: Acceso manual al tutorial
    Given Que el usuario ya registró su cuenta
    When Accede al menú de ayuda
    Then Podrá ver nuevamente el tutorial completo de forma voluntaria

  Ejemplos: Variables de entrada
    | momento_acceso       | acción_usuario         |
    | Primer ingreso        | Completa registro      |
    | Sesión posterior      | Ingresa al menú de ayuda |

  Ejemplos: Variables de salida
    | resultado_esperado                                                           |
    | Redirección automática al video tutorial en YouTube                         |
    | Visualización voluntaria del tutorial desde el menú de ayuda               |
