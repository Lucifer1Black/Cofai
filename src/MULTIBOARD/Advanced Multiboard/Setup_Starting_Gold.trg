{
  "Id": 1871913334,
  "Comment": null,
  "IsScript": true,
  "RunOnMapInit": false,
  "Script": "library StartingGoldSetup initializer Init\r\n\r\n    private function Init takes nothing returns nothing\r\n        local integer i = 0\r\n        local player p\r\n        \r\n        loop\r\n            exitwhen i > 11\r\n            set p = Player(i)\r\n            \r\n            // Verificamos que esté jugando y sea controlado por usuario/computadora\r\n            if (GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING) then\r\n                \r\n                // CONDICIÓN DE EXCLUSIÓN:\r\n                // i != 0 (Jugador 1 - Rojo)\r\n                // i != 6 (Jugador 7 - Verde)\r\n                if (i != 0 and i != 6) then\r\n                    call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, 750)\r\n                else\r\n                    // Opcional: ¿Cuánto oro quieres que tengan el Rojo y Verde? \r\n                    // Si quieres que empiecen con 0 o lo estándar, déjalo así o ajusta aquí:\r\n                    // call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, 0)\r\n                endif\r\n                \r\n            endif\r\n            \r\n            set i = i + 1\r\n        endloop\r\n        \r\n        set p = null\r\n    endfunction\r\n\r\nendlibrary\r\n\r\n",
  "Events": [],
  "LocalVariables": [],
  "Conditions": [],
  "Actions": []
}