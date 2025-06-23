Feature: Acceso a mapa con ubicación.

  Como usuario, quiero acceder a un mapa con mi ubicación actual y un botón para reportar incidentes, 
  para notificar de forma rápida y precisa cualquier problema en la vía.

  Scenario: Visualización del mapa al presionar el ícono de reporte
    Given Que el usuario presiona el ícono de “Reportar” en el centro de la barra de tareas
    When Se abre la pantalla correspondiente
    Then El sistema mostrará un mapa interactivo centrado en la ubicación actual del usuario, con un ícono que indica su posición

  Ejemplos: Variables de entrada
    | acción_usuario        |
    | Presiona botón Reportar |

  Ejemplos: Variables de salida
    | resultado_esperado                                                             |
    | Mapa centrado en la ubicación actual con ícono de posición visible            |
