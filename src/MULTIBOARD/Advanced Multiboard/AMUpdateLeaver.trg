{
  "Id": 50332161,
  "Comment": "",
  "IsScript": false,
  "RunOnMapInit": false,
  "Script": "",
  "Events": [],
  "LocalVariables": [],
  "Conditions": [],
  "Actions": [
    {
      "ElementType": 1,
      "If": [
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
                    "parameters": [],
                    "value": "GetTriggerPlayer"
                  },
                  {
                    "ParamType": 2,
                    "value": "Player00"
                  }
                ],
                "value": "IsPlayerAlly"
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
        }
      ],
      "Then": [
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetLastCreatedMultiboard"
              },
              {
                "ParamType": 5,
                "value": "1"
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
                        "value": "GetTriggerPlayer"
                      },
                      {
                        "ParamType": 3,
                        "VariableId": 100663781,
                        "arrayIndexValues": [
                          {
                            "ParamType": 5,
                            "value": "1"
                          },
                          {
                            "ParamType": 5,
                            "value": "0"
                          }
                        ],
                        "value": null
                      }
                    ],
                    "value": "LeaderboardGetPlayerIndexBJ"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorAdd"
                  },
                  {
                    "ParamType": 5,
                    "value": "2"
                  }
                ],
                "value": "OperatorInt"
              },
              {
                "ParamType": 5,
                "value": "20.00"
              },
              {
                "ParamType": 5,
                "value": "20.00"
              },
              {
                "ParamType": 5,
                "value": "20"
              },
              {
                "ParamType": 5,
                "value": "0"
              }
            ],
            "value": "MultiboardSetItemColorBJ"
          }
        }
      ],
      "Else": [
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetLastCreatedMultiboard"
              },
              {
                "ParamType": 5,
                "value": "1"
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
                        "value": "GetTriggerPlayer"
                      },
                      {
                        "ParamType": 3,
                        "VariableId": 100663781,
                        "arrayIndexValues": [
                          {
                            "ParamType": 5,
                            "value": "2"
                          },
                          {
                            "ParamType": 5,
                            "value": "0"
                          }
                        ],
                        "value": null
                      }
                    ],
                    "value": "LeaderboardGetPlayerIndexBJ"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorAdd"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663780,
                            "arrayIndexValues": [
                              {
                                "ParamType": 5,
                                "value": "1"
                              },
                              {
                                "ParamType": 5,
                                "value": "0"
                              }
                            ],
                            "value": null
                          }
                        ],
                        "value": "CountPlayersInForceBJ"
                      },
                      {
                        "ParamType": 2,
                        "value": "OperatorAdd"
                      },
                      {
                        "ParamType": 5,
                        "value": "4"
                      }
                    ],
                    "value": "OperatorInt"
                  }
                ],
                "value": "OperatorInt"
              },
              {
                "ParamType": 5,
                "value": "20.00"
              },
              {
                "ParamType": 5,
                "value": "20.00"
              },
              {
                "ParamType": 5,
                "value": "20"
              },
              {
                "ParamType": 5,
                "value": "0"
              }
            ],
            "value": "MultiboardSetItemColorBJ"
          }
        }
      ],
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [],
        "value": "IfThenElseMultiple"
      }
    }
  ]
}