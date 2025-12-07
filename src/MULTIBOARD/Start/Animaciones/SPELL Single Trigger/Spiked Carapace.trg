{
  "Id": 50331977,
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
            "ParamType": 3,
            "VariableId": 100663806,
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
            "value": "1.00"
          }
        ],
        "value": "TriggerRegisterVariableEvent"
      }
    }
  ],
  "LocalVariables": [],
  "Conditions": [
    {
      "ElementType": 2,
      "And": [
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
                    "VariableId": 100663372,
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
                    "value": "B046"
                  }
                ],
                "value": "UnitHasBuffBJ"
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
                    "ParamType": 5,
                    "value": "A0EM"
                  },
                  {
                    "ParamType": 3,
                    "VariableId": 100663372,
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
                "value": "GetUnitAbilityLevelSwapped"
              },
              {
                "ParamType": 2,
                "value": "OperatorGreater"
              },
              {
                "ParamType": 5,
                "value": "0"
              }
            ],
            "value": "OperatorCompareInteger"
          }
        }
      ],
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [],
        "value": "AndMultiple"
      }
    }
  ],
  "Actions": [
    {
      "ElementType": 9,
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 3,
            "VariableId": 100663297,
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
                "value": "1.00"
              },
              {
                "ParamType": 2,
                "value": "OperatorSubtract"
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 5,
                    "value": "0.30"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorAdd"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 5,
                        "value": "0.10"
                      },
                      {
                        "ParamType": 2,
                        "value": "OperatorMultiply"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 5,
                                "value": "A0EM"
                              },
                              {
                                "ParamType": 3,
                                "VariableId": 100663372,
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
                            "value": "GetUnitAbilityLevelSwapped"
                          }
                        ],
                        "value": "I2R"
                      }
                    ],
                    "value": "OperatorReal"
                  }
                ],
                "value": "OperatorReal"
              }
            ],
            "value": "OperatorReal"
          }
        ],
        "value": "SetVariable"
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
            "VariableId": 100663373,
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
                "ParamType": 3,
                "VariableId": 100663373,
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
                "value": "OperatorMultiply"
              },
              {
                "ParamType": 3,
                "VariableId": 100663297,
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
            "value": "OperatorReal"
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
            "value": "---------------------------------------------------------------"
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
            "value": "---------------------------------------------------------------"
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
            "VariableId": 100663297,
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
            "value": "0.00"
          }
        ],
        "value": "SetVariable"
      }
    }
  ]
}