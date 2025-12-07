{
  "Id": 50331863,
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
            "ParamType": 5,
            "value": "1.00"
          }
        ],
        "value": "TriggerRegisterTimerEventPeriodic"
      }
    }
  ],
  "LocalVariables": [],
  "Conditions": [],
  "Actions": [
    {
      "ElementType": 8,
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
                        "ParamType": 3,
                        "VariableId": 100663457,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663455,
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
            }
          ],
          "Then": [
            {
              "isEnabled": true,
              "function": {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663339,
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
                    "value": "3"
                  },
                  {
                    "ParamType": 3,
                    "VariableId": 100663455,
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
                        "value": "|c007d7d7d"
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
                                    "parameters": [
                                      {
                                        "ParamType": 2,
                                        "value": "UnitStateLife"
                                      },
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663457,
                                        "arrayIndexValues": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663455,
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
                                    "value": "GetUnitStateSwap"
                                  }
                                ],
                                "value": "R2I"
                              }
                            ],
                            "value": "I2S"
                          },
                          {
                            "ParamType": 5,
                            "value": "|r"
                          }
                        ],
                        "value": "OperatorString"
                      }
                    ],
                    "value": "OperatorString"
                  }
                ],
                "value": "MultiboardSetItemValueBJ"
              }
            }
          ],
          "Else": [],
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [],
            "value": "IfThenElseMultiple"
          }
        }
      ],
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 3,
            "VariableId": 100663455,
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
            "value": "12"
          }
        ],
        "value": "ForLoopVarMultiple"
      }
    }
  ]
}