{
  "Id": 50331822,
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
            "value": "PlayerUnitEventHero_Level"
          }
        ],
        "value": "TriggerRegisterAnyUnitEventBJ"
      }
    }
  ],
  "LocalVariables": [],
  "Conditions": [
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
            "parameters": [
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetTriggerPlayer"
              }
            ],
            "value": "GetPlayerController"
          },
          {
            "ParamType": 2,
            "value": "OperatorEqualENE"
          },
          {
            "ParamType": 2,
            "value": "MapControlComputer"
          }
        ],
        "value": "OperatorComparePlayerControl"
      }
    }
  ],
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
                    "parameters": [],
                    "value": "GetTriggerUnit"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorEqualENE"
                  },
                  {
                    "ParamType": 3,
                    "VariableId": 100663688,
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
                "value": "OperatorCompareUnit"
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
                  },
                  {
                    "ParamType": 3,
                    "VariableId": 100663688,
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
                    "VariableId": 100663687,
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
                    "value": "GetUnitPointValue"
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
                    "VariableId": 100663706,
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
                    "value": "GetHeroLevel"
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
                    "value": "------------------------------------TANKER------------------------------------"
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
                        "ParamType": 3,
                        "VariableId": 100663685,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663687,
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
                        "value": "------------------------------------LEVEL 04------------------------------------"
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
                            "ParamType": 3,
                            "VariableId": 100663706,
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
                            "value": "4"
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
                              },
                              {
                                "ParamType": 5,
                                "value": "I010"
                              }
                            ],
                            "value": "GetItemOfTypeFromUnitBJ"
                          }
                        ],
                        "value": "RemoveItem"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "------------------------------------------------------------------------------"
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
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "I04D"
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
                          }
                        ],
                        "value": "CreateItemLoc"
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
                            "VariableId": 100663643,
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
                            "value": "GetLastCreatedItem"
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
                            "VariableId": 100663643,
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
                        "value": "UnitAddItemSwapped"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "------------------------------------------------------------------------------"
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
                            "ParamType": 3,
                            "VariableId": 100663643,
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
                            "value": "InvulnerabilityInvulnerable"
                          }
                        ],
                        "value": "SetItemInvulnerableBJ"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663643,
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
                            "value": "PawnableOptionUnpawnable"
                          }
                        ],
                        "value": "SetItemPawnable"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663643,
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
                            "value": "DropNoDropOptionNoDrop"
                          }
                        ],
                        "value": "SetItemDroppableBJ"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "------------------------------------------------------------------------------"
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
                            "value": "------------------------------------------------------------------------------"
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
                            "value": "origin"
                          },
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
                          },
                          {
                            "ParamType": 5,
                            "value": "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"
                          }
                        ],
                        "value": "AddSpecialEffectTargetUnitBJ"
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
                                "VariableId": 100663706,
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
                                "value": "6"
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
                                "value": "ENCHANTED SHIELD"
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
                          "isEnabled": true,
                          "function": {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 5,
                                "value": "I04H"
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
                              }
                            ],
                            "value": "CreateItemLoc"
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
                                "VariableId": 100663643,
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
                                "value": "GetLastCreatedItem"
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
                                "VariableId": 100663643,
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
                            "value": "UnitAddItemSwapped"
                          }
                        },
                        {
                          "isEnabled": true,
                          "function": {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 5,
                                "value": "------------------------------------------------------------------------------"
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
                                "ParamType": 3,
                                "VariableId": 100663643,
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
                                "value": "InvulnerabilityInvulnerable"
                              }
                            ],
                            "value": "SetItemInvulnerableBJ"
                          }
                        },
                        {
                          "isEnabled": true,
                          "function": {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663643,
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
                                "value": "PawnableOptionUnpawnable"
                              }
                            ],
                            "value": "SetItemPawnable"
                          }
                        },
                        {
                          "isEnabled": true,
                          "function": {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663643,
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
                                "value": "DropNoDropOptionNoDrop"
                              }
                            ],
                            "value": "SetItemDroppableBJ"
                          }
                        },
                        {
                          "isEnabled": true,
                          "function": {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 5,
                                "value": "------------------------------------------------------------------------------"
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
                                "value": "call RemoveLocation(udg_TempPoint)"
                              }
                            ],
                            "value": "CustomScriptCode"
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
                                    "VariableId": 100663706,
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
                                    "value": "ARCANITE SHIELD"
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
                                          },
                                          {
                                            "ParamType": 5,
                                            "value": "I04H"
                                          }
                                        ],
                                        "value": "UnitHasItemOfTypeBJ"
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
                                          },
                                          {
                                            "ParamType": 5,
                                            "value": "I04H"
                                          }
                                        ],
                                        "value": "GetItemOfTypeFromUnitBJ"
                                      }
                                    ],
                                    "value": "RemoveItem"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "------------------------------------------------------------------------------"
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
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "I04G"
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
                                      }
                                    ],
                                    "value": "CreateItemLoc"
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
                                        "VariableId": 100663643,
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
                                        "value": "GetLastCreatedItem"
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
                                        "VariableId": 100663643,
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
                                    "value": "UnitAddItemSwapped"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "------------------------------------------------------------------------------"
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
                                        "ParamType": 3,
                                        "VariableId": 100663643,
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
                                        "value": "InvulnerabilityInvulnerable"
                                      }
                                    ],
                                    "value": "SetItemInvulnerableBJ"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663643,
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
                                        "value": "PawnableOptionUnpawnable"
                                      }
                                    ],
                                    "value": "SetItemPawnable"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663643,
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
                                        "value": "DropNoDropOptionNoDrop"
                                      }
                                    ],
                                    "value": "SetItemDroppableBJ"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "------------------------------------------------------------------------------"
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
                                        "value": "------------------------------------------------------------------------------"
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
                                        "value": "origin"
                                      },
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
                                      },
                                      {
                                        "ParamType": 5,
                                        "value": "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"
                                      }
                                    ],
                                    "value": "AddSpecialEffectTargetUnitBJ"
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
                                        "VariableId": 100663706,
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
                                        "value": "10"
                                      }
                                    ],
                                    "value": "OperatorCompareInteger"
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
                                                "ParamType": 5,
                                                "value": "1"
                                              },
                                              {
                                                "ParamType": 5,
                                                "value": "2"
                                              }
                                            ],
                                            "value": "GetRandomInt"
                                          },
                                          {
                                            "ParamType": 2,
                                            "value": "OperatorEqual"
                                          },
                                          {
                                            "ParamType": 5,
                                            "value": "1"
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
                                            "value": "PICK STUN"
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
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "I01K"
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
                                          }
                                        ],
                                        "value": "CreateItemLoc"
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
                                            "VariableId": 100663643,
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
                                            "value": "GetLastCreatedItem"
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
                                            "VariableId": 100663643,
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
                                        "value": "UnitAddItemSwapped"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "------------------------------------------------------------------------------"
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
                                            "ParamType": 3,
                                            "VariableId": 100663643,
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
                                            "value": "InvulnerabilityInvulnerable"
                                          }
                                        ],
                                        "value": "SetItemInvulnerableBJ"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663643,
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
                                            "value": "PawnableOptionUnpawnable"
                                          }
                                        ],
                                        "value": "SetItemPawnable"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663643,
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
                                            "value": "DropNoDropOptionNoDrop"
                                          }
                                        ],
                                        "value": "SetItemDroppableBJ"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "------------------------------------------------------------------------------"
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
                                            "value": "call RemoveLocation(udg_TempPoint)"
                                          }
                                        ],
                                        "value": "CustomScriptCode"
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
                                            "value": "ORB LIGHTING"
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
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "I04V"
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
                                          }
                                        ],
                                        "value": "CreateItemLoc"
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
                                            "VariableId": 100663643,
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
                                            "value": "GetLastCreatedItem"
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
                                            "VariableId": 100663643,
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
                                        "value": "UnitAddItemSwapped"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "------------------------------------------------------------------------------"
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
                                            "ParamType": 3,
                                            "VariableId": 100663643,
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
                                            "value": "InvulnerabilityInvulnerable"
                                          }
                                        ],
                                        "value": "SetItemInvulnerableBJ"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663643,
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
                                            "value": "PawnableOptionUnpawnable"
                                          }
                                        ],
                                        "value": "SetItemPawnable"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663643,
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
                                            "value": "DropNoDropOptionNoDrop"
                                          }
                                        ],
                                        "value": "SetItemDroppableBJ"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "------------------------------------------------------------------------------"
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
                                            "value": "call RemoveLocation(udg_TempPoint)"
                                          }
                                        ],
                                        "value": "CustomScriptCode"
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
                                  "ElementType": 1,
                                  "If": [
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663706,
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
                                            "value": "12"
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
                                            "value": "BATTLE HAMMER"
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
                                                  },
                                                  {
                                                    "ParamType": 5,
                                                    "value": "I01K"
                                                  }
                                                ],
                                                "value": "UnitHasItemOfTypeBJ"
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
                                                  },
                                                  {
                                                    "ParamType": 5,
                                                    "value": "I01K"
                                                  }
                                                ],
                                                "value": "GetItemOfTypeFromUnitBJ"
                                              }
                                            ],
                                            "value": "RemoveItem"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "I059"
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
                                              }
                                            ],
                                            "value": "CreateItemLoc"
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
                                                "VariableId": 100663643,
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
                                                "value": "GetLastCreatedItem"
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
                                                "VariableId": 100663643,
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
                                            "value": "UnitAddItemSwapped"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "InvulnerabilityInvulnerable"
                                              }
                                            ],
                                            "value": "SetItemInvulnerableBJ"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "PawnableOptionUnpawnable"
                                              }
                                            ],
                                            "value": "SetItemPawnable"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "DropNoDropOptionNoDrop"
                                              }
                                            ],
                                            "value": "SetItemDroppableBJ"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                                "value": "call RemoveLocation(udg_TempPoint)"
                                              }
                                            ],
                                            "value": "CustomScriptCode"
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
                                                "value": "THUNDER GUARD"
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
                                                      },
                                                      {
                                                        "ParamType": 5,
                                                        "value": "I04V"
                                                      }
                                                    ],
                                                    "value": "UnitHasItemOfTypeBJ"
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
                                                      },
                                                      {
                                                        "ParamType": 5,
                                                        "value": "I04V"
                                                      }
                                                    ],
                                                    "value": "GetItemOfTypeFromUnitBJ"
                                                  }
                                                ],
                                                "value": "RemoveItem"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "------------------------------------------------------------------------------"
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
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "I04T"
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
                                                  }
                                                ],
                                                "value": "CreateItemLoc"
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
                                                    "VariableId": 100663643,
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
                                                    "value": "GetLastCreatedItem"
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
                                                    "VariableId": 100663643,
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
                                                "value": "UnitAddItemSwapped"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "------------------------------------------------------------------------------"
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
                                                    "ParamType": 3,
                                                    "VariableId": 100663643,
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
                                                    "value": "InvulnerabilityInvulnerable"
                                                  }
                                                ],
                                                "value": "SetItemInvulnerableBJ"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 3,
                                                    "VariableId": 100663643,
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
                                                    "value": "PawnableOptionUnpawnable"
                                                  }
                                                ],
                                                "value": "SetItemPawnable"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 3,
                                                    "VariableId": 100663643,
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
                                                    "value": "DropNoDropOptionNoDrop"
                                                  }
                                                ],
                                                "value": "SetItemDroppableBJ"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "------------------------------------------------------------------------------"
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
                                                    "value": "call RemoveLocation(udg_TempPoint)"
                                                  }
                                                ],
                                                "value": "CustomScriptCode"
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
                                            "value": "------------------------------------------------------------------------------"
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
                                            "value": "origin"
                                          },
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
                                          },
                                          {
                                            "ParamType": 5,
                                            "value": "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"
                                          }
                                        ],
                                        "value": "AddSpecialEffectTargetUnitBJ"
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
                                                "VariableId": 100663706,
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
                                                "value": "16"
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
                                                "value": "FIRE AND ICE"
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
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "I01D"
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
                                              }
                                            ],
                                            "value": "CreateItemLoc"
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
                                                "VariableId": 100663643,
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
                                                "value": "GetLastCreatedItem"
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
                                                "VariableId": 100663643,
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
                                            "value": "UnitAddItemSwapped"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "InvulnerabilityInvulnerable"
                                              }
                                            ],
                                            "value": "SetItemInvulnerableBJ"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "PawnableOptionUnpawnable"
                                              }
                                            ],
                                            "value": "SetItemPawnable"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "DropNoDropOptionNoDrop"
                                              }
                                            ],
                                            "value": "SetItemDroppableBJ"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                                "value": "------------------------------------------------------------------------------"
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
                                                    "VariableId": 100663706,
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
                                                    "value": "18"
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
                                                    "value": "FIRE AND ICE"
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
                                                      },
                                                      {
                                                        "ParamType": 5,
                                                        "value": "I01D"
                                                      }
                                                    ],
                                                    "value": "GetItemOfTypeFromUnitBJ"
                                                  }
                                                ],
                                                "value": "RemoveItem"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "------------------------------------------------------------------------------"
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
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "I02D"
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
                                                  }
                                                ],
                                                "value": "CreateItemLoc"
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
                                                    "VariableId": 100663643,
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
                                                    "value": "GetLastCreatedItem"
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
                                                    "VariableId": 100663643,
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
                                                "value": "UnitAddItemSwapped"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "------------------------------------------------------------------------------"
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
                                                    "ParamType": 3,
                                                    "VariableId": 100663643,
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
                                                    "value": "InvulnerabilityInvulnerable"
                                                  }
                                                ],
                                                "value": "SetItemInvulnerableBJ"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 3,
                                                    "VariableId": 100663643,
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
                                                    "value": "PawnableOptionUnpawnable"
                                                  }
                                                ],
                                                "value": "SetItemPawnable"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 3,
                                                    "VariableId": 100663643,
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
                                                    "value": "DropNoDropOptionNoDrop"
                                                  }
                                                ],
                                                "value": "SetItemDroppableBJ"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "------------------------------------------------------------------------------"
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
                                                    "value": "------------------------------------------------------------------------------"
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
                                                    "value": "origin"
                                                  },
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
                                                  },
                                                  {
                                                    "ParamType": 5,
                                                    "value": "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"
                                                  }
                                                ],
                                                "value": "AddSpecialEffectTargetUnitBJ"
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
                                                        "VariableId": 100663706,
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
                                                        "value": "24"
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
                                                        "value": "IGNITER'S GUARD"
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
                                                        "value": "------------------------------------------------------------------------------"
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
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "I03X"
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
                                                      }
                                                    ],
                                                    "value": "CreateItemLoc"
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
                                                        "VariableId": 100663643,
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
                                                        "value": "GetLastCreatedItem"
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
                                                        "VariableId": 100663643,
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
                                                    "value": "UnitAddItemSwapped"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "------------------------------------------------------------------------------"
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
                                                        "ParamType": 3,
                                                        "VariableId": 100663643,
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
                                                        "value": "InvulnerabilityInvulnerable"
                                                      }
                                                    ],
                                                    "value": "SetItemInvulnerableBJ"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 3,
                                                        "VariableId": 100663643,
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
                                                        "value": "PawnableOptionUnpawnable"
                                                      }
                                                    ],
                                                    "value": "SetItemPawnable"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 3,
                                                        "VariableId": 100663643,
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
                                                        "value": "DropNoDropOptionNoDrop"
                                                      }
                                                    ],
                                                    "value": "SetItemDroppableBJ"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "------------------------------------------------------------------------------"
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
                                                        "value": "------------------------------------------------------------------------------"
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
                                                        "value": "origin"
                                                      },
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
                                                      },
                                                      {
                                                        "ParamType": 5,
                                                        "value": "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"
                                                      }
                                                    ],
                                                    "value": "AddSpecialEffectTargetUnitBJ"
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
                    "value": "------------------------------------SUPPORT------------------------------------"
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
                        "ParamType": 3,
                        "VariableId": 100663684,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663687,
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
                            "VariableId": 100663706,
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
                            "value": "4"
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
                              },
                              {
                                "ParamType": 5,
                                "value": "I02G"
                              }
                            ],
                            "value": "GetItemOfTypeFromUnitBJ"
                          }
                        ],
                        "value": "RemoveItem"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "------------------------------------------------------------------------------"
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
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "I044"
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
                          }
                        ],
                        "value": "CreateItemLoc"
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
                            "VariableId": 100663643,
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
                            "value": "GetLastCreatedItem"
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
                            "VariableId": 100663643,
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
                        "value": "UnitAddItemSwapped"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "------------------------------------------------------------------------------"
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
                            "ParamType": 3,
                            "VariableId": 100663643,
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
                            "value": "InvulnerabilityInvulnerable"
                          }
                        ],
                        "value": "SetItemInvulnerableBJ"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663643,
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
                            "value": "PawnableOptionUnpawnable"
                          }
                        ],
                        "value": "SetItemPawnable"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663643,
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
                            "value": "DropNoDropOptionNoDrop"
                          }
                        ],
                        "value": "SetItemDroppableBJ"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "------------------------------------------------------------------------------"
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
                            "value": "------------------------------------------------------------------------------"
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
                            "value": "origin"
                          },
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
                          },
                          {
                            "ParamType": 5,
                            "value": "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"
                          }
                        ],
                        "value": "AddSpecialEffectTargetUnitBJ"
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
                                "VariableId": 100663706,
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
                                "value": "6"
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
                                "value": "STAFF OF PROTECTION"
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
                                "value": "------------------------------------------------------------------------------"
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
                          "isEnabled": true,
                          "function": {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 5,
                                "value": "I03I"
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
                              }
                            ],
                            "value": "CreateItemLoc"
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
                                "VariableId": 100663643,
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
                                "value": "GetLastCreatedItem"
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
                                "VariableId": 100663643,
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
                            "value": "UnitAddItemSwapped"
                          }
                        },
                        {
                          "isEnabled": true,
                          "function": {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 5,
                                "value": "------------------------------------------------------------------------------"
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
                                "ParamType": 3,
                                "VariableId": 100663643,
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
                                "value": "InvulnerabilityInvulnerable"
                              }
                            ],
                            "value": "SetItemInvulnerableBJ"
                          }
                        },
                        {
                          "isEnabled": true,
                          "function": {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663643,
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
                                "value": "PawnableOptionUnpawnable"
                              }
                            ],
                            "value": "SetItemPawnable"
                          }
                        },
                        {
                          "isEnabled": true,
                          "function": {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663643,
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
                                "value": "DropNoDropOptionNoDrop"
                              }
                            ],
                            "value": "SetItemDroppableBJ"
                          }
                        },
                        {
                          "isEnabled": true,
                          "function": {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 5,
                                "value": "------------------------------------------------------------------------------"
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
                                "value": "call RemoveLocation(udg_TempPoint)"
                              }
                            ],
                            "value": "CustomScriptCode"
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
                                    "VariableId": 100663706,
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
                                    "value": "STAFF OF PROTECTION"
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
                                        "value": "1"
                                      },
                                      {
                                        "ParamType": 5,
                                        "value": "3"
                                      }
                                    ],
                                    "value": "GetRandomInt"
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
                                        "ParamType": 2,
                                        "value": "OperatorEqual"
                                      },
                                      {
                                        "ParamType": 5,
                                        "value": "1"
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
                                          },
                                          {
                                            "ParamType": 5,
                                            "value": "I03I"
                                          }
                                        ],
                                        "value": "GetItemOfTypeFromUnitBJ"
                                      }
                                    ],
                                    "value": "RemoveItem"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "------------------------------------------------------------------------------"
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
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "I03L"
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
                                      }
                                    ],
                                    "value": "CreateItemLoc"
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
                                        "VariableId": 100663643,
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
                                        "value": "GetLastCreatedItem"
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
                                        "VariableId": 100663643,
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
                                    "value": "UnitAddItemSwapped"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "------------------------------------------------------------------------------"
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
                                        "ParamType": 3,
                                        "VariableId": 100663643,
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
                                        "value": "InvulnerabilityInvulnerable"
                                      }
                                    ],
                                    "value": "SetItemInvulnerableBJ"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663643,
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
                                        "value": "PawnableOptionUnpawnable"
                                      }
                                    ],
                                    "value": "SetItemPawnable"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663643,
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
                                        "value": "DropNoDropOptionNoDrop"
                                      }
                                    ],
                                    "value": "SetItemDroppableBJ"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "------------------------------------------------------------------------------"
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
                                        "value": "call RemoveLocation(udg_TempPoint)"
                                      }
                                    ],
                                    "value": "CustomScriptCode"
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
                                            "ParamType": 2,
                                            "value": "OperatorEqual"
                                          },
                                          {
                                            "ParamType": 5,
                                            "value": "2"
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
                                              },
                                              {
                                                "ParamType": 5,
                                                "value": "I03I"
                                              }
                                            ],
                                            "value": "GetItemOfTypeFromUnitBJ"
                                          }
                                        ],
                                        "value": "RemoveItem"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "------------------------------------------------------------------------------"
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
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "I015"
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
                                          }
                                        ],
                                        "value": "CreateItemLoc"
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
                                            "VariableId": 100663643,
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
                                            "value": "GetLastCreatedItem"
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
                                            "VariableId": 100663643,
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
                                        "value": "UnitAddItemSwapped"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "------------------------------------------------------------------------------"
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
                                            "ParamType": 3,
                                            "VariableId": 100663643,
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
                                            "value": "InvulnerabilityInvulnerable"
                                          }
                                        ],
                                        "value": "SetItemInvulnerableBJ"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663643,
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
                                            "value": "PawnableOptionUnpawnable"
                                          }
                                        ],
                                        "value": "SetItemPawnable"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663643,
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
                                            "value": "DropNoDropOptionNoDrop"
                                          }
                                        ],
                                        "value": "SetItemDroppableBJ"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "------------------------------------------------------------------------------"
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
                                            "value": "call RemoveLocation(udg_TempPoint)"
                                          }
                                        ],
                                        "value": "CustomScriptCode"
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
                                                "ParamType": 2,
                                                "value": "OperatorEqual"
                                              },
                                              {
                                                "ParamType": 5,
                                                "value": "3"
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
                                                  },
                                                  {
                                                    "ParamType": 5,
                                                    "value": "I03I"
                                                  }
                                                ],
                                                "value": "GetItemOfTypeFromUnitBJ"
                                              }
                                            ],
                                            "value": "RemoveItem"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "I03U"
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
                                              }
                                            ],
                                            "value": "CreateItemLoc"
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
                                                "VariableId": 100663643,
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
                                                "value": "GetLastCreatedItem"
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
                                                "VariableId": 100663643,
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
                                            "value": "UnitAddItemSwapped"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "InvulnerabilityInvulnerable"
                                              }
                                            ],
                                            "value": "SetItemInvulnerableBJ"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "PawnableOptionUnpawnable"
                                              }
                                            ],
                                            "value": "SetItemPawnable"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "DropNoDropOptionNoDrop"
                                              }
                                            ],
                                            "value": "SetItemDroppableBJ"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                                "value": "call RemoveLocation(udg_TempPoint)"
                                              }
                                            ],
                                            "value": "CustomScriptCode"
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
                                    "ParamType": 5,
                                    "value": "------------------------------------------------------------------------------"
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
                                    "value": "origin"
                                  },
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
                                  },
                                  {
                                    "ParamType": 5,
                                    "value": "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"
                                  }
                                ],
                                "value": "AddSpecialEffectTargetUnitBJ"
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
                                    "value": "------------------------------------LEVEL 10------------------------------------"
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
                                        "ParamType": 3,
                                        "VariableId": 100663706,
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
                                        "value": "10"
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
                                        "value": "SOUL STONE"
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
                                        "value": "------------------------------------------------------------------------------"
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
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "I03Y"
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
                                      }
                                    ],
                                    "value": "CreateItemLoc"
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
                                        "VariableId": 100663643,
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
                                        "value": "GetLastCreatedItem"
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
                                        "VariableId": 100663643,
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
                                    "value": "UnitAddItemSwapped"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "------------------------------------------------------------------------------"
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
                                        "ParamType": 3,
                                        "VariableId": 100663643,
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
                                        "value": "InvulnerabilityInvulnerable"
                                      }
                                    ],
                                    "value": "SetItemInvulnerableBJ"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663643,
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
                                        "value": "PawnableOptionUnpawnable"
                                      }
                                    ],
                                    "value": "SetItemPawnable"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663643,
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
                                        "value": "DropNoDropOptionNoDrop"
                                      }
                                    ],
                                    "value": "SetItemDroppableBJ"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "------------------------------------------------------------------------------"
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
                                        "value": "call RemoveLocation(udg_TempPoint)"
                                      }
                                    ],
                                    "value": "CustomScriptCode"
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
                                        "value": "------------------------------------LEVEL 12------------------------------------"
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
                                            "ParamType": 3,
                                            "VariableId": 100663706,
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
                                            "value": "12"
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
                                            "value": "SOUL STONE"
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
                                              },
                                              {
                                                "ParamType": 5,
                                                "value": "I03Y"
                                              }
                                            ],
                                            "value": "GetItemOfTypeFromUnitBJ"
                                          }
                                        ],
                                        "value": "RemoveItem"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "------------------------------------------------------------------------------"
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
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "I03F"
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
                                          }
                                        ],
                                        "value": "CreateItemLoc"
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
                                            "VariableId": 100663643,
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
                                            "value": "GetLastCreatedItem"
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
                                            "VariableId": 100663643,
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
                                        "value": "UnitAddItemSwapped"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "------------------------------------------------------------------------------"
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
                                            "ParamType": 3,
                                            "VariableId": 100663643,
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
                                            "value": "InvulnerabilityInvulnerable"
                                          }
                                        ],
                                        "value": "SetItemInvulnerableBJ"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663643,
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
                                            "value": "PawnableOptionUnpawnable"
                                          }
                                        ],
                                        "value": "SetItemPawnable"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663643,
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
                                            "value": "DropNoDropOptionNoDrop"
                                          }
                                        ],
                                        "value": "SetItemDroppableBJ"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "------------------------------------------------------------------------------"
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
                                            "value": "call RemoveLocation(udg_TempPoint)"
                                          }
                                        ],
                                        "value": "CustomScriptCode"
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
                                                "VariableId": 100663706,
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
                                                "value": "16"
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
                                                "value": "SCEPTER"
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
                                                "value": "------------------------------------------------------------------------------"
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
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "I04Y"
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
                                              }
                                            ],
                                            "value": "CreateItemLoc"
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
                                                "VariableId": 100663643,
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
                                                "value": "GetLastCreatedItem"
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
                                                "VariableId": 100663643,
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
                                            "value": "UnitAddItemSwapped"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "InvulnerabilityInvulnerable"
                                              }
                                            ],
                                            "value": "SetItemInvulnerableBJ"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "PawnableOptionUnpawnable"
                                              }
                                            ],
                                            "value": "SetItemPawnable"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "DropNoDropOptionNoDrop"
                                              }
                                            ],
                                            "value": "SetItemDroppableBJ"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                                "value": "call RemoveLocation(udg_TempPoint)"
                                              }
                                            ],
                                            "value": "CustomScriptCode"
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
                                                    "VariableId": 100663706,
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
                                                    "value": "18"
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
                                                    "value": "SCEPTER"
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
                                                      },
                                                      {
                                                        "ParamType": 5,
                                                        "value": "I04Y"
                                                      }
                                                    ],
                                                    "value": "GetItemOfTypeFromUnitBJ"
                                                  }
                                                ],
                                                "value": "RemoveItem"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "------------------------------------------------------------------------------"
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
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "I052"
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
                                                  }
                                                ],
                                                "value": "CreateItemLoc"
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
                                                    "VariableId": 100663643,
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
                                                    "value": "GetLastCreatedItem"
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
                                                    "VariableId": 100663643,
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
                                                "value": "UnitAddItemSwapped"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "------------------------------------------------------------------------------"
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
                                                    "ParamType": 3,
                                                    "VariableId": 100663643,
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
                                                    "value": "InvulnerabilityInvulnerable"
                                                  }
                                                ],
                                                "value": "SetItemInvulnerableBJ"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 3,
                                                    "VariableId": 100663643,
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
                                                    "value": "PawnableOptionUnpawnable"
                                                  }
                                                ],
                                                "value": "SetItemPawnable"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 3,
                                                    "VariableId": 100663643,
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
                                                    "value": "DropNoDropOptionNoDrop"
                                                  }
                                                ],
                                                "value": "SetItemDroppableBJ"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "------------------------------------------------------------------------------"
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
                                                    "value": "------------------------------------------------------------------------------"
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
                                                    "value": "origin"
                                                  },
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
                                                  },
                                                  {
                                                    "ParamType": 5,
                                                    "value": "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"
                                                  }
                                                ],
                                                "value": "AddSpecialEffectTargetUnitBJ"
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
                    "value": "------------------------------------CARRY------------------------------------"
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
                        "ParamType": 3,
                        "VariableId": 100663683,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663687,
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
                            "VariableId": 100663706,
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
                            "value": "4"
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
                            "value": "------------------------------------------------------------------------------"
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
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "I012"
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
                          }
                        ],
                        "value": "CreateItemLoc"
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
                            "VariableId": 100663643,
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
                            "value": "GetLastCreatedItem"
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
                            "VariableId": 100663643,
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
                        "value": "UnitAddItemSwapped"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "------------------------------------------------------------------------------"
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
                            "ParamType": 3,
                            "VariableId": 100663643,
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
                            "value": "InvulnerabilityInvulnerable"
                          }
                        ],
                        "value": "SetItemInvulnerableBJ"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663643,
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
                            "value": "PawnableOptionUnpawnable"
                          }
                        ],
                        "value": "SetItemPawnable"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663643,
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
                            "value": "DropNoDropOptionNoDrop"
                          }
                        ],
                        "value": "SetItemDroppableBJ"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "------------------------------------------------------------------------------"
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
                            "value": "call RemoveLocation(udg_TempPoint)"
                          }
                        ],
                        "value": "CustomScriptCode"
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
                                "VariableId": 100663706,
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
                                "value": "6"
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
                                "value": "CLOAK OF VAMPIRIC"
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
                                    "value": "1"
                                  },
                                  {
                                    "ParamType": 5,
                                    "value": "2"
                                  }
                                ],
                                "value": "GetRandomInt"
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
                                    "ParamType": 2,
                                    "value": "OperatorEqual"
                                  },
                                  {
                                    "ParamType": 5,
                                    "value": "1"
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
                                      },
                                      {
                                        "ParamType": 5,
                                        "value": "I012"
                                      }
                                    ],
                                    "value": "GetItemOfTypeFromUnitBJ"
                                  }
                                ],
                                "value": "RemoveItem"
                              }
                            },
                            {
                              "isEnabled": true,
                              "function": {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 5,
                                    "value": "------------------------------------------------------------------------------"
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
                              "isEnabled": true,
                              "function": {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 5,
                                    "value": "I02O"
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
                                  }
                                ],
                                "value": "CreateItemLoc"
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
                                    "VariableId": 100663643,
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
                                    "value": "GetLastCreatedItem"
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
                                    "VariableId": 100663643,
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
                                "value": "UnitAddItemSwapped"
                              }
                            },
                            {
                              "isEnabled": true,
                              "function": {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 5,
                                    "value": "------------------------------------------------------------------------------"
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
                                    "ParamType": 3,
                                    "VariableId": 100663643,
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
                                    "value": "InvulnerabilityInvulnerable"
                                  }
                                ],
                                "value": "SetItemInvulnerableBJ"
                              }
                            },
                            {
                              "isEnabled": true,
                              "function": {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663643,
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
                                    "value": "PawnableOptionUnpawnable"
                                  }
                                ],
                                "value": "SetItemPawnable"
                              }
                            },
                            {
                              "isEnabled": true,
                              "function": {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663643,
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
                                    "value": "DropNoDropOptionNoDrop"
                                  }
                                ],
                                "value": "SetItemDroppableBJ"
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
                                      },
                                      {
                                        "ParamType": 5,
                                        "value": "I012"
                                      }
                                    ],
                                    "value": "GetItemOfTypeFromUnitBJ"
                                  }
                                ],
                                "value": "RemoveItem"
                              }
                            },
                            {
                              "isEnabled": true,
                              "function": {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 5,
                                    "value": "------------------------------------------------------------------------------"
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
                              "isEnabled": true,
                              "function": {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 5,
                                    "value": "I011"
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
                                  }
                                ],
                                "value": "CreateItemLoc"
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
                                    "VariableId": 100663643,
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
                                    "value": "GetLastCreatedItem"
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
                                    "VariableId": 100663643,
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
                                "value": "UnitAddItemSwapped"
                              }
                            },
                            {
                              "isEnabled": true,
                              "function": {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 5,
                                    "value": "------------------------------------------------------------------------------"
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
                                    "ParamType": 3,
                                    "VariableId": 100663643,
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
                                    "value": "InvulnerabilityInvulnerable"
                                  }
                                ],
                                "value": "SetItemInvulnerableBJ"
                              }
                            },
                            {
                              "isEnabled": true,
                              "function": {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663643,
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
                                    "value": "PawnableOptionUnpawnable"
                                  }
                                ],
                                "value": "SetItemPawnable"
                              }
                            },
                            {
                              "isEnabled": true,
                              "function": {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663643,
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
                                    "value": "DropNoDropOptionNoDrop"
                                  }
                                ],
                                "value": "SetItemDroppableBJ"
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
                                "value": "------------------------------------------------------------------------------"
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
                                "value": "origin"
                              },
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
                              },
                              {
                                "ParamType": 5,
                                "value": "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"
                              }
                            ],
                            "value": "AddSpecialEffectTargetUnitBJ"
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
                                    "VariableId": 100663706,
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
                                    "value": "8"
                                  }
                                ],
                                "value": "OperatorCompareInteger"
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
                                            "ParamType": 5,
                                            "value": "1"
                                          },
                                          {
                                            "ParamType": 5,
                                            "value": "2"
                                          }
                                        ],
                                        "value": "GetRandomInt"
                                      },
                                      {
                                        "ParamType": 2,
                                        "value": "OperatorEqual"
                                      },
                                      {
                                        "ParamType": 5,
                                        "value": "1"
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
                                        "value": "BLAZING DAGGER"
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
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "I02X"
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
                                      }
                                    ],
                                    "value": "CreateItemLoc"
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
                                        "VariableId": 100663643,
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
                                        "value": "GetLastCreatedItem"
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
                                        "VariableId": 100663643,
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
                                    "value": "UnitAddItemSwapped"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "------------------------------------------------------------------------------"
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
                                        "ParamType": 3,
                                        "VariableId": 100663643,
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
                                        "value": "InvulnerabilityInvulnerable"
                                      }
                                    ],
                                    "value": "SetItemInvulnerableBJ"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663643,
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
                                        "value": "PawnableOptionUnpawnable"
                                      }
                                    ],
                                    "value": "SetItemPawnable"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663643,
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
                                        "value": "DropNoDropOptionNoDrop"
                                      }
                                    ],
                                    "value": "SetItemDroppableBJ"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "------------------------------------------------------------------------------"
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
                                        "value": "call RemoveLocation(udg_TempPoint)"
                                      }
                                    ],
                                    "value": "CustomScriptCode"
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
                                        "value": "CRITICSWORD"
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
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "I01G"
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
                                      }
                                    ],
                                    "value": "CreateItemLoc"
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
                                        "VariableId": 100663643,
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
                                        "value": "GetLastCreatedItem"
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
                                        "VariableId": 100663643,
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
                                    "value": "UnitAddItemSwapped"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "------------------------------------------------------------------------------"
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
                                        "ParamType": 3,
                                        "VariableId": 100663643,
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
                                        "value": "InvulnerabilityInvulnerable"
                                      }
                                    ],
                                    "value": "SetItemInvulnerableBJ"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663643,
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
                                        "value": "PawnableOptionUnpawnable"
                                      }
                                    ],
                                    "value": "SetItemPawnable"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663643,
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
                                        "value": "DropNoDropOptionNoDrop"
                                      }
                                    ],
                                    "value": "SetItemDroppableBJ"
                                  }
                                },
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "------------------------------------------------------------------------------"
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
                                        "value": "call RemoveLocation(udg_TempPoint)"
                                      }
                                    ],
                                    "value": "CustomScriptCode"
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
                              "ElementType": 1,
                              "If": [
                                {
                                  "isEnabled": true,
                                  "function": {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 3,
                                        "VariableId": 100663706,
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
                                        "value": "10"
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
                                        "value": "RED BREEDING"
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
                                              },
                                              {
                                                "ParamType": 5,
                                                "value": "I01G"
                                              }
                                            ],
                                            "value": "UnitHasItemOfTypeBJ"
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
                                              },
                                              {
                                                "ParamType": 5,
                                                "value": "I01G"
                                              }
                                            ],
                                            "value": "GetItemOfTypeFromUnitBJ"
                                          }
                                        ],
                                        "value": "RemoveItem"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "------------------------------------------------------------------------------"
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
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "I01E"
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
                                          }
                                        ],
                                        "value": "CreateItemLoc"
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
                                            "VariableId": 100663643,
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
                                            "value": "GetLastCreatedItem"
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
                                            "VariableId": 100663643,
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
                                        "value": "UnitAddItemSwapped"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "------------------------------------------------------------------------------"
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
                                            "ParamType": 3,
                                            "VariableId": 100663643,
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
                                            "value": "InvulnerabilityInvulnerable"
                                          }
                                        ],
                                        "value": "SetItemInvulnerableBJ"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663643,
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
                                            "value": "PawnableOptionUnpawnable"
                                          }
                                        ],
                                        "value": "SetItemPawnable"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663643,
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
                                            "value": "DropNoDropOptionNoDrop"
                                          }
                                        ],
                                        "value": "SetItemDroppableBJ"
                                      }
                                    },
                                    {
                                      "isEnabled": true,
                                      "function": {
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 5,
                                            "value": "------------------------------------------------------------------------------"
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
                                            "value": "call RemoveLocation(udg_TempPoint)"
                                          }
                                        ],
                                        "value": "CustomScriptCode"
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
                                            "value": "SCYTHE OF VIPER"
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
                                                  },
                                                  {
                                                    "ParamType": 5,
                                                    "value": "I02X"
                                                  }
                                                ],
                                                "value": "UnitHasItemOfTypeBJ"
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
                                                  },
                                                  {
                                                    "ParamType": 5,
                                                    "value": "I02X"
                                                  }
                                                ],
                                                "value": "GetItemOfTypeFromUnitBJ"
                                              }
                                            ],
                                            "value": "RemoveItem"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "I031"
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
                                              }
                                            ],
                                            "value": "CreateItemLoc"
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
                                                "VariableId": 100663643,
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
                                                "value": "GetLastCreatedItem"
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
                                                "VariableId": 100663643,
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
                                            "value": "UnitAddItemSwapped"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "InvulnerabilityInvulnerable"
                                              }
                                            ],
                                            "value": "SetItemInvulnerableBJ"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "PawnableOptionUnpawnable"
                                              }
                                            ],
                                            "value": "SetItemPawnable"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "DropNoDropOptionNoDrop"
                                              }
                                            ],
                                            "value": "SetItemDroppableBJ"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                                "value": "call RemoveLocation(udg_TempPoint)"
                                              }
                                            ],
                                            "value": "CustomScriptCode"
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
                                        "value": "------------------------------------------------------------------------------"
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
                                        "value": "origin"
                                      },
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
                                      },
                                      {
                                        "ParamType": 5,
                                        "value": "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"
                                      }
                                    ],
                                    "value": "AddSpecialEffectTargetUnitBJ"
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
                                            "VariableId": 100663706,
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
                                            "value": "12"
                                          }
                                        ],
                                        "value": "OperatorCompareInteger"
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
                                                    "ParamType": 5,
                                                    "value": "1"
                                                  },
                                                  {
                                                    "ParamType": 5,
                                                    "value": "2"
                                                  }
                                                ],
                                                "value": "GetRandomInt"
                                              },
                                              {
                                                "ParamType": 2,
                                                "value": "OperatorEqual"
                                              },
                                              {
                                                "ParamType": 5,
                                                "value": "1"
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
                                                "value": "PICK STUN"
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
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "I01K"
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
                                              }
                                            ],
                                            "value": "CreateItemLoc"
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
                                                "VariableId": 100663643,
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
                                                "value": "GetLastCreatedItem"
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
                                                "VariableId": 100663643,
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
                                            "value": "UnitAddItemSwapped"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "InvulnerabilityInvulnerable"
                                              }
                                            ],
                                            "value": "SetItemInvulnerableBJ"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "PawnableOptionUnpawnable"
                                              }
                                            ],
                                            "value": "SetItemPawnable"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "DropNoDropOptionNoDrop"
                                              }
                                            ],
                                            "value": "SetItemDroppableBJ"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                                "value": "call RemoveLocation(udg_TempPoint)"
                                              }
                                            ],
                                            "value": "CustomScriptCode"
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
                                                "value": "ORB LIGHTING"
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
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "I04V"
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
                                              }
                                            ],
                                            "value": "CreateItemLoc"
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
                                                "VariableId": 100663643,
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
                                                "value": "GetLastCreatedItem"
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
                                                "VariableId": 100663643,
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
                                            "value": "UnitAddItemSwapped"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "InvulnerabilityInvulnerable"
                                              }
                                            ],
                                            "value": "SetItemInvulnerableBJ"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "PawnableOptionUnpawnable"
                                              }
                                            ],
                                            "value": "SetItemPawnable"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663643,
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
                                                "value": "DropNoDropOptionNoDrop"
                                              }
                                            ],
                                            "value": "SetItemDroppableBJ"
                                          }
                                        },
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 5,
                                                "value": "------------------------------------------------------------------------------"
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
                                                "value": "call RemoveLocation(udg_TempPoint)"
                                              }
                                            ],
                                            "value": "CustomScriptCode"
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
                                      "ElementType": 1,
                                      "If": [
                                        {
                                          "isEnabled": true,
                                          "function": {
                                            "ParamType": 1,
                                            "parameters": [
                                              {
                                                "ParamType": 3,
                                                "VariableId": 100663706,
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
                                                "value": "14"
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
                                                "value": "BATTLE HAMMER"
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
                                                      },
                                                      {
                                                        "ParamType": 5,
                                                        "value": "I01K"
                                                      }
                                                    ],
                                                    "value": "UnitHasItemOfTypeBJ"
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
                                                      },
                                                      {
                                                        "ParamType": 5,
                                                        "value": "I01K"
                                                      }
                                                    ],
                                                    "value": "GetItemOfTypeFromUnitBJ"
                                                  }
                                                ],
                                                "value": "RemoveItem"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "------------------------------------------------------------------------------"
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
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "I059"
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
                                                  }
                                                ],
                                                "value": "CreateItemLoc"
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
                                                    "VariableId": 100663643,
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
                                                    "value": "GetLastCreatedItem"
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
                                                    "VariableId": 100663643,
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
                                                "value": "UnitAddItemSwapped"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "------------------------------------------------------------------------------"
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
                                                    "ParamType": 3,
                                                    "VariableId": 100663643,
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
                                                    "value": "InvulnerabilityInvulnerable"
                                                  }
                                                ],
                                                "value": "SetItemInvulnerableBJ"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 3,
                                                    "VariableId": 100663643,
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
                                                    "value": "PawnableOptionUnpawnable"
                                                  }
                                                ],
                                                "value": "SetItemPawnable"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 3,
                                                    "VariableId": 100663643,
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
                                                    "value": "DropNoDropOptionNoDrop"
                                                  }
                                                ],
                                                "value": "SetItemDroppableBJ"
                                              }
                                            },
                                            {
                                              "isEnabled": true,
                                              "function": {
                                                "ParamType": 1,
                                                "parameters": [
                                                  {
                                                    "ParamType": 5,
                                                    "value": "------------------------------------------------------------------------------"
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
                                                    "value": "call RemoveLocation(udg_TempPoint)"
                                                  }
                                                ],
                                                "value": "CustomScriptCode"
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
                                                    "value": "THUNDER GUARD"
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
                                                          },
                                                          {
                                                            "ParamType": 5,
                                                            "value": "I04V"
                                                          }
                                                        ],
                                                        "value": "UnitHasItemOfTypeBJ"
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
                                                          },
                                                          {
                                                            "ParamType": 5,
                                                            "value": "I04V"
                                                          }
                                                        ],
                                                        "value": "GetItemOfTypeFromUnitBJ"
                                                      }
                                                    ],
                                                    "value": "RemoveItem"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "------------------------------------------------------------------------------"
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
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "I04T"
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
                                                      }
                                                    ],
                                                    "value": "CreateItemLoc"
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
                                                        "VariableId": 100663643,
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
                                                        "value": "GetLastCreatedItem"
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
                                                        "VariableId": 100663643,
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
                                                    "value": "UnitAddItemSwapped"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "------------------------------------------------------------------------------"
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
                                                        "ParamType": 3,
                                                        "VariableId": 100663643,
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
                                                        "value": "InvulnerabilityInvulnerable"
                                                      }
                                                    ],
                                                    "value": "SetItemInvulnerableBJ"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 3,
                                                        "VariableId": 100663643,
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
                                                        "value": "PawnableOptionUnpawnable"
                                                      }
                                                    ],
                                                    "value": "SetItemPawnable"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 3,
                                                        "VariableId": 100663643,
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
                                                        "value": "DropNoDropOptionNoDrop"
                                                      }
                                                    ],
                                                    "value": "SetItemDroppableBJ"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "------------------------------------------------------------------------------"
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
                                                        "value": "call RemoveLocation(udg_TempPoint)"
                                                      }
                                                    ],
                                                    "value": "CustomScriptCode"
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
                                                "value": "------------------------------------------------------------------------------"
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
                                                "value": "origin"
                                              },
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
                                              },
                                              {
                                                "ParamType": 5,
                                                "value": "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"
                                              }
                                            ],
                                            "value": "AddSpecialEffectTargetUnitBJ"
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
                                                    "VariableId": 100663706,
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
                                                    "value": "16"
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
                                                    "value": "HELM VAMPIRIC"
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
                                                          },
                                                          {
                                                            "ParamType": 5,
                                                            "value": "I02O"
                                                          }
                                                        ],
                                                        "value": "UnitHasItemOfTypeBJ"
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
                                                          },
                                                          {
                                                            "ParamType": 5,
                                                            "value": "I02O"
                                                          }
                                                        ],
                                                        "value": "GetItemOfTypeFromUnitBJ"
                                                      }
                                                    ],
                                                    "value": "RemoveItem"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "------------------------------------------------------------------------------"
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
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "I046"
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
                                                      }
                                                    ],
                                                    "value": "CreateItemLoc"
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
                                                        "VariableId": 100663643,
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
                                                        "value": "GetLastCreatedItem"
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
                                                        "VariableId": 100663643,
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
                                                    "value": "UnitAddItemSwapped"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "------------------------------------------------------------------------------"
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
                                                        "ParamType": 3,
                                                        "VariableId": 100663643,
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
                                                        "value": "InvulnerabilityInvulnerable"
                                                      }
                                                    ],
                                                    "value": "SetItemInvulnerableBJ"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 3,
                                                        "VariableId": 100663643,
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
                                                        "value": "PawnableOptionUnpawnable"
                                                      }
                                                    ],
                                                    "value": "SetItemPawnable"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 3,
                                                        "VariableId": 100663643,
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
                                                        "value": "DropNoDropOptionNoDrop"
                                                      }
                                                    ],
                                                    "value": "SetItemDroppableBJ"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "------------------------------------------------------------------------------"
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
                                                        "value": "call RemoveLocation(udg_TempPoint)"
                                                      }
                                                    ],
                                                    "value": "CustomScriptCode"
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
                                                        "value": "HELM BERSERKER"
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
                                                              },
                                                              {
                                                                "ParamType": 5,
                                                                "value": "I011"
                                                              }
                                                            ],
                                                            "value": "UnitHasItemOfTypeBJ"
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
                                                              },
                                                              {
                                                                "ParamType": 5,
                                                                "value": "I011"
                                                              }
                                                            ],
                                                            "value": "GetItemOfTypeFromUnitBJ"
                                                          }
                                                        ],
                                                        "value": "RemoveItem"
                                                      }
                                                    },
                                                    {
                                                      "isEnabled": true,
                                                      "function": {
                                                        "ParamType": 1,
                                                        "parameters": [
                                                          {
                                                            "ParamType": 5,
                                                            "value": "------------------------------------------------------------------------------"
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
                                                      "isEnabled": true,
                                                      "function": {
                                                        "ParamType": 1,
                                                        "parameters": [
                                                          {
                                                            "ParamType": 5,
                                                            "value": "I049"
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
                                                          }
                                                        ],
                                                        "value": "CreateItemLoc"
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
                                                            "VariableId": 100663643,
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
                                                            "value": "GetLastCreatedItem"
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
                                                            "VariableId": 100663643,
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
                                                        "value": "UnitAddItemSwapped"
                                                      }
                                                    },
                                                    {
                                                      "isEnabled": true,
                                                      "function": {
                                                        "ParamType": 1,
                                                        "parameters": [
                                                          {
                                                            "ParamType": 5,
                                                            "value": "------------------------------------------------------------------------------"
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
                                                            "ParamType": 3,
                                                            "VariableId": 100663643,
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
                                                            "value": "InvulnerabilityInvulnerable"
                                                          }
                                                        ],
                                                        "value": "SetItemInvulnerableBJ"
                                                      }
                                                    },
                                                    {
                                                      "isEnabled": true,
                                                      "function": {
                                                        "ParamType": 1,
                                                        "parameters": [
                                                          {
                                                            "ParamType": 3,
                                                            "VariableId": 100663643,
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
                                                            "value": "PawnableOptionUnpawnable"
                                                          }
                                                        ],
                                                        "value": "SetItemPawnable"
                                                      }
                                                    },
                                                    {
                                                      "isEnabled": true,
                                                      "function": {
                                                        "ParamType": 1,
                                                        "parameters": [
                                                          {
                                                            "ParamType": 3,
                                                            "VariableId": 100663643,
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
                                                            "value": "DropNoDropOptionNoDrop"
                                                          }
                                                        ],
                                                        "value": "SetItemDroppableBJ"
                                                      }
                                                    },
                                                    {
                                                      "isEnabled": true,
                                                      "function": {
                                                        "ParamType": 1,
                                                        "parameters": [
                                                          {
                                                            "ParamType": 5,
                                                            "value": "------------------------------------------------------------------------------"
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
                                                            "value": "call RemoveLocation(udg_TempPoint)"
                                                          }
                                                        ],
                                                        "value": "CustomScriptCode"
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
                                                "parameters": [],
                                                "value": "IfThenElseMultiple"
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
                                                        "VariableId": 100663706,
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
                                                        "value": "18"
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
                                                        "value": "MOON GLAIVE"
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
                                                        "value": "------------------------------------------------------------------------------"
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
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "I00C"
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
                                                      }
                                                    ],
                                                    "value": "CreateItemLoc"
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
                                                        "VariableId": 100663643,
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
                                                        "value": "GetLastCreatedItem"
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
                                                        "VariableId": 100663643,
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
                                                    "value": "UnitAddItemSwapped"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "------------------------------------------------------------------------------"
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
                                                        "ParamType": 3,
                                                        "VariableId": 100663643,
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
                                                        "value": "InvulnerabilityInvulnerable"
                                                      }
                                                    ],
                                                    "value": "SetItemInvulnerableBJ"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 3,
                                                        "VariableId": 100663643,
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
                                                        "value": "PawnableOptionUnpawnable"
                                                      }
                                                    ],
                                                    "value": "SetItemPawnable"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 3,
                                                        "VariableId": 100663643,
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
                                                        "value": "DropNoDropOptionNoDrop"
                                                      }
                                                    ],
                                                    "value": "SetItemDroppableBJ"
                                                  }
                                                },
                                                {
                                                  "isEnabled": true,
                                                  "function": {
                                                    "ParamType": 1,
                                                    "parameters": [
                                                      {
                                                        "ParamType": 5,
                                                        "value": "------------------------------------------------------------------------------"
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
                                                        "value": "------------------------------------------------------------------------------"
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
                                                        "value": "origin"
                                                      },
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
                                                      },
                                                      {
                                                        "ParamType": 5,
                                                        "value": "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"
                                                      }
                                                    ],
                                                    "value": "AddSpecialEffectTargetUnitBJ"
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
                                                            "VariableId": 100663706,
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
                                                            "value": "22"
                                                          }
                                                        ],
                                                        "value": "OperatorCompareInteger"
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
                                                                  },
                                                                  {
                                                                    "ParamType": 5,
                                                                    "value": "I04C"
                                                                  }
                                                                ],
                                                                "value": "UnitHasItemOfTypeBJ"
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
                                                                "value": "PLATE OF WAR"
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
                                                                "value": "------------------------------------------------------------------------------"
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
                                                                  },
                                                                  {
                                                                    "ParamType": 5,
                                                                    "value": "I04C"
                                                                  }
                                                                ],
                                                                "value": "GetItemOfTypeFromUnitBJ"
                                                              }
                                                            ],
                                                            "value": "RemoveItem"
                                                          }
                                                        },
                                                        {
                                                          "isEnabled": true,
                                                          "function": {
                                                            "ParamType": 1,
                                                            "parameters": [
                                                              {
                                                                "ParamType": 5,
                                                                "value": "------------------------------------------------------------------------------"
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
                                                          "isEnabled": true,
                                                          "function": {
                                                            "ParamType": 1,
                                                            "parameters": [
                                                              {
                                                                "ParamType": 5,
                                                                "value": "I057"
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
                                                              }
                                                            ],
                                                            "value": "CreateItemLoc"
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
                                                                "VariableId": 100663643,
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
                                                                "value": "GetLastCreatedItem"
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
                                                                "VariableId": 100663643,
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
                                                            "value": "UnitAddItemSwapped"
                                                          }
                                                        },
                                                        {
                                                          "isEnabled": true,
                                                          "function": {
                                                            "ParamType": 1,
                                                            "parameters": [
                                                              {
                                                                "ParamType": 5,
                                                                "value": "------------------------------------------------------------------------------"
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
                                                                "ParamType": 3,
                                                                "VariableId": 100663643,
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
                                                                "value": "InvulnerabilityInvulnerable"
                                                              }
                                                            ],
                                                            "value": "SetItemInvulnerableBJ"
                                                          }
                                                        },
                                                        {
                                                          "isEnabled": true,
                                                          "function": {
                                                            "ParamType": 1,
                                                            "parameters": [
                                                              {
                                                                "ParamType": 3,
                                                                "VariableId": 100663643,
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
                                                                "value": "PawnableOptionUnpawnable"
                                                              }
                                                            ],
                                                            "value": "SetItemPawnable"
                                                          }
                                                        },
                                                        {
                                                          "isEnabled": true,
                                                          "function": {
                                                            "ParamType": 1,
                                                            "parameters": [
                                                              {
                                                                "ParamType": 3,
                                                                "VariableId": 100663643,
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
                                                                "value": "DropNoDropOptionNoDrop"
                                                              }
                                                            ],
                                                            "value": "SetItemDroppableBJ"
                                                          }
                                                        },
                                                        {
                                                          "isEnabled": true,
                                                          "function": {
                                                            "ParamType": 1,
                                                            "parameters": [
                                                              {
                                                                "ParamType": 5,
                                                                "value": "------------------------------------------------------------------------------"
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
                                                                "value": "------------------------------------------------------------------------------"
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
                                                                "value": "origin"
                                                              },
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
                                                              },
                                                              {
                                                                "ParamType": 5,
                                                                "value": "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"
                                                              }
                                                            ],
                                                            "value": "AddSpecialEffectTargetUnitBJ"
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
              "Else": [],
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
            "value": "1"
          },
          {
            "ParamType": 3,
            "VariableId": 100663716,
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