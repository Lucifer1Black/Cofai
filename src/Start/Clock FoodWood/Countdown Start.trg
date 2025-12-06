{
  "Id": 50331656,
  "Comment": "",
  "IsScript": false,
  "RunOnMapInit": false,
  "Script": "",
  "Events": [
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [],
        "value": "MapInitializationEvent"
      }
    }
  ],
  "LocalVariables": [],
  "Conditions": [],
  "Actions": [
    {
      "ElementType": 5,
      "Actions": [
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetEnumPlayer"
              },
              {
                "ParamType": 2,
                "value": "PlayerStateFoodUsed"
              },
              {
                "ParamType": 5,
                "value": "120"
              }
            ],
            "value": "SetPlayerState"
          }
        }
      ],
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 1,
            "parameters": [],
            "value": "GetPlayersAll"
          }
        ],
        "value": "ForForceMultiple"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 4,
            "TriggerId": 50331657,
            "value": null
          }
        ],
        "value": "EnableTrigger"
      }
    }
  ]
}