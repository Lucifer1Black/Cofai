{
  "Id": 50332160,
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
            "value": "PlayerUnitEventDeath"
          }
        ],
        "value": "TriggerRegisterAnyUnitEventBJ"
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
            "value": " // CREEPS"
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
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetTriggerUnit"
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
                "value": "OperatorNotEqualENE"
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
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetTriggerUnit"
                  },
                  {
                    "ParamType": 2,
                    "value": "UnitTypeStructure"
                  }
                ],
                "value": "IsUnitType"
              },
              {
                "ParamType": 2,
                "value": "OperatorNotEqualENE"
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
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetTriggerUnit"
                          }
                        ],
                        "value": "GetOwningPlayer"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetKillingUnitBJ"
                          }
                        ],
                        "value": "GetOwningPlayer"
                      }
                    ],
                    "value": "IsPlayerEnemy"
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
                    "value": " // ENEMY"
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
                    "VariableId": 100663768,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "GetKillingUnitBJ"
                              }
                            ],
                            "value": "GetOwningPlayer"
                          }
                        ],
                        "value": "GetConvertedPlayerId"
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
                        "VariableId": 100663768,
                        "arrayIndexValues": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [],
                                    "value": "GetKillingUnitBJ"
                                  }
                                ],
                                "value": "GetOwningPlayer"
                              }
                            ],
                            "value": "GetConvertedPlayerId"
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
                    "value": " // DENY"
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
                    "VariableId": 100663767,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "GetKillingUnitBJ"
                              }
                            ],
                            "value": "GetOwningPlayer"
                          }
                        ],
                        "value": "GetConvertedPlayerId"
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
                        "VariableId": 100663767,
                        "arrayIndexValues": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [],
                                    "value": "GetKillingUnitBJ"
                                  }
                                ],
                                "value": "GetOwningPlayer"
                              }
                            ],
                            "value": "GetConvertedPlayerId"
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
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": " // HEROES"
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
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetTriggerUnit"
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
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetTriggerUnit"
                          }
                        ],
                        "value": "GetOwningPlayer"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetKillingUnitBJ"
                          }
                        ],
                        "value": "GetOwningPlayer"
                      }
                    ],
                    "value": "IsPlayerEnemy"
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
                    "value": " // KILL ENEMY HERO"
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
                    "VariableId": 100663766,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "GetKillingUnitBJ"
                              }
                            ],
                            "value": "GetOwningPlayer"
                          }
                        ],
                        "value": "GetConvertedPlayerId"
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
                        "VariableId": 100663766,
                        "arrayIndexValues": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [],
                                    "value": "GetKillingUnitBJ"
                                  }
                                ],
                                "value": "GetOwningPlayer"
                              }
                            ],
                            "value": "GetConvertedPlayerId"
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
                    "VariableId": 100663765,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "GetTriggerUnit"
                              }
                            ],
                            "value": "GetOwningPlayer"
                          }
                        ],
                        "value": "GetConvertedPlayerId"
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
                        "VariableId": 100663765,
                        "arrayIndexValues": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [],
                                    "value": "GetTriggerUnit"
                                  }
                                ],
                                "value": "GetOwningPlayer"
                              }
                            ],
                            "value": "GetConvertedPlayerId"
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
                    "value": " // SUCIDE"
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
                    "VariableId": 100663765,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "GetTriggerUnit"
                              }
                            ],
                            "value": "GetOwningPlayer"
                          }
                        ],
                        "value": "GetConvertedPlayerId"
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
                        "VariableId": 100663765,
                        "arrayIndexValues": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [],
                                    "value": "GetTriggerUnit"
                                  }
                                ],
                                "value": "GetOwningPlayer"
                              }
                            ],
                            "value": "GetConvertedPlayerId"
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
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": " // UPDATE"
          }
        ],
        "value": "CommentString"
      }
    },
    {
      "ElementType": 6,
      "Actions": [
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663778,
                "arrayIndexValues": [
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetForLoopIndexA"
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
                "ParamType": 5,
                "value": "2"
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663766,
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
                        "value": "OperatorAdd"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663766,
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
                            "ParamType": 2,
                            "value": "OperatorAdd"
                          },
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663766,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 5,
                                    "value": "3"
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
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663766,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 5,
                                        "value": "4"
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
                                    "VariableId": 100663766,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 5,
                                        "value": "5"
                                      },
                                      {
                                        "ParamType": 5,
                                        "value": "0"
                                      }
                                    ],
                                    "value": null
                                  }
                                ],
                                "value": "OperatorInt"
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "OperatorInt"
                      }
                    ],
                    "value": "OperatorInt"
                  }
                ],
                "value": "I2S"
              }
            ],
            "value": "MultiboardSetItemValueBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663778,
                "arrayIndexValues": [
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetForLoopIndexA"
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
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663766,
                        "arrayIndexValues": [
                          {
                            "ParamType": 5,
                            "value": "6"
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
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663766,
                            "arrayIndexValues": [
                              {
                                "ParamType": 5,
                                "value": "7"
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
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663766,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 5,
                                    "value": "8"
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
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663766,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 5,
                                        "value": "9"
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
                                    "VariableId": 100663766,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 5,
                                        "value": "10"
                                      },
                                      {
                                        "ParamType": 5,
                                        "value": "0"
                                      }
                                    ],
                                    "value": null
                                  }
                                ],
                                "value": "OperatorInt"
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "OperatorInt"
                      }
                    ],
                    "value": "OperatorInt"
                  }
                ],
                "value": "I2S"
              }
            ],
            "value": "MultiboardSetItemValueBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663778,
                "arrayIndexValues": [
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetForLoopIndexA"
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
                "value": "4"
              },
              {
                "ParamType": 5,
                "value": "2"
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663765,
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
                        "value": "OperatorAdd"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663765,
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
                            "ParamType": 2,
                            "value": "OperatorAdd"
                          },
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663765,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 5,
                                    "value": "3"
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
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663765,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 5,
                                        "value": "4"
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
                                    "VariableId": 100663765,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 5,
                                        "value": "5"
                                      },
                                      {
                                        "ParamType": 5,
                                        "value": "0"
                                      }
                                    ],
                                    "value": null
                                  }
                                ],
                                "value": "OperatorInt"
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "OperatorInt"
                      }
                    ],
                    "value": "OperatorInt"
                  }
                ],
                "value": "I2S"
              }
            ],
            "value": "MultiboardSetItemValueBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663778,
                "arrayIndexValues": [
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetForLoopIndexA"
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
                "value": "4"
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
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663765,
                        "arrayIndexValues": [
                          {
                            "ParamType": 5,
                            "value": "6"
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
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663765,
                            "arrayIndexValues": [
                              {
                                "ParamType": 5,
                                "value": "7"
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
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663765,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 5,
                                    "value": "8"
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
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663765,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 5,
                                        "value": "9"
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
                                    "VariableId": 100663765,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 5,
                                        "value": "10"
                                      },
                                      {
                                        "ParamType": 5,
                                        "value": "0"
                                      }
                                    ],
                                    "value": null
                                  }
                                ],
                                "value": "OperatorInt"
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "OperatorInt"
                      }
                    ],
                    "value": "OperatorInt"
                  }
                ],
                "value": "I2S"
              }
            ],
            "value": "MultiboardSetItemValueBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663778,
                "arrayIndexValues": [
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetForLoopIndexA"
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
                "value": "5"
              },
              {
                "ParamType": 5,
                "value": "2"
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
                            "ParamType": 3,
                            "VariableId": 100663768,
                            "arrayIndexValues": [
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "1"
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
                                    "value": "LeaderboardGetIndexedPlayerBJ"
                                  }
                                ],
                                "value": "GetConvertedPlayerId"
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
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663768,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "2"
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
                                        "value": "LeaderboardGetIndexedPlayerBJ"
                                      }
                                    ],
                                    "value": "GetConvertedPlayerId"
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
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663768,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "3"
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
                                            "value": "LeaderboardGetIndexedPlayerBJ"
                                          }
                                        ],
                                        "value": "GetConvertedPlayerId"
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
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663768,
                                        "arrayIndexValues": [
                                          {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "4"
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
                                                "value": "LeaderboardGetIndexedPlayerBJ"
                                              }
                                            ],
                                            "value": "GetConvertedPlayerId"
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
                                        "VariableId": 100663768,
                                        "arrayIndexValues": [
                                          {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "5"
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
                                                "value": "LeaderboardGetIndexedPlayerBJ"
                                              }
                                            ],
                                            "value": "GetConvertedPlayerId"
                                          },
                                          {
                                            "ParamType": 5,
                                            "value": "0"
                                          }
                                        ],
                                        "value": null
                                      }
                                    ],
                                    "value": "OperatorInt"
                                  }
                                ],
                                "value": "OperatorInt"
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "OperatorInt"
                      }
                    ],
                    "value": "I2S"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 5,
                        "value": "/"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663767,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "1"
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
                                        "value": "LeaderboardGetIndexedPlayerBJ"
                                      }
                                    ],
                                    "value": "GetConvertedPlayerId"
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
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663767,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "2"
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
                                            "value": "LeaderboardGetIndexedPlayerBJ"
                                          }
                                        ],
                                        "value": "GetConvertedPlayerId"
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
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663767,
                                        "arrayIndexValues": [
                                          {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "3"
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
                                                "value": "LeaderboardGetIndexedPlayerBJ"
                                              }
                                            ],
                                            "value": "GetConvertedPlayerId"
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
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663767,
                                            "arrayIndexValues": [
                                              {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "4"
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
                                                    "value": "LeaderboardGetIndexedPlayerBJ"
                                                  }
                                                ],
                                                "value": "GetConvertedPlayerId"
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
                                            "VariableId": 100663767,
                                            "arrayIndexValues": [
                                              {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "5"
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
                                                    "value": "LeaderboardGetIndexedPlayerBJ"
                                                  }
                                                ],
                                                "value": "GetConvertedPlayerId"
                                              },
                                              {
                                                "ParamType": 5,
                                                "value": "0"
                                              }
                                            ],
                                            "value": null
                                          }
                                        ],
                                        "value": "OperatorInt"
                                      }
                                    ],
                                    "value": "OperatorInt"
                                  }
                                ],
                                "value": "OperatorInt"
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "I2S"
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
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663778,
                "arrayIndexValues": [
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetForLoopIndexA"
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
                "value": "5"
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
                            "ParamType": 3,
                            "VariableId": 100663768,
                            "arrayIndexValues": [
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "1"
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
                                    "value": "LeaderboardGetIndexedPlayerBJ"
                                  }
                                ],
                                "value": "GetConvertedPlayerId"
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
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663768,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "2"
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
                                        "value": "LeaderboardGetIndexedPlayerBJ"
                                      }
                                    ],
                                    "value": "GetConvertedPlayerId"
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
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663768,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "3"
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
                                            "value": "LeaderboardGetIndexedPlayerBJ"
                                          }
                                        ],
                                        "value": "GetConvertedPlayerId"
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
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663768,
                                        "arrayIndexValues": [
                                          {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "4"
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
                                                "value": "LeaderboardGetIndexedPlayerBJ"
                                              }
                                            ],
                                            "value": "GetConvertedPlayerId"
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
                                        "VariableId": 100663768,
                                        "arrayIndexValues": [
                                          {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "5"
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
                                                "value": "LeaderboardGetIndexedPlayerBJ"
                                              }
                                            ],
                                            "value": "GetConvertedPlayerId"
                                          },
                                          {
                                            "ParamType": 5,
                                            "value": "0"
                                          }
                                        ],
                                        "value": null
                                      }
                                    ],
                                    "value": "OperatorInt"
                                  }
                                ],
                                "value": "OperatorInt"
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "OperatorInt"
                      }
                    ],
                    "value": "I2S"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 5,
                        "value": "/"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663767,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "1"
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
                                        "value": "LeaderboardGetIndexedPlayerBJ"
                                      }
                                    ],
                                    "value": "GetConvertedPlayerId"
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
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663767,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "2"
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
                                            "value": "LeaderboardGetIndexedPlayerBJ"
                                          }
                                        ],
                                        "value": "GetConvertedPlayerId"
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
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663767,
                                        "arrayIndexValues": [
                                          {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "3"
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
                                                "value": "LeaderboardGetIndexedPlayerBJ"
                                              }
                                            ],
                                            "value": "GetConvertedPlayerId"
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
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663767,
                                            "arrayIndexValues": [
                                              {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "4"
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
                                                    "value": "LeaderboardGetIndexedPlayerBJ"
                                                  }
                                                ],
                                                "value": "GetConvertedPlayerId"
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
                                            "VariableId": 100663767,
                                            "arrayIndexValues": [
                                              {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "5"
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
                                                    "value": "LeaderboardGetIndexedPlayerBJ"
                                                  }
                                                ],
                                                "value": "GetConvertedPlayerId"
                                              },
                                              {
                                                "ParamType": 5,
                                                "value": "0"
                                              }
                                            ],
                                            "value": null
                                          }
                                        ],
                                        "value": "OperatorInt"
                                      }
                                    ],
                                    "value": "OperatorInt"
                                  }
                                ],
                                "value": "OperatorInt"
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "I2S"
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
            "value": "2"
          }
        ],
        "value": "ForLoopAMultiple"
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
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [],
                        "value": "GetTriggerUnit"
                      }
                    ],
                    "value": "GetOwningPlayer"
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
                "ParamType": 3,
                "VariableId": 100663778,
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
                "value": "4"
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
                            "value": "GetTriggerUnit"
                          }
                        ],
                        "value": "GetOwningPlayer"
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
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663765,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "GetTriggerUnit"
                              }
                            ],
                            "value": "GetOwningPlayer"
                          }
                        ],
                        "value": "GetConvertedPlayerId"
                      },
                      {
                        "ParamType": 5,
                        "value": "0"
                      }
                    ],
                    "value": null
                  }
                ],
                "value": "I2S"
              }
            ],
            "value": "MultiboardSetItemValueBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663778,
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
                "ParamType": 5,
                "value": "4"
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
                            "value": "GetTriggerUnit"
                          }
                        ],
                        "value": "GetOwningPlayer"
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
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663765,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "GetTriggerUnit"
                              }
                            ],
                            "value": "GetOwningPlayer"
                          }
                        ],
                        "value": "GetConvertedPlayerId"
                      },
                      {
                        "ParamType": 5,
                        "value": "0"
                      }
                    ],
                    "value": null
                  }
                ],
                "value": "I2S"
              }
            ],
            "value": "MultiboardSetItemValueBJ"
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
                "ParamType": 3,
                "VariableId": 100663778,
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
                "value": "4"
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
                            "value": "GetTriggerUnit"
                          }
                        ],
                        "value": "GetOwningPlayer"
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
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663765,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "GetTriggerUnit"
                              }
                            ],
                            "value": "GetOwningPlayer"
                          }
                        ],
                        "value": "GetConvertedPlayerId"
                      },
                      {
                        "ParamType": 5,
                        "value": "0"
                      }
                    ],
                    "value": null
                  }
                ],
                "value": "I2S"
              }
            ],
            "value": "MultiboardSetItemValueBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663778,
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
                "ParamType": 5,
                "value": "4"
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
                            "value": "GetTriggerUnit"
                          }
                        ],
                        "value": "GetOwningPlayer"
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
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663765,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "GetTriggerUnit"
                              }
                            ],
                            "value": "GetOwningPlayer"
                          }
                        ],
                        "value": "GetConvertedPlayerId"
                      },
                      {
                        "ParamType": 5,
                        "value": "0"
                      }
                    ],
                    "value": null
                  }
                ],
                "value": "I2S"
              }
            ],
            "value": "MultiboardSetItemValueBJ"
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
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [],
                        "value": "GetKillingUnitBJ"
                      }
                    ],
                    "value": "GetOwningPlayer"
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
                "ParamType": 3,
                "VariableId": 100663778,
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
                "value": "5"
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
                            "value": "GetKillingUnitBJ"
                          }
                        ],
                        "value": "GetOwningPlayer"
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
                            "VariableId": 100663768,
                            "arrayIndexValues": [
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 1,
                                        "parameters": [],
                                        "value": "GetKillingUnitBJ"
                                      }
                                    ],
                                    "value": "GetOwningPlayer"
                                  }
                                ],
                                "value": "GetConvertedPlayerId"
                              },
                              {
                                "ParamType": 5,
                                "value": "0"
                              }
                            ],
                            "value": null
                          }
                        ],
                        "value": "I2S"
                      },
                      {
                        "ParamType": 5,
                        "value": "/"
                      }
                    ],
                    "value": "OperatorString"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663767,
                        "arrayIndexValues": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [],
                                    "value": "GetKillingUnitBJ"
                                  }
                                ],
                                "value": "GetOwningPlayer"
                              }
                            ],
                            "value": "GetConvertedPlayerId"
                          },
                          {
                            "ParamType": 5,
                            "value": "0"
                          }
                        ],
                        "value": null
                      }
                    ],
                    "value": "I2S"
                  }
                ],
                "value": "OperatorString"
              }
            ],
            "value": "MultiboardSetItemValueBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663778,
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
                "value": "3"
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
                            "value": "GetKillingUnitBJ"
                          }
                        ],
                        "value": "GetOwningPlayer"
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
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663766,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "GetKillingUnitBJ"
                              }
                            ],
                            "value": "GetOwningPlayer"
                          }
                        ],
                        "value": "GetConvertedPlayerId"
                      },
                      {
                        "ParamType": 5,
                        "value": "0"
                      }
                    ],
                    "value": null
                  }
                ],
                "value": "I2S"
              }
            ],
            "value": "MultiboardSetItemValueBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663778,
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
                "ParamType": 5,
                "value": "3"
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
                            "value": "GetKillingUnitBJ"
                          }
                        ],
                        "value": "GetOwningPlayer"
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
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663766,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "GetKillingUnitBJ"
                              }
                            ],
                            "value": "GetOwningPlayer"
                          }
                        ],
                        "value": "GetConvertedPlayerId"
                      },
                      {
                        "ParamType": 5,
                        "value": "0"
                      }
                    ],
                    "value": null
                  }
                ],
                "value": "I2S"
              }
            ],
            "value": "MultiboardSetItemValueBJ"
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
                "ParamType": 3,
                "VariableId": 100663778,
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
                "ParamType": 5,
                "value": "5"
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
                            "value": "GetKillingUnitBJ"
                          }
                        ],
                        "value": "GetOwningPlayer"
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
                            "VariableId": 100663768,
                            "arrayIndexValues": [
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 1,
                                        "parameters": [],
                                        "value": "GetKillingUnitBJ"
                                      }
                                    ],
                                    "value": "GetOwningPlayer"
                                  }
                                ],
                                "value": "GetConvertedPlayerId"
                              },
                              {
                                "ParamType": 5,
                                "value": "0"
                              }
                            ],
                            "value": null
                          }
                        ],
                        "value": "I2S"
                      },
                      {
                        "ParamType": 5,
                        "value": "/"
                      }
                    ],
                    "value": "OperatorString"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663767,
                        "arrayIndexValues": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [],
                                    "value": "GetKillingUnitBJ"
                                  }
                                ],
                                "value": "GetOwningPlayer"
                              }
                            ],
                            "value": "GetConvertedPlayerId"
                          },
                          {
                            "ParamType": 5,
                            "value": "0"
                          }
                        ],
                        "value": null
                      }
                    ],
                    "value": "I2S"
                  }
                ],
                "value": "OperatorString"
              }
            ],
            "value": "MultiboardSetItemValueBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663778,
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
                "value": "3"
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
                            "value": "GetKillingUnitBJ"
                          }
                        ],
                        "value": "GetOwningPlayer"
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
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663766,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "GetKillingUnitBJ"
                              }
                            ],
                            "value": "GetOwningPlayer"
                          }
                        ],
                        "value": "GetConvertedPlayerId"
                      },
                      {
                        "ParamType": 5,
                        "value": "0"
                      }
                    ],
                    "value": null
                  }
                ],
                "value": "I2S"
              }
            ],
            "value": "MultiboardSetItemValueBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663778,
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
                "ParamType": 5,
                "value": "3"
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
                            "value": "GetKillingUnitBJ"
                          }
                        ],
                        "value": "GetOwningPlayer"
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
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663766,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "GetKillingUnitBJ"
                              }
                            ],
                            "value": "GetOwningPlayer"
                          }
                        ],
                        "value": "GetConvertedPlayerId"
                      },
                      {
                        "ParamType": 5,
                        "value": "0"
                      }
                    ],
                    "value": null
                  }
                ],
                "value": "I2S"
              }
            ],
            "value": "MultiboardSetItemValueBJ"
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
                    "VariableId": 100663766,
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
                    "value": "OperatorAdd"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663766,
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
                        "ParamType": 2,
                        "value": "OperatorAdd"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663766,
                            "arrayIndexValues": [
                              {
                                "ParamType": 5,
                                "value": "3"
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
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663766,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 5,
                                    "value": "4"
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
                                "VariableId": 100663766,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 5,
                                    "value": "5"
                                  },
                                  {
                                    "ParamType": 5,
                                    "value": "0"
                                  }
                                ],
                                "value": null
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "OperatorInt"
                      }
                    ],
                    "value": "OperatorInt"
                  }
                ],
                "value": "OperatorInt"
              },
              {
                "ParamType": 2,
                "value": "OperatorGreater"
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663766,
                    "arrayIndexValues": [
                      {
                        "ParamType": 5,
                        "value": "6"
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
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663766,
                        "arrayIndexValues": [
                          {
                            "ParamType": 5,
                            "value": "7"
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
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663766,
                            "arrayIndexValues": [
                              {
                                "ParamType": 5,
                                "value": "8"
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
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663766,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 5,
                                    "value": "9"
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
                                "VariableId": 100663766,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 5,
                                    "value": "10"
                                  },
                                  {
                                    "ParamType": 5,
                                    "value": "0"
                                  }
                                ],
                                "value": null
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "OperatorInt"
                      }
                    ],
                    "value": "OperatorInt"
                  }
                ],
                "value": "OperatorInt"
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
                "ParamType": 3,
                "VariableId": 100663778,
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
                "value": "2"
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663779,
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
                    "value": "CountPlayersInForceBJ"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorAdd"
                  },
                  {
                    "ParamType": 5,
                    "value": "6"
                  }
                ],
                "value": "OperatorInt"
              },
              {
                "ParamType": 5,
                "value": "0.00"
              },
              {
                "ParamType": 5,
                "value": "100.00"
              },
              {
                "ParamType": 5,
                "value": "0.00"
              },
              {
                "ParamType": 5,
                "value": "0"
              }
            ],
            "value": "MultiboardSetItemColorBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663778,
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
                "ParamType": 5,
                "value": "2"
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663779,
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
                    "value": "CountPlayersInForceBJ"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorAdd"
                  },
                  {
                    "ParamType": 5,
                    "value": "6"
                  }
                ],
                "value": "OperatorInt"
              },
              {
                "ParamType": 5,
                "value": "100.00"
              },
              {
                "ParamType": 5,
                "value": "0.00"
              },
              {
                "ParamType": 5,
                "value": "0.00"
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
                        "VariableId": 100663766,
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
                        "value": "OperatorAdd"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663766,
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
                            "ParamType": 2,
                            "value": "OperatorAdd"
                          },
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663766,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 5,
                                    "value": "3"
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
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663766,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 5,
                                        "value": "4"
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
                                    "VariableId": 100663766,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 5,
                                        "value": "5"
                                      },
                                      {
                                        "ParamType": 5,
                                        "value": "0"
                                      }
                                    ],
                                    "value": null
                                  }
                                ],
                                "value": "OperatorInt"
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "OperatorInt"
                      }
                    ],
                    "value": "OperatorInt"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorEqual"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663766,
                        "arrayIndexValues": [
                          {
                            "ParamType": 5,
                            "value": "6"
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
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663766,
                            "arrayIndexValues": [
                              {
                                "ParamType": 5,
                                "value": "7"
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
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663766,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 5,
                                    "value": "8"
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
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663766,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 5,
                                        "value": "9"
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
                                    "VariableId": 100663766,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 5,
                                        "value": "10"
                                      },
                                      {
                                        "ParamType": 5,
                                        "value": "0"
                                      }
                                    ],
                                    "value": null
                                  }
                                ],
                                "value": "OperatorInt"
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "OperatorInt"
                      }
                    ],
                    "value": "OperatorInt"
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
                    "ParamType": 3,
                    "VariableId": 100663778,
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
                    "value": "2"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663779,
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
                        "value": "CountPlayersInForceBJ"
                      },
                      {
                        "ParamType": 2,
                        "value": "OperatorAdd"
                      },
                      {
                        "ParamType": 5,
                        "value": "6"
                      }
                    ],
                    "value": "OperatorInt"
                  },
                  {
                    "ParamType": 5,
                    "value": "100.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "80.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "0.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "0"
                  }
                ],
                "value": "MultiboardSetItemColorBJ"
              }
            },
            {
              "isEnabled": true,
              "function": {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663778,
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
                    "ParamType": 5,
                    "value": "2"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663779,
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
                        "value": "CountPlayersInForceBJ"
                      },
                      {
                        "ParamType": 2,
                        "value": "OperatorAdd"
                      },
                      {
                        "ParamType": 5,
                        "value": "6"
                      }
                    ],
                    "value": "OperatorInt"
                  },
                  {
                    "ParamType": 5,
                    "value": "100.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "80.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "0.00"
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
                    "ParamType": 3,
                    "VariableId": 100663778,
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
                    "value": "2"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663779,
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
                        "value": "CountPlayersInForceBJ"
                      },
                      {
                        "ParamType": 2,
                        "value": "OperatorAdd"
                      },
                      {
                        "ParamType": 5,
                        "value": "6"
                      }
                    ],
                    "value": "OperatorInt"
                  },
                  {
                    "ParamType": 5,
                    "value": "100.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "0.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "0.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "0"
                  }
                ],
                "value": "MultiboardSetItemColorBJ"
              }
            },
            {
              "isEnabled": true,
              "function": {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663778,
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
                    "ParamType": 5,
                    "value": "2"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663779,
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
                        "value": "CountPlayersInForceBJ"
                      },
                      {
                        "ParamType": 2,
                        "value": "OperatorAdd"
                      },
                      {
                        "ParamType": 5,
                        "value": "6"
                      }
                    ],
                    "value": "OperatorInt"
                  },
                  {
                    "ParamType": 5,
                    "value": "0.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "100.00"
                  },
                  {
                    "ParamType": 5,
                    "value": "0.00"
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
            "ParamType": 3,
            "VariableId": 100663778,
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
            "value": "2"
          },
          {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663779,
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
                "value": "CountPlayersInForceBJ"
              },
              {
                "ParamType": 2,
                "value": "OperatorAdd"
              },
              {
                "ParamType": 5,
                "value": "6"
              }
            ],
            "value": "OperatorInt"
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
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663766,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "1"
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
                                        "value": "LeaderboardGetIndexedPlayerBJ"
                                      }
                                    ],
                                    "value": "GetConvertedPlayerId"
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
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663766,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "2"
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
                                            "value": "LeaderboardGetIndexedPlayerBJ"
                                          }
                                        ],
                                        "value": "GetConvertedPlayerId"
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
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663766,
                                        "arrayIndexValues": [
                                          {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "3"
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
                                                "value": "LeaderboardGetIndexedPlayerBJ"
                                              }
                                            ],
                                            "value": "GetConvertedPlayerId"
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
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663766,
                                            "arrayIndexValues": [
                                              {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "4"
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
                                                    "value": "LeaderboardGetIndexedPlayerBJ"
                                                  }
                                                ],
                                                "value": "GetConvertedPlayerId"
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
                                            "VariableId": 100663766,
                                            "arrayIndexValues": [
                                              {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "5"
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
                                                    "value": "LeaderboardGetIndexedPlayerBJ"
                                                  }
                                                ],
                                                "value": "GetConvertedPlayerId"
                                              },
                                              {
                                                "ParamType": 5,
                                                "value": "0"
                                              }
                                            ],
                                            "value": null
                                          }
                                        ],
                                        "value": "OperatorInt"
                                      }
                                    ],
                                    "value": "OperatorInt"
                                  }
                                ],
                                "value": "OperatorInt"
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "I2R"
                      },
                      {
                        "ParamType": 2,
                        "value": "OperatorDivide"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663766,
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
                                "value": "OperatorAdd"
                              },
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663766,
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
                                    "ParamType": 2,
                                    "value": "OperatorAdd"
                                  },
                                  {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663766,
                                        "arrayIndexValues": [
                                          {
                                            "ParamType": 5,
                                            "value": "3"
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
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663766,
                                            "arrayIndexValues": [
                                              {
                                                "ParamType": 5,
                                                "value": "4"
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
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663766,
                                                "arrayIndexValues": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "5"
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
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 3,
                                                    "VariableId": 100663766,
                                                    "arrayIndexValues": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "6"
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
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 3,
                                                        "VariableId": 100663766,
                                                        "arrayIndexValues": [
                                                          {
                                                            "ParamType": 5,
                                                            "value": "7"
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
                                                        "ParamType": 1,
                                                        "parameters": [
                                                          {
                                                            "ParamType": 3,
                                                            "VariableId": 100663766,
                                                            "arrayIndexValues": [
                                                              {
                                                                "ParamType": 5,
                                                                "value": "8"
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
                                                            "ParamType": 1,
                                                            "parameters": [
                                                              {
                                                                "ParamType": 3,
                                                                "VariableId": 100663766,
                                                                "arrayIndexValues": [
                                                                  {
                                                                    "ParamType": 5,
                                                                    "value": "9"
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
                                                                "VariableId": 100663766,
                                                                "arrayIndexValues": [
                                                                  {
                                                                    "ParamType": 5,
                                                                    "value": "10"
                                                                  },
                                                                  {
                                                                    "ParamType": 5,
                                                                    "value": "0"
                                                                  }
                                                                ],
                                                                "value": null
                                                              }
                                                            ],
                                                            "value": "OperatorInt"
                                                          }
                                                        ],
                                                        "value": "OperatorInt"
                                                      }
                                                    ],
                                                    "value": "OperatorInt"
                                                  }
                                                ],
                                                "value": "OperatorInt"
                                              }
                                            ],
                                            "value": "OperatorInt"
                                          }
                                        ],
                                        "value": "OperatorInt"
                                      }
                                    ],
                                    "value": "OperatorInt"
                                  }
                                ],
                                "value": "OperatorInt"
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "I2R"
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
                    "value": "100.00"
                  }
                ],
                "value": "OperatorReal"
              }
            ],
            "value": "R2S"
          }
        ],
        "value": "MultiboardSetItemValueBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 3,
            "VariableId": 100663778,
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
            "ParamType": 5,
            "value": "2"
          },
          {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663779,
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
                "value": "CountPlayersInForceBJ"
              },
              {
                "ParamType": 2,
                "value": "OperatorAdd"
              },
              {
                "ParamType": 5,
                "value": "6"
              }
            ],
            "value": "OperatorInt"
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
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663766,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 5,
                                    "value": "6"
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
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663766,
                                    "arrayIndexValues": [
                                      {
                                        "ParamType": 5,
                                        "value": "7"
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
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663766,
                                        "arrayIndexValues": [
                                          {
                                            "ParamType": 5,
                                            "value": "8"
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
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663766,
                                            "arrayIndexValues": [
                                              {
                                                "ParamType": 5,
                                                "value": "9"
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
                                            "VariableId": 100663766,
                                            "arrayIndexValues": [
                                              {
                                                "ParamType": 5,
                                                "value": "10"
                                              },
                                              {
                                                "ParamType": 5,
                                                "value": "0"
                                              }
                                            ],
                                            "value": null
                                          }
                                        ],
                                        "value": "OperatorInt"
                                      }
                                    ],
                                    "value": "OperatorInt"
                                  }
                                ],
                                "value": "OperatorInt"
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "I2R"
                      },
                      {
                        "ParamType": 2,
                        "value": "OperatorDivide"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663766,
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
                                "value": "OperatorAdd"
                              },
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663766,
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
                                    "ParamType": 2,
                                    "value": "OperatorAdd"
                                  },
                                  {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663766,
                                        "arrayIndexValues": [
                                          {
                                            "ParamType": 5,
                                            "value": "3"
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
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663766,
                                            "arrayIndexValues": [
                                              {
                                                "ParamType": 5,
                                                "value": "4"
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
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663766,
                                                "arrayIndexValues": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "5"
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
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 3,
                                                    "VariableId": 100663766,
                                                    "arrayIndexValues": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "6"
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
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 3,
                                                        "VariableId": 100663766,
                                                        "arrayIndexValues": [
                                                          {
                                                            "ParamType": 5,
                                                            "value": "7"
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
                                                        "ParamType": 1,
                                                        "parameters": [
                                                          {
                                                            "ParamType": 3,
                                                            "VariableId": 100663766,
                                                            "arrayIndexValues": [
                                                              {
                                                                "ParamType": 5,
                                                                "value": "8"
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
                                                            "ParamType": 1,
                                                            "parameters": [
                                                              {
                                                                "ParamType": 3,
                                                                "VariableId": 100663766,
                                                                "arrayIndexValues": [
                                                                  {
                                                                    "ParamType": 5,
                                                                    "value": "9"
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
                                                                "VariableId": 100663766,
                                                                "arrayIndexValues": [
                                                                  {
                                                                    "ParamType": 5,
                                                                    "value": "10"
                                                                  },
                                                                  {
                                                                    "ParamType": 5,
                                                                    "value": "0"
                                                                  }
                                                                ],
                                                                "value": null
                                                              }
                                                            ],
                                                            "value": "OperatorInt"
                                                          }
                                                        ],
                                                        "value": "OperatorInt"
                                                      }
                                                    ],
                                                    "value": "OperatorInt"
                                                  }
                                                ],
                                                "value": "OperatorInt"
                                              }
                                            ],
                                            "value": "OperatorInt"
                                          }
                                        ],
                                        "value": "OperatorInt"
                                      }
                                    ],
                                    "value": "OperatorInt"
                                  }
                                ],
                                "value": "OperatorInt"
                              }
                            ],
                            "value": "OperatorInt"
                          }
                        ],
                        "value": "I2R"
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
                    "value": "100.00"
                  }
                ],
                "value": "OperatorReal"
              }
            ],
            "value": "R2S"
          }
        ],
        "value": "MultiboardSetItemValueBJ"
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
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetTriggerUnit"
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
                "value": "GetTriggerPlayer"
              },
              {
                "ParamType": 2,
                "value": "OperatorNotEqualENE"
              },
              {
                "ParamType": 2,
                "value": "Player00"
              }
            ],
            "value": "OperatorComparePlayer"
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
                "value": "GetTriggerPlayer"
              },
              {
                "ParamType": 2,
                "value": "OperatorNotEqualENE"
              },
              {
                "ParamType": 2,
                "value": "Player06"
              }
            ],
            "value": "OperatorComparePlayer"
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
                    "VariableId": 100663348,
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
                "value": "GetOwningPlayer"
              },
              {
                "ParamType": 2,
                "value": "OperatorNotEqualENE"
              },
              {
                "ParamType": 2,
                "value": "PlayerNA"
              }
            ],
            "value": "OperatorComparePlayer"
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
                "VariableId": 100663348,
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
                "value": "GetKillingUnitBJ"
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
                "VariableId": 100663296,
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
                    "VariableId": 100663341,
                    "arrayIndexValues": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663355,
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
                    "value": "OperatorMultiply"
                  },
                  {
                    "ParamType": 5,
                    "value": "15"
                  }
                ],
                "value": "OperatorInt"
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
                "VariableId": 100663296,
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
                    "VariableId": 100663348,
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
                "value": "GetOwningPlayer"
              },
              {
                "ParamType": 2,
                "value": "PlayerStateGold"
              }
            ],
            "value": "AdjustPlayerStateBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "-----------------------------------------------------------------------------------------------"
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
                "VariableId": 100663296,
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
                    "value": "80"
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
                            "VariableId": 100663347,
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
                        "value": "OperatorMultiply"
                      },
                      {
                        "ParamType": 5,
                        "value": "5"
                      }
                    ],
                    "value": "OperatorInt"
                  }
                ],
                "value": "OperatorInt"
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
                "value": "GetPlayersAll"
              },
              {
                "ParamType": 5,
                "value": "10.00"
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663340,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663348,
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
                            "value": "GetOwningPlayer"
                          }
                        ],
                        "value": "GetConvertedPlayerId"
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
                        "value": " has killed "
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663340,
                            "arrayIndexValues": [
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [],
                                    "value": "GetTriggerPlayer"
                                  }
                                ],
                                "value": "GetConvertedPlayerId"
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
                                "value": "|r for "
                              },
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "|cffffff00"
                                      },
                                      {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663296,
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
                                        "value": "I2S"
                                      }
                                    ],
                                    "value": "OperatorString"
                                  },
                                  {
                                    "ParamType": 5,
                                    "value": "|r gold."
                                  }
                                ],
                                "value": "OperatorString"
                              }
                            ],
                            "value": "OperatorString"
                          }
                        ],
                        "value": "OperatorString"
                      }
                    ],
                    "value": "OperatorString"
                  }
                ],
                "value": "OperatorString"
              }
            ],
            "value": "DisplayTimedTextToForce"
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
  ]
}