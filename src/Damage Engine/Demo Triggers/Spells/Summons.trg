{
  "Id": 50331688,
  "Comment": "This trigger sets the damage based on certain conditions of the attack.",
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
            "ParamType": 3,
            "VariableId": 100663807,
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
            "ParamType": 2,
            "value": "LimitOpLessThan"
          },
          {
            "ParamType": 5,
            "value": "0.00"
          }
        ],
        "value": "TriggerRegisterVariableEvent"
      }
    }
  ],
  "LocalVariables": [],
  "Conditions": [],
  "Actions": [
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "//! runtextmacro DAMAGE_TRIGGER_CONFIG()"
          }
        ],
        "value": "CustomScriptCode"
      }
    },
    {
      "ElementType": 9,
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 3,
            "VariableId": 100663864,
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
            "ParamType": 3,
            "VariableId": 100663881,
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
        "value": "SetVariable"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "//! runtextmacro DAMAGE_TRIGGER_CONFIG_END()"
          }
        ],
        "value": "CustomScriptCode"
      }
    },
    {
      "isEnabled": false,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "value": ""
          },
          {
            "value": ""
          },
          {
            "value": ""
          },
          {
            "ParamType": 3,
            "VariableId": 100663899,
            "arrayIndexValues": [
              {
                "ParamType": 3,
                "VariableId": 100663836,
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
                "value": "0"
              }
            ],
            "value": null
          },
          {
            "ParamType": 3,
            "VariableId": 100663916,
            "arrayIndexValues": [
              {
                "ParamType": 3,
                "VariableId": 100663837,
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
                "value": "0"
              }
            ],
            "value": null
          }
        ],
        "value": "UnitDamageTargetBJ"
      }
    },
    {
      "ElementType": 9,
      "isEnabled": false,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "value": ""
          },
          {
            "value": ""
          }
        ],
        "value": "SetVariable"
      }
    }
  ]
}