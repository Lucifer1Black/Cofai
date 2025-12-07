{
  "Id": 50331734,
  "Comment": "",
  "IsScript": false,
  "RunOnMapInit": false,
  "Script": "",
  "Events": [],
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
            "value": "------------------------------------------------------------------------------------"
          }
        ],
        "value": "CommentString"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "----------------------------CREEP TOP----------------------------"
          }
        ],
        "value": "CommentString"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "------------------------------------------------------------------------------------"
          }
        ],
        "value": "CommentString"
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
            "VariableId": 100663338,
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
                "ParamType": 5,
                "value": "Creep02 TOP Range"
              }
            ],
            "value": "GetRectCenter"
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
            "value": "1"
          },
          {
            "ParamType": 5,
            "value": "n02F"
          },
          {
            "ParamType": 2,
            "value": "Player06"
          },
          {
            "ParamType": 3,
            "VariableId": 100663338,
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
            "value": "RealUnitFacing"
          }
        ],
        "value": "CreateNUnitsAtLoc"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "call RemoveLocation(udg_TempPoint)"
          }
        ],
        "value": "CustomScriptCode"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "------------------------------------------------------------------------------------"
          }
        ],
        "value": "CommentString"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "------------------------------------------------------------------------------------"
          }
        ],
        "value": "CommentString"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 4,
            "TriggerId": 50331737,
            "value": null
          }
        ],
        "value": "ConditionalTriggerExecute"
      }
    }
  ]
}