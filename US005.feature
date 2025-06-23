Feature: Indicar universidad o institución.

  Como usuario registrado, quiero indicar a qué universidad o institución pertenezco, 
  para que esta información quede reflejada en mi perfil.

  Scenario: Mostrar lista de universidades/instituciones 
    Given Que el usuario ha finalizado el registro con correo personal
    When Accede a la sección para indicar su universidad o institución
    Then El sistema mostrará una lista con opciones de universidades e instituciones con barra de búsqueda

  Scenario: Selección de universidad/institución existente
    Given Que el usuario visualiza la lista de universidades/instituciones
    When Selecciona una universidad o institución de la lista
    Then El sistema guardará esa elección y la mostrará en su perfil

  Scenario: Ingreso de universidad/institución no listada
    Given Que el usuario no encuentra su universidad o institución en la lista
    When Escribe el nombre manualmente y confirma
    Then El sistema guardará la universidad o institución ingresada y la mostrará en su perfil

  Scenario: Ingreso del año de ingreso a la institución
    Given Que el usuario ya ha seleccionado o ingresado su universidad/institución
    When Se le solicite el año de ingreso
    Then Podrá elegirlo desde un menú desplegable o ingresarlo manualmente
    And El sistema lo guardará junto con la información institucional en su perfil

  Ejemplos: Variables de entrada
    | universidad_institucion           | año_ingreso |
    | Universidad Nacional de Ingeniería | 2022        |
    | Instituto Superior Libertador     | 2020        |
    | Otro (escrito manualmente)        | 2019        |

  Ejemplos: Variables de salida
    | resultado_esperado                                                                 |
    | Universidad seleccionada reflejada en el perfil del usuario                        |
    | Universidad ingresada manualmente guardada y visible en el perfil                  |
    | Año de ingreso registrado junto a la universidad/institución en el perfil del usuario |
