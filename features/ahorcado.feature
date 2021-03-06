Feature: Juego del Ahorcado

Scenario: Portada
  Given Entro al juego
  Then Veo "Ahorcado 3.0"

Scenario: Pruebo con una letra invalida
  Given Entro al juego
  And La palabra secreta es "backlog"
  When Pruebo con "X"
  Then Veo "Vidas: 5"
  And Veo "_ _ _ _ _ _ _"

Scenario: Pruebo con una letra valida
  Given Entro al juego
  And La palabra secreta es "backlog"
  When Pruebo con "A"
  Then Veo "Vidas: 6"
  And Veo "_ A _ _ _ _ _"
  
