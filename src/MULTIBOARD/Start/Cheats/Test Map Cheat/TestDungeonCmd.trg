{
  "Id": 88185618,
  "Comment": "",
  "IsScript": true,
  "RunOnMapInit": false,
  "Script": "scope TestDungeonCmd initializer Init\r\n\r\n    private function OnCommand takes nothing returns nothing\r\n        // Definimos las coordenadas de prueba. \r\n        // (0,0) es el centro del mapa. Si tu mazmorra está lejos, ajusta X e Y.\r\n        local real targetX = 0.0 \r\n        local real targetY = 0.0\r\n        \r\n        call BJDebugMsg(\"|cff00FF00[DEBUG]|r Ejecutando comando: -testboss\")\r\n        call BJDebugMsg(\"|cff00FF00[DEBUG]|r Spawneando Boss de Mazmorra en (\" + R2S(targetX) + \", \" + R2S(targetY) + \")\")\r\n        \r\n        // Llamada directa a la API pública que creamos en el paso anterior\r\n        call DungeonEvent_StartDungeonEncounter(targetX, targetY)\r\n    endfunction\r\n\r\n    private function Init takes nothing returns nothing\r\n        local trigger t = CreateTrigger()\r\n        local integer i = 0\r\n        \r\n        // Registramos el comando para todos los jugadores (útil para debug cooperativo)\r\n        loop\r\n            exitwhen i > 11\r\n            call TriggerRegisterPlayerChatEvent(t, Player(i), \"-testboss\", true)\r\n            set i = i + 1\r\n        endloop\r\n        \r\n        call TriggerAddAction(t, function OnCommand)\r\n        set t = null\r\n    endfunction\r\n\r\nendscope",
  "Events": [
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "Player01"
          },
          {
            "ParamType": 5,
            "value": "-allup"
          },
          {
            "ParamType": 2,
            "value": "ChatMatchTypeExact"
          }
        ],
        "value": "TriggerRegisterPlayerChatEvent"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "Player07"
          },
          {
            "ParamType": 5,
            "value": "-allup"
          },
          {
            "ParamType": 2,
            "value": "ChatMatchTypeExact"
          }
        ],
        "value": "TriggerRegisterPlayerChatEvent"
      }
    }
  ],
  "LocalVariables": [],
  "Conditions": [],
  "Actions": [
    {
      "ElementType": 9,
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 3,
            "VariableId": 100663345,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "0"
              }
            ],
            "value": null
          },
          {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetPlayableMapRect"
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetFilterUnit"
                          },
                          {
                            "ParamType": 2,
                            "value": "UnitTypeHero"
                          }
                        ],
                        "value": "IsUnitType"
                      },
                      {
                        "ParamType": 2,
                        "value": "OperatorEqualENE"
                      },
                      {
                        "ParamType": 5,
                        "value": "true"
                      }
                    ],
                    "value": "OperatorCompareBoolean"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetFilterUnit"
                          }
                        ],
                        "value": "IsUnitAliveBJ"
                      },
                      {
                        "ParamType": 2,
                        "value": "OperatorEqualENE"
                      },
                      {
                        "ParamType": 5,
                        "value": "true"
                      }
                    ],
                    "value": "OperatorCompareBoolean"
                  }
                ],
                "value": "GetBooleanAnd"
              }
            ],
            "value": "GetUnitsInRectMatching"
          }
        ],
        "value": "SetVariable"
      }
    },
    {
      "ElementType": 8,
      "Actions": [
        {
          "ElementType": 4,
          "Actions": [
            {
              "isEnabled": true,
              "function": {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetEnumUnit"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetEnumUnit"
                          }
                        ],
                        "value": "GetHeroLevel"
                      },
                      {
                        "ParamType": 2,
                        "value": "OperatorAdd"
                      },
                      {
                        "ParamType": 5,
                        "value": "1"
                      }
                    ],
                    "value": "OperatorInt"
                  },
                  {
                    "ParamType": 2,
                    "value": "ShowHideHide"
                  }
                ],
                "value": "SetHeroLevel"
              }
            }
          ],
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663345,
                "arrayIndexValues": [
                  {
                    "ParamType": 5,
                    "value": "0"
                  },
                  {
                    "ParamType": 5,
                    "value": "0"
                  }
                ],
                "value": null
              }
            ],
            "value": "ForGroupMultiple"
          }
        }
      ],
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 3,
            "VariableId": 100663436,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "0"
              }
            ],
            "value": null
          },
          {
            "ParamType": 5,
            "value": "1"
          },
          {
            "ParamType": 5,
            "value": "9"
          }
        ],
        "value": "ForLoopVarMultiple"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "call DestroyGroup (udg_Spell_UnitGroup)"
          }
        ],
        "value": "CustomScriptCode"
      }
    }
  ]
}