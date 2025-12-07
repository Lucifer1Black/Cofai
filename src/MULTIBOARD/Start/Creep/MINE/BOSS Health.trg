{
  "Id": 50331830,
  "Comment": "",
  "IsScript": true,
  "RunOnMapInit": false,
  "Script": "//*  Trigger BOSS_Health\r\n//****************************************************************************\r\nfunction And_Trig_BOSS_Health_1 takes nothing returns boolean\r\n\tif (not (IsUnitDeadBJ(udg_Game_Boss_Kiljaeden) == true)) then\r\n\t\treturn false\r\n\tendif\r\n\tif (not (IsUnitDeadBJ(udg_Game_Boss_Arthas) == true)) then\r\n\t\treturn false\r\n\tendif\r\n\treturn true\r\n\r\nendfunction\r\n\r\nfunction If_Trig_BOSS_Health_0 takes nothing returns boolean\r\n\tif (not (And_Trig_BOSS_Health_1())) then\r\n\t\treturn false\r\n\tendif\r\n\treturn true\r\n\r\nendfunction\r\n\r\nfunction If_Trig_BOSS_Health_2 takes nothing returns boolean\r\n\tif (not (udg_AI_Turn_On == true)) then\r\n\t\treturn false\r\n\tendif\r\n\treturn true\r\n\r\nendfunction\r\n\r\nfunction Trig_BOSS_Health_Actions takes nothing returns nothing\r\n\tif(If_Trig_BOSS_Health_0()) then\r\n\tset udg_Game_Doubloons_Fire = 0\r\n\tset udg_Game_Doubloons_Ice = 0\r\n\tcall MultiboardSetTitleText(udg_Multiboard01,(((\"Gems     \" + \"|c00FF0303\") + (I2S(udg_Game_Doubloons_Fire) + \"|r   |   \")) + (\"|c0020C000\" + (I2S(udg_Game_Doubloons_Ice) + \"|r\"))))\r\n\t\r\n//*  ----------------------------------------------------------------------------------------\r\n\t\r\n//*  ----------------------------------------------------------------------------------------\r\n\tcall StartTimerBJ(udg_MINE_Countdown,false,180.00)\r\n\tcall CreateTimerDialogBJ(GetLastCreatedTimerBJ(),\"Ancient Tomb\")\r\n\tset udg_MINE_Countdown_TW = GetLastCreatedTimerDialogBJ()\r\n\tcall TimerDialogDisplayBJ(true,udg_MINE_Countdown_TW)\r\n\t\r\n//*  ----------------------------------------------------------------------------------------\r\n\t\r\n//*  ----------------------------------------------------------------------------------------\r\n\tif(If_Trig_BOSS_Health_2()) then\r\n\tset udg_AI_Ancient_Clash = false\r\n\telse\r\n\tendif\r\n\r\n\t\r\n//*  ----------------------------------------------------------------------------------------\r\n\t\r\n//*  ----------------------------------------------------------------------------------------\r\n\tcall EnableTrigger(gg_trg_Doubloon_Collect)\r\n\t\r\n//*  ----------------------------------------------------------------------------------------\r\n\tcall DisableTrigger(gg_trg_BOSS_ATTACK)\r\n\tcall DisableTrigger(gg_trg_BOSS_BASH)\r\n\tcall DisableTrigger(gg_trg_BOSS_BLIZZARD)\r\n\tcall DisableTrigger(gg_trg_BOSS_ERUPTION)\r\n\tcall DisableTrigger(GetTriggeringTrigger())\r\n\telse\r\n\tcall MultiboardSetTitleText(udg_Multiboard01,(((\"Master HP     \" + \"|c00FF0303\") + (I2S(R2I(GetUnitLifePercent(udg_Game_Boss_Kiljaeden))) + \"%|r   |   \")) + (\"|c0020C000\" + (I2S(R2I(GetUnitLifePercent(udg_Game_Boss_Arthas))) + \"%|r\"))))\r\n\tendif\r\n\r\nendfunction\r\n\r\n\r\n//****************************************************************************\r\nfunction InitTrig_BOSS_Health takes nothing returns nothing\r\n\tset gg_trg_BOSS_Health = CreateTrigger()\r\ncall TriggerRegisterTimerEventPeriodic(gg_trg_BOSS_Health,0.25) \r\n\tcall DisableTrigger(gg_trg_BOSS_Health)\r\n\tcall TriggerAddAction(gg_trg_BOSS_Health, function Trig_BOSS_Health_Actions)\r\nendfunction\r\n\r\n",
  "Events": [
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "0.25"
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
                        "VariableId": 100663603,
                        "arrayIndexValues": [
                          {
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
                    "value": "IsUnitDeadBJ"
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
                        "ParamType": 3,
                        "VariableId": 100663604,
                        "arrayIndexValues": [
                          {
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
                    "value": "IsUnitDeadBJ"
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
                "VariableId": 100663598,
                "arrayIndexValues": [
                  {
                    "ParamType": 5,
                    "value": "0"
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
          "ElementType": 9,
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663599,
                "arrayIndexValues": [
                  {
                    "ParamType": 5,
                    "value": "0"
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
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "Gems     "
                          },
                          {
                            "ParamType": 5,
                            "value": "|c00FF0303"
                          }
                        ],
                        "value": "OperatorString"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663598,
                                "arrayIndexValues": [
                                  {
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
                          },
                          {
                            "ParamType": 5,
                            "value": "|r   |   "
                          }
                        ],
                        "value": "OperatorString"
                      }
                    ],
                    "value": "OperatorString"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 5,
                        "value": "|c0020C000"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663599,
                                "arrayIndexValues": [
                                  {
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
                "value": "OperatorString"
              }
            ],
            "value": "MultiboardSetTitleText"
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
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663592,
                "arrayIndexValues": [
                  {
                    "ParamType": 5,
                    "value": "0"
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
                "value": "PeriodicOptionOneTime"
              },
              {
                "ParamType": 5,
                "value": "180.00"
              }
            ],
            "value": "StartTimerBJ"
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
                "value": "GetLastCreatedTimerBJ"
              },
              {
                "ParamType": 5,
                "value": "Ancient Tomb"
              }
            ],
            "value": "CreateTimerDialogBJ"
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
                "VariableId": 100663593,
                "arrayIndexValues": [
                  {
                    "ParamType": 5,
                    "value": "0"
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
                "value": "GetLastCreatedTimerDialogBJ"
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
                "ParamType": 2,
                "value": "ShowHideShow"
              },
              {
                "ParamType": 3,
                "VariableId": 100663593,
                "arrayIndexValues": [
                  {
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
            "value": "TimerDialogDisplayBJ"
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
                    "VariableId": 100663731,
                    "arrayIndexValues": [
                      {
                        "ParamType": 5,
                        "value": "0"
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
              "ElementType": 9,
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
                    "ParamType": 5,
                    "value": "false"
                  }
                ],
                "value": "SetVariable"
              }
            },
            {
              "isEnabled": false,
              "function": {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 4,
                    "TriggerId": 50331820,
                    "value": null
                  }
                ],
                "value": "ConditionalTriggerExecute"
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
                "ParamType": 4,
                "TriggerId": 50331833,
                "value": null
              }
            ],
            "value": "EnableTrigger"
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
                "ParamType": 4,
                "TriggerId": 50331835,
                "value": null
              }
            ],
            "value": "DisableTrigger"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 4,
                "TriggerId": 50331836,
                "value": null
              }
            ],
            "value": "DisableTrigger"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 4,
                "TriggerId": 50331837,
                "value": null
              }
            ],
            "value": "DisableTrigger"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 4,
                "TriggerId": 50331838,
                "value": null
              }
            ],
            "value": "DisableTrigger"
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
      "Else": [
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
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "Master HP     "
                          },
                          {
                            "ParamType": 5,
                            "value": "|c00FF0303"
                          }
                        ],
                        "value": "OperatorString"
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
                                        "ParamType": 3,
                                        "VariableId": 100663603,
                                        "arrayIndexValues": [
                                          {
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
                                    "value": "GetUnitLifePercent"
                                  }
                                ],
                                "value": "R2I"
                              }
                            ],
                            "value": "I2S"
                          },
                          {
                            "ParamType": 5,
                            "value": "%|r   |   "
                          }
                        ],
                        "value": "OperatorString"
                      }
                    ],
                    "value": "OperatorString"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 5,
                        "value": "|c0020C000"
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
                                        "ParamType": 3,
                                        "VariableId": 100663604,
                                        "arrayIndexValues": [
                                          {
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
                                    "value": "GetUnitLifePercent"
                                  }
                                ],
                                "value": "R2I"
                              }
                            ],
                            "value": "I2S"
                          },
                          {
                            "ParamType": 5,
                            "value": "%|r"
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
            "value": "MultiboardSetTitleText"
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