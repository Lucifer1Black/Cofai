{
  "Id": 50331852,
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
            "value": "PlayerUnitEventHeroPickUpItem"
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
                "value": "GetManipulatedItem"
              }
            ],
            "value": "GetItemType"
          },
          {
            "ParamType": 2,
            "value": "OperatorNotEqualENE"
          },
          {
            "ParamType": 2,
            "value": "ItemTypePowerup"
          }
        ],
        "value": "OperatorCompareItemType"
      }
    }
  ],
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
                    "value": "GetManipulatedItem"
                  }
                ],
                "value": "GetItemType"
              },
              {
                "ParamType": 2,
                "value": "OperatorNotEqualENE"
              },
              {
                "ParamType": 2,
                "value": "ItemTypeCharged"
              }
            ],
            "value": "OperatorCompareItemType"
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
                "VariableId": 100663307,
                "arrayIndexValues": [
                  {
                    "ParamType": 5,
                    "value": "0"
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
          "ElementType": 8,
          "Actions": [
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
                        "VariableId": 100663331,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663316,
                            "arrayIndexValues": [
                              {
                                "ParamType": 5,
                                "value": "0"
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
                        "value": "OperatorNotEqualENE"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [],
                        "value": "GetManipulatedItem"
                      }
                    ],
                    "value": "OperatorCompareItem"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663307,
                        "arrayIndexValues": [
                          {
                            "ParamType": 5,
                            "value": "0"
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
                            "VariableId": 100663307,
                            "arrayIndexValues": [
                              {
                                "ParamType": 5,
                                "value": "0"
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
                  },
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "DoNothing"
                  }
                ],
                "value": "IfThenElse"
              }
            }
          ],
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663316,
                "arrayIndexValues": [
                  {
                    "ParamType": 5,
                    "value": "0"
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
                "VariableId": 100663308,
                "arrayIndexValues": [
                  {
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
                    "VariableId": 100663307,
                    "arrayIndexValues": [
                      {
                        "ParamType": 5,
                        "value": "0"
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
                    "ParamType": 3,
                    "VariableId": 100663308,
                    "arrayIndexValues": [
                      {
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
                    "VariableId": 100663308,
                    "arrayIndexValues": [
                      {
                        "ParamType": 5,
                        "value": "0"
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
                        "VariableId": 100663308,
                        "arrayIndexValues": [
                          {
                            "ParamType": 5,
                            "value": "0"
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
                    "VariableId": 100663331,
                    "arrayIndexValues": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663308,
                        "arrayIndexValues": [
                          {
                            "ParamType": 5,
                            "value": "0"
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
                    "parameters": [],
                    "value": "GetManipulatedItem"
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
                    "VariableId": 100663330,
                    "arrayIndexValues": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663308,
                        "arrayIndexValues": [
                          {
                            "ParamType": 5,
                            "value": "0"
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
                        "ParamType": 1,
                        "parameters": [],
                        "value": "GetTriggerUnit"
                      }
                    ],
                    "value": "GetOwningPlayer"
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
                        "ParamType": 3,
                        "VariableId": 100663331,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663317,
                            "arrayIndexValues": [
                              {
                                "ParamType": 5,
                                "value": "0"
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
                        "ParamType": 1,
                        "parameters": [],
                        "value": "GetManipulatedItem"
                      }
                    ],
                    "value": "OperatorCompareItem"
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
                                "parameters": [],
                                "value": "GetTriggerUnit"
                              }
                            ],
                            "value": "GetOwningPlayer"
                          },
                          {
                            "ParamType": 2,
                            "value": "OperatorNotEqualENE"
                          },
                          {
                            "ParamType": 3,
                            "VariableId": 100663330,
                            "arrayIndexValues": [
                              {
                                "ParamType": 3,
                                "VariableId": 100663317,
                                "arrayIndexValues": [
                                  {
                                    "ParamType": 5,
                                    "value": "0"
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
                        "value": "OperatorComparePlayer"
                      }
                    },
                    {
                      "isEnabled": true,
                      "function": {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663313,
                            "arrayIndexValues": [
                              {
                                "ParamType": 5,
                                "value": "0"
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
                                "ParamType": 3,
                                "VariableId": 100663332,
                                "arrayIndexValues": [
                                  {
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
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetManipulatedItem"
                          },
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetTriggerUnit"
                          }
                        ],
                        "value": "UnitRemoveItemSwapped"
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
                            "value": "GetForceOfPlayer"
                          },
                          {
                            "ParamType": 5,
                            "value": "Can not pick up item that doesn't belong to you."
                          }
                        ],
                        "value": "DisplayTextToForce"
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
                            "value": "GetManipulatedItem"
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
                            "VariableId": 100663298,
                            "arrayIndexValues": [
                              {
                                "ParamType": 5,
                                "value": "0"
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
                            "value": "GetTriggerUnit"
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
                            "ParamType": 4,
                            "TriggerId": 50331849,
                            "value": null
                          }
                        ],
                        "value": "TriggerExecute"
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
                "VariableId": 100663317,
                "arrayIndexValues": [
                  {
                    "ParamType": 5,
                    "value": "0"
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
                "VariableId": 100663308,
                "arrayIndexValues": [
                  {
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
                "value": "GetManipulatedItem"
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
                "VariableId": 100663298,
                "arrayIndexValues": [
                  {
                    "ParamType": 5,
                    "value": "0"
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
                "value": "GetTriggerUnit"
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
                "ParamType": 4,
                "TriggerId": 50331850,
                "value": null
              }
            ],
            "value": "TriggerExecute"
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