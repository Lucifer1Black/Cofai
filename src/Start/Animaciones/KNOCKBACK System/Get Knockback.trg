{
  "Id": 50331894,
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
            "value": "0.02"
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
                        "VariableId": 100663414,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663412,
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
                        "VariableId": 100663410,
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
                    "value": "IsUnitInGroup"
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
              "ElementType": 1,
              "If": [
                {
                  "isEnabled": true,
                  "function": {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663418,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663412,
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
                        "value": "OperatorGreaterEq"
                      },
                      {
                        "ParamType": 3,
                        "VariableId": 100663417,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663412,
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
                          },
                          {
                            "ParamType": 5,
                            "value": "0"
                          }
                        ],
                        "value": null
                      }
                    ],
                    "value": "OperatorCompareReal"
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
                        "VariableId": 100663414,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663412,
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
                        "VariableId": 100663410,
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
                    "value": "GroupRemoveUnitSimple"
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
                        "VariableId": 100663411,
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
                            "VariableId": 100663411,
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
                            "value": "OperatorSubtract"
                          },
                          {
                            "ParamType": 5,
                            "value": "1"
                          }
                        ],
                        "value": "OperatorInt"
                      }
                    ],
                    "value": "SetVariable"
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
                            "ParamType": 3,
                            "VariableId": 100663413,
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
                            "value": "OperatorGreater"
                          },
                          {
                            "ParamType": 3,
                            "VariableId": 100663412,
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
                        "value": "OperatorCompareInteger"
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
                            "VariableId": 100663415,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "VariableId": 100663415,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663413,
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
                            "VariableId": 100663414,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "VariableId": 100663414,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663413,
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
                            "VariableId": 100663416,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "VariableId": 100663416,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663413,
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
                            "VariableId": 100663417,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "VariableId": 100663417,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663413,
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
                            "VariableId": 100663418,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "VariableId": 100663418,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663413,
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
                            "VariableId": 100663419,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "VariableId": 100663419,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663413,
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
                            "VariableId": 100663420,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "VariableId": 100663420,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663413,
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
                            "VariableId": 100663421,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "VariableId": 100663421,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663413,
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
                            "VariableId": 100663422,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "VariableId": 100663422,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663413,
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
                            "VariableId": 100663423,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "VariableId": 100663423,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663413,
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
                            "VariableId": 100663424,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "VariableId": 100663424,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663413,
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
                            "VariableId": 100663425,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "VariableId": 100663425,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663413,
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
                            "VariableId": 100663412,
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
                          },
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                              },
                              {
                                "ParamType": 2,
                                "value": "OperatorSubtract"
                              },
                              {
                                "ParamType": 5,
                                "value": "1"
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "SetVariable"
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
                },
                {
                  "ElementType": 9,
                  "isEnabled": true,
                  "function": {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663414,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663413,
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
                        "value": "UnitNull"
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
                        "VariableId": 100663413,
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
                            "VariableId": 100663413,
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
                            "value": "OperatorSubtract"
                          },
                          {
                            "ParamType": 5,
                            "value": "1"
                          }
                        ],
                        "value": "OperatorInt"
                      }
                    ],
                    "value": "SetVariable"
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
                            "ParamType": 3,
                            "VariableId": 100663411,
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
                            "value": "OperatorEqual"
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
                  "Then": [
                    {
                      "ElementType": 9,
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663413,
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
                            "parameters": [],
                            "value": "GetTriggeringTrigger"
                          }
                        ],
                        "value": "DisableTrigger"
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
              "Else": [
                {
                  "ElementType": 9,
                  "isEnabled": true,
                  "function": {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663429,
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
                                "ParamType": 3,
                                "VariableId": 100663420,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663412,
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
                                "value": "OperatorDivide"
                              },
                              {
                                "ParamType": 3,
                                "VariableId": 100663417,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663412,
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
                          },
                          {
                            "ParamType": 2,
                            "value": "OperatorMultiply"
                          },
                          {
                            "ParamType": 3,
                            "VariableId": 100663418,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                  "ElementType": 9,
                  "isEnabled": true,
                  "function": {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663419,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663412,
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
                            "VariableId": 100663429,
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
                            "value": "OperatorSubtract"
                          },
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663419,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663412,
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
                                "ParamType": 5,
                                "value": "0.10"
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
                        "VariableId": 100663430,
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
                                "ParamType": 3,
                                "VariableId": 100663420,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663412,
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
                                "value": "OperatorSubtract"
                              },
                              {
                                "ParamType": 3,
                                "VariableId": 100663419,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663412,
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
                        "VariableId": 100663428,
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
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663414,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                        "VariableId": 100663428,
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
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663428,
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
                          },
                          {
                            "ParamType": 3,
                            "VariableId": 100663430,
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
                            "VariableId": 100663416,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                              },
                              {
                                "ParamType": 5,
                                "value": "0"
                              }
                            ],
                            "value": null
                          }
                        ],
                        "value": "PolarProjectionBJ"
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
                        "VariableId": 100663424,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663412,
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
                            "VariableId": 100663424,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "value": "OperatorAdd"
                          },
                          {
                            "ParamType": 5,
                            "value": "1"
                          }
                        ],
                        "value": "OperatorInt"
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
                        "VariableId": 100663425,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663412,
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
                            "VariableId": 100663425,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "value": "OperatorAdd"
                          },
                          {
                            "ParamType": 5,
                            "value": "1"
                          }
                        ],
                        "value": "OperatorInt"
                      }
                    ],
                    "value": "SetVariable"
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
                            "ParamType": 3,
                            "VariableId": 100663423,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                      "ElementType": 11,
                      "Actions": [
                        {
                          "ElementType": 1,
                          "If": [
                            {
                              "ElementType": 3,
                              "Or": [
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
                                            "value": "GetEnumDestructable"
                                          }
                                        ],
                                        "value": "GetDestructableTypeId"
                                      },
                                      {
                                        "ParamType": 2,
                                        "value": "OperatorEqualENE"
                                      },
                                      {
                                        "ParamType": 5,
                                        "value": "ITtw"
                                      }
                                    ],
                                    "value": "OperatorCompareDestructableCode"
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
                                            "parameters": [],
                                            "value": "GetEnumDestructable"
                                          }
                                        ],
                                        "value": "GetDestructableTypeId"
                                      },
                                      {
                                        "ParamType": 2,
                                        "value": "OperatorEqualENE"
                                      },
                                      {
                                        "ParamType": 5,
                                        "value": "NTtw"
                                      }
                                    ],
                                    "value": "OperatorCompareDestructableCode"
                                  }
                                }
                              ],
                              "isEnabled": true,
                              "function": {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "OrMultiple"
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
                                    "value": "GetEnumDestructable"
                                  }
                                ],
                                "value": "KillDestructable"
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
                            "ParamType": 5,
                            "value": "200.00"
                          },
                          {
                            "ParamType": 3,
                            "VariableId": 100663428,
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
                        "value": "EnumDestructablesInCircleBJMultiple"
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
                            "ParamType": 3,
                            "VariableId": 100663424,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "value": "OperatorEqual"
                          },
                          {
                            "ParamType": 5,
                            "value": "6"
                          }
                        ],
                        "value": "OperatorCompareInteger"
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
                            "VariableId": 100663424,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                        "value": "SetVariable"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663428,
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
                          },
                          {
                            "ParamType": 3,
                            "VariableId": 100663421,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                              },
                              {
                                "ParamType": 5,
                                "value": "0"
                              }
                            ],
                            "value": null
                          }
                        ],
                        "value": "AddSpecialEffectLocBJ"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetLastCreatedEffectBJ"
                          }
                        ],
                        "value": "DestroyEffectBJ"
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
                            "ParamType": 3,
                            "VariableId": 100663425,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "value": "OperatorEqual"
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
                      "ElementType": 9,
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663425,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                        "value": "SetVariable"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663428,
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
                          },
                          {
                            "ParamType": 3,
                            "VariableId": 100663422,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                              },
                              {
                                "ParamType": 5,
                                "value": "0"
                              }
                            ],
                            "value": null
                          }
                        ],
                        "value": "AddSpecialEffectLocBJ"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetLastCreatedEffectBJ"
                          }
                        ],
                        "value": "DestroyEffectBJ"
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
                },
                {
                  "isEnabled": true,
                  "function": {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663414,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663412,
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
                        "VariableId": 100663428,
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
                    "value": "SetUnitPositionLoc"
                  }
                },
                {
                  "isEnabled": true,
                  "function": {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 5,
                        "value": "call RemoveLocation (udg_KB_TempPoint[1])"
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
                        "value": "call RemoveLocation (udg_KB_TempPoint[2])"
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
                        "VariableId": 100663418,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663412,
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
                            "VariableId": 100663418,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663412,
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
                            "value": "OperatorAdd"
                          },
                          {
                            "ParamType": 3,
                            "VariableId": 100663430,
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
            "VariableId": 100663412,
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
          },
          {
            "ParamType": 5,
            "value": "1"
          },
          {
            "ParamType": 3,
            "VariableId": 100663413,
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
        "value": "ForLoopVarMultiple"
      }
    }
  ]
}