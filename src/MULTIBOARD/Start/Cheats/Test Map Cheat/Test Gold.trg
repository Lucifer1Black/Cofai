{
  "Id": 50332124,
  "Comment": "",
  "IsScript": false,
  "RunOnMapInit": false,
  "Script": "",
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
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "-gold"
              },
              {
                "ParamType": 5,
                "value": ""
              }
            ],
            "value": "OperatorString"
          },
          {
            "ParamType": 2,
            "value": "ChatMatchTypeSubstring"
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
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "-gold"
              },
              {
                "ParamType": 5,
                "value": ""
              }
            ],
            "value": "OperatorString"
          },
          {
            "ParamType": 2,
            "value": "ChatMatchTypeSubstring"
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
            "VariableId": 100663566,
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
            "parameters": [],
            "value": "GetEventPlayerChatString"
          }
        ],
        "value": "SetVariable"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663566,
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
                    "value": "6"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663566,
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
                    "value": "StringLength"
                  }
                ],
                "value": "SubStringBJ"
              }
            ],
            "value": "S2I"
          },
          {
            "ParamType": 1,
            "parameters": [],
            "value": "GetTriggerPlayer"
          },
          {
            "ParamType": 2,
            "value": "PlayerStateGold"
          }
        ],
        "value": "AdjustPlayerStateBJ"
      }
    }
  ]
}