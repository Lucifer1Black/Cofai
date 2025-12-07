{
  "Id": 50331807,
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
                "ParamType": 3,
                "VariableId": 100663707,
                "arrayIndexValues": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663689,
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
                "ParamType": 2,
                "value": "OperatorEqualENE"
              },
              {
                "ParamType": 5,
                "value": "false"
              }
            ],
            "value": "OperatorCompareBoolean"
          }
        }
      ],
      "Then": [
        {
          "ElementType": 1,
          "If": [
            {
              "isEnabled": true,
              "function": {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663732,
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
                    "value": "OperatorEqualENE"
                  },
                  {
                    "ParamType": 5,
                    "value": "false"
                  }
                ],
                "value": "OperatorCompareBoolean"
              }
            }
          ],
          "Then": [
            {
              "ElementType": 1,
              "If": [
                {
                  "isEnabled": true,
                  "function": {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663727,
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
                        "ParamType": 5,
                        "value": "----------------------------------------------------------------------------------------"
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
                        "value": "----------------------------------------------------------------------------------------"
                      }
                    ],
                    "value": "CommentString"
                  }
                },
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
                                "VariableId": 100663690,
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
                            "value": "GetHeroLevel"
                          },
                          {
                            "ParamType": 2,
                            "value": "OperatorGreaterEq"
                          },
                          {
                            "ParamType": 5,
                            "value": "8"
                          }
                        ],
                        "value": "OperatorCompareInteger"
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
                            "ParamType": 5,
                            "value": "----------------------------------------------------------------------------------------"
                          }
                        ],
                        "value": "CommentString"
                      }
                    },
                    {
                      "isEnabled": false,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 4,
                            "TriggerId": 50331818,
                            "value": null
                          }
                        ],
                        "value": "ConditionalTriggerExecute"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "----------------------------------------------------------------------------------------"
                          }
                        ],
                        "value": "CommentString"
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
                            "ParamType": 5,
                            "value": "----------------------------------------------------------------------------------------"
                          }
                        ],
                        "value": "CommentString"
                      }
                    },
                    {
                      "isEnabled": false,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 4,
                            "TriggerId": 50331811,
                            "value": null
                          }
                        ],
                        "value": "ConditionalTriggerExecute"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "----------------------------------------------------------------------------------------"
                          }
                        ],
                        "value": "CommentString"
                      }
                    }
                  ],
                  "isEnabled": true,
                  "function": {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "IfThenElseMultiple"
                  }
                },
                {
                  "isEnabled": true,
                  "function": {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 5,
                        "value": "----------------------------------------------------------------------------------------"
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
                        "value": "----------------------------------------------------------------------------------------"
                      }
                    ],
                    "value": "CommentString"
                  }
                }
              ],
              "Else": [
                {
                  "ElementType": 1,
                  "If": [
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663726,
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
                            "value": "OperatorEqualENE"
                          },
                          {
                            "ParamType": 5,
                            "value": "false"
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
                            "ParamType": 5,
                            "value": "----------------------------------------------------------------------------------------"
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
                            "value": "------------------------------------LANE TIME------------------------------------"
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
                            "value": "----------------------------------------------------------------------------------------"
                          }
                        ],
                        "value": "CommentString"
                      }
                    },
                    {
                      "isEnabled": false,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 4,
                            "TriggerId": 50331811,
                            "value": null
                          }
                        ],
                        "value": "ConditionalTriggerExecute"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "----------------------------------------------------------------------------------------"
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
                            "value": "----------------------------------------------------------------------------------------"
                          }
                        ],
                        "value": "CommentString"
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
                            "ParamType": 5,
                            "value": "----------------------------------------------------------------------------------------"
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
                            "value": "------------------------------------PUSH or DEF------------------------------------"
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
                            "value": "----------------------------------------------------------------------------------------"
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
                            "VariableId": 100663353,
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
                                "VariableId": 100663690,
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
                            "value": "GetUnitLoc"
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
                            "VariableId": 100663485,
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
                                "parameters": [
                                  {
                                    "ParamType": 5,
                                    "value": "1200.00"
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
                                        "value": "2200.00"
                                      },
                                      {
                                        "ParamType": 2,
                                        "value": "OperatorSubtract"
                                      },
                                      {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663690,
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
                                            "value": "GetUnitMoveSpeed"
                                          },
                                          {
                                            "ParamType": 2,
                                            "value": "OperatorMultiply"
                                          },
                                          {
                                            "ParamType": 5,
                                            "value": "2.00"
                                          }
                                        ],
                                        "value": "OperatorReal"
                                      }
                                    ],
                                    "value": "OperatorReal"
                                  }
                                ],
                                "value": "OperatorReal"
                              },
                              {
                                "ParamType": 3,
                                "VariableId": 100663353,
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
                                              },
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663704,
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
                                            "value": "IsUnitAlly"
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
                                "value": "GetBooleanAnd"
                              }
                            ],
                            "value": "GetUnitsInRangeOfLocMatching"
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
                            "VariableId": 100663510,
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
                                "value": "3000.00"
                              },
                              {
                                "ParamType": 3,
                                "VariableId": 100663353,
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
                                              },
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663704,
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
                                            "value": "IsUnitAlly"
                                          },
                                          {
                                            "ParamType": 2,
                                            "value": "OperatorEqualENE"
                                          },
                                          {
                                            "ParamType": 5,
                                            "value": "false"
                                          }
                                        ],
                                        "value": "OperatorCompareBoolean"
                                      }
                                    ],
                                    "value": "GetBooleanAnd"
                                  }
                                ],
                                "value": "GetBooleanAnd"
                              }
                            ],
                            "value": "GetUnitsInRangeOfLocMatching"
                          }
                        ],
                        "value": "SetVariable"
                      }
                    },
                    {
                      "ElementType": 1,
                      "If": [
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
                                        "VariableId": 100663485,
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
                                    "value": "CountUnitsInGroup"
                                  },
                                  {
                                    "ParamType": 2,
                                    "value": "OperatorLess"
                                  },
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663729,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663689,
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
                                "value": "OperatorCompareInteger"
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
                                        "ParamType": 3,
                                        "VariableId": 100663485,
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
                                    "value": "CountUnitsInGroup"
                                  },
                                  {
                                    "ParamType": 2,
                                    "value": "OperatorLess"
                                  },
                                  {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663510,
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
                                    "value": "CountUnitsInGroup"
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
                      "Then": [
                        {
                          "ElementType": 9,
                          "isEnabled": true,
                          "function": {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663733,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663689,
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
                                "ParamType": 5,
                                "value": "true"
                              }
                            ],
                            "value": "SetVariable"
                          }
                        }
                      ],
                      "Else": [
                        {
                          "ElementType": 9,
                          "isEnabled": true,
                          "function": {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663733,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663689,
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
                                "ParamType": 5,
                                "value": "false"
                              }
                            ],
                            "value": "SetVariable"
                          }
                        }
                      ],
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [],
                        "value": "IfThenElseMultiple"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "-----------------------------------------------------------------------------"
                          }
                        ],
                        "value": "CommentString"
                      }
                    },
                    {
                      "isEnabled": false,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 4,
                            "TriggerId": 50331809,
                            "value": null
                          }
                        ],
                        "value": "ConditionalTriggerExecute"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "-----------------------------------------------------------------------------"
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
                            "value": "call DestroyGroup(udg_TempGroup)"
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
                            "value": "call DestroyGroup(udg_TempGroup_02)"
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
                            "value": "call RemoveLocation(udg_Spell_Caster_Point)"
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
                            "value": "-----------------------------------------------------------------------------"
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
                            "value": "----------------------------------------------------------------------------------------"
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
                            "value": "----------------------------------------------------------------------------------------"
                          }
                        ],
                        "value": "CommentString"
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
              ],
              "isEnabled": true,
              "function": {
                "ParamType": 1,
                "parameters": [],
                "value": "IfThenElseMultiple"
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
                    "ParamType": 5,
                    "value": "----------------------------------------------------------------------------------------"
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
                    "value": "------------------------------------ANCIENT CLASH------------------------------------"
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
                    "value": "----------------------------------------------------------------------------------------"
                  }
                ],
                "value": "CommentString"
              }
            },
            {
              "isEnabled": false,
              "function": {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 4,
                    "TriggerId": 50331808,
                    "value": null
                  }
                ],
                "value": "ConditionalTriggerExecute"
              }
            },
            {
              "isEnabled": true,
              "function": {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 5,
                    "value": "----------------------------------------------------------------------------------------"
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
                    "value": "----------------------------------------------------------------------------------------"
                  }
                ],
                "value": "CommentString"
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
      ],
      "Else": [
        {
          "isEnabled": false,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 4,
                "TriggerId": 50331810,
                "value": null
              }
            ],
            "value": "ConditionalTriggerExecute"
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