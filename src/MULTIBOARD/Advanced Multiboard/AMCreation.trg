{
  "Id": 50332158,
  "Comment": "",
  "IsScript": false,
  "RunOnMapInit": false,
  "Script": "//*  Trigger AMCreation\r\n//****************************************************************************\r\nfunction Trig_AMCreation_0 takes nothing returns nothing\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[1],1,(LeaderboardGetPlayerIndexBJ(GetEnumPlayer(),udg_AM_LB[1]) + 2),(udg_Colour[GetConvertedPlayerId(GetEnumPlayer())] + (GetPlayerName(GetEnumPlayer()) + \"|r\")))\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[2],1,(LeaderboardGetPlayerIndexBJ(GetEnumPlayer(),udg_AM_LB[1]) + 2),(udg_Colour[GetConvertedPlayerId(GetEnumPlayer())] + (GetPlayerName(GetEnumPlayer()) + \"|r\")))\r\n\r\nendfunction\r\n\r\nfunction Trig_AMCreation_1 takes nothing returns nothing\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[1],1,(LeaderboardGetPlayerIndexBJ(GetEnumPlayer(),udg_AM_LB[2]) + (CountPlayersInForceBJ(udg_AM_PG[1]) + 4)),(udg_Colour[GetConvertedPlayerId(GetEnumPlayer())] + (GetPlayerName(GetEnumPlayer()) + \"|r\")))\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[2],1,(LeaderboardGetPlayerIndexBJ(GetEnumPlayer(),udg_AM_LB[2]) + (CountPlayersInForceBJ(udg_AM_PG[1]) + 4)),(udg_Colour[GetConvertedPlayerId(GetEnumPlayer())] + (GetPlayerName(GetEnumPlayer()) + \"|r\")))\r\n\r\nendfunction\r\n\r\nfunction If_Trig_AMCreation_2 takes nothing returns boolean\r\n\tif (not (udg_AM_SHOW_OPPONENT_VALUE == true)) then\r\n\t\treturn false\r\n\tendif\r\n\treturn true\r\n\r\nendfunction\r\n\r\nfunction Trig_AMCreation_3 takes nothing returns nothing\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[1],8,(LeaderboardGetPlayerIndexBJ(GetEnumPlayer(),udg_AM_LB[1]) + 2),I2S(udg_AM_PLAYER_VALUE[GetConvertedPlayerId(GetEnumPlayer())]))\r\n\r\nendfunction\r\n\r\nfunction Trig_AMCreation_4 takes nothing returns nothing\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[2],8,(LeaderboardGetPlayerIndexBJ(GetEnumPlayer(),udg_AM_LB[2]) + (CountPlayersInForceBJ(udg_AM_PG[1]) + 4)),I2S(udg_AM_PLAYER_VALUE[GetConvertedPlayerId(GetEnumPlayer())]))\r\n\r\nendfunction\r\n\r\nfunction Trig_AMCreation_5 takes nothing returns nothing\r\n\tcall TriggerRegisterPlayerEventLeave(gg_trg_AMUpdateLeaver,GetEnumPlayer())\r\n\r\n\r\nendfunction\r\n\r\nfunction Trig_AMCreation_Actions takes nothing returns nothing\r\n\t\r\n//*   CREATION OF MULTIBOARD\r\n\tcall CreateMultiboardBJ(8,(CountPlayersInForceBJ(udg_AM_PG_ALL) + 2),(udg_AM_NAME + (\" [ \" + ((udg_Colour[1] + (\"0|r : \" + (udg_Colour[7] + \"00|r\"))) + \" ]\"))))\r\n\tcall MultiboardDisplayBJ(false,GetLastCreatedMultiboard())\r\n\tset udg_AM_MB[1] = GetLastCreatedMultiboard()\r\n\tcall CreateMultiboardBJ(8,(CountPlayersInForceBJ(udg_AM_PG_ALL) + 2),(udg_AM_NAME + (\" [ \" + ((udg_Colour[1] + (\"0|r : \" + (udg_Colour[7] + \"00|r\"))) + \" ]\"))))\r\n\tcall MultiboardDisplayBJ(false,GetLastCreatedMultiboard())\r\n\tset udg_AM_MB[2] = GetLastCreatedMultiboard()\r\n\t\r\n//*   // -------------------------------------------------------------------------------------------------------------------------------------------------\r\n\t\r\n//*   SETTINGS\r\n\t\r\n//*   DEFAULT SETTINGS FOR WIDTH AND DISPLAY STYLE\r\n\tcall MultiboardSetItemStyleBJ(udg_AM_MB[1],0,0,true,false)\r\n\tcall MultiboardSetItemStyleBJ(udg_AM_MB[2],0,0,true,false)\r\n\tcall MultiboardSetItemWidthBJ(udg_AM_MB[1],0,0,6.00)\r\n\tcall MultiboardSetItemWidthBJ(udg_AM_MB[2],0,0,6.00)\r\n\tset bj_forLoopAIndex=1 \r\nset bj_forLoopAIndexEnd=2 \r\n\tloop\r\n\texitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd\r\n\t\r\n//*  // DEFAULT COLOUR FOR COLUMNS REPRESENTING LEVEL\r\n\tcall MultiboardSetItemColorBJ(udg_AM_MB[GetForLoopIndexA()],2,0,80.00,80.00,80.00,0)\r\n\t\r\n//*  // DEFAULT COLOUR FOR COLUMNS REPRESENTING HERO KILLS\r\n\tcall MultiboardSetItemColorBJ(udg_AM_MB[GetForLoopIndexA()],3,0,80.00,25.00,15.00,0)\r\n\t\r\n//*  // DEFAULT COLOUR FOR COLUMNS REPRESENTING HERO DEATHS\r\n\tcall MultiboardSetItemColorBJ(udg_AM_MB[GetForLoopIndexA()],4,0,10.00,55.00,10.00,0)\r\n\t\r\n//*  // DEFAULT COLOUR FOR COLUMNS REPRESENTING CREEP STATS\r\n\tcall MultiboardSetItemColorBJ(udg_AM_MB[GetForLoopIndexA()],5,0,30.00,65.00,80.00,0)\r\n\t\r\n//*  // DEFAULT COLOUR FOR COLUMNS REPRESENTING HP/MHP\r\n\tcall MultiboardSetItemColorBJ(udg_AM_MB[GetForLoopIndexA()],6,0,70.00,30.00,50.00,0)\r\n\t\r\n//*  // DEFAULT COLOUR FOR COLUMNS REPRESENTING GOLD\r\n\tcall MultiboardSetItemColorBJ(udg_AM_MB[GetForLoopIndexA()],8,0,80.00,60.00,0.00,0)\r\n\t\r\n//*  // DEFAULT COLOUR FOR ROWS REPRESENTING TEAMS\r\n\tcall MultiboardSetItemColorBJ(udg_AM_MB[GetForLoopIndexA()],0,2,100,70.00,70.00,0)\r\n\tcall MultiboardSetItemColorBJ(udg_AM_MB[GetForLoopIndexA()],0,(CountPlayersInForceBJ(udg_AM_PG[1]) + 4),70.00,70.00,100.00,0)\r\n\t\r\n//*  // DEFAULT COLOUR FOR COLUMNS REPRESENTING LEVEL\r\n\tcall MultiboardSetItemColorBJ(udg_AM_MB[GetForLoopIndexA()],9,0,80.00,80.00,80.00,0)\r\n\tset bj_forLoopAIndex=bj_forLoopAIndex+1\r\nendloop\r\n\t\r\n//*   SETTING NAMES ON BOARD...\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[1],1,2,udg_AM_TEAM_ONE_NAME)\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[2],1,2,udg_AM_TEAM_ONE_NAME)\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[1],1,(CountPlayersInForceBJ(udg_AM_PG[1]) + 4),udg_AM_TEAM_TWO_NAME)\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[2],1,(CountPlayersInForceBJ(udg_AM_PG[1]) + 4),udg_AM_TEAM_TWO_NAME)\r\n\tset bj_forLoopAIndex=1 \r\nset bj_forLoopAIndexEnd=2 \r\n\tloop\r\n\texitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[GetForLoopIndexA()],2,1,(udg_Colour[9] + \"L|r\"))\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[GetForLoopIndexA()],3,1,(udg_Colour[1] + \"K|r\"))\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[GetForLoopIndexA()],4,1,(udg_Colour[7] + \"D|r\"))\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[GetForLoopIndexA()],5,1,(udg_Colour[10] + \"CS|r\"))\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[GetForLoopIndexA()],6,1,(udg_Colour[8] + \"HP / MHP|r\"))\r\n\tcall MultiboardSetItemStyleBJ(udg_AM_MB[GetForLoopIndexA()],8,1,true,true)\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[GetForLoopIndexA()],14,1,(udg_Colour[15] + (udg_AM_VALUE_NAME + \"|r\")))\r\n\tcall MultiboardSetItemIconBJ(udg_AM_MB[GetForLoopIndexA()],8,1,udg_AM_VALUE_ICON)\r\n\tset bj_forLoopAIndex=bj_forLoopAIndex+1\r\nendloop\r\n\tcall ForForce(udg_AM_PG[1], function Trig_AMCreation_0)\r\n\r\n\tcall ForForce(udg_AM_PG[2], function Trig_AMCreation_1)\r\n\r\n\t\r\n//*   SETTING SPECIFIC WIDTH...\r\n\tset bj_forLoopBIndex=2 \r\nset bj_forLoopBIndexEnd=4 \r\n\tloop\r\n\texitwhen bj_forLoopBIndex > bj_forLoopBIndexEnd\r\n\tcall MultiboardSetItemWidthBJ(udg_AM_MB[1],GetForLoopIndexB(),0,2.00)\r\n\tcall MultiboardSetItemWidthBJ(udg_AM_MB[2],GetForLoopIndexB(),0,2.00)\r\n\tset bj_forLoopBIndex=bj_forLoopBIndex+1\r\nendloop\r\n\tset bj_forLoopAIndex=1 \r\nset bj_forLoopAIndexEnd=2 \r\n\tloop\r\n\texitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd\r\n\t\r\n//*   // COLUMN WIDTH OF NAME DISPLAY\r\n\tcall MultiboardSetItemWidthBJ(udg_AM_MB[GetForLoopIndexA()],1,0,8.00)\r\n\t\r\n//*   // // // // // //\r\n\tcall MultiboardSetItemWidthBJ(udg_AM_MB[GetForLoopIndexA()],5,0,3.90)\r\n\tcall MultiboardSetItemWidthBJ(udg_AM_MB[GetForLoopIndexA()],6,0,8.00)\r\n\t\r\n//*   // HP BAR WIDTH\r\n\tcall MultiboardSetItemWidthBJ(udg_AM_MB[GetForLoopIndexA()],7,0,10.00)\r\n\t\r\n//*   // // // // // //\r\n\t\r\n//*   // VALUE WIDTH\r\n\tcall MultiboardSetItemWidthBJ(udg_AM_MB[GetForLoopIndexA()],8,0,5.00)\r\n\t\r\n//*   // // // // // //\r\n\tcall MultiboardSetItemWidthBJ(udg_AM_MB[GetForLoopIndexA()],1,(CountPlayersInForceBJ(udg_AM_PG_ALL) + 6),9.00)\r\n\tcall MultiboardSetItemWidthBJ(udg_AM_MB[GetForLoopIndexA()],2,(CountPlayersInForceBJ(udg_AM_PG_ALL) + 6),15.00)\r\n\tset bj_forLoopAIndex=bj_forLoopAIndex+1\r\nendloop\r\n\t\r\n//*   SETTING DEFAULT ZEROS...\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[1],2,(CountPlayersInForceBJ(udg_AM_PG_ALL) + 6),\"0%\")\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[2],2,(CountPlayersInForceBJ(udg_AM_PG_ALL) + 6),\"0%\")\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[1],5,2,\"0/0\")\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[2],5,2,\"0/0\")\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[1],5,(CountPlayersInForceBJ(udg_AM_PG[1]) + 4),\"0/0\")\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[2],5,(CountPlayersInForceBJ(udg_AM_PG[1]) + 4),\"0/0\")\r\n\tset bj_forLoopBIndex=2 \r\nset bj_forLoopBIndexEnd=(2 + CountPlayersInForceBJ(udg_AM_PG[1])) \r\n\tloop\r\n\texitwhen bj_forLoopBIndex > bj_forLoopBIndexEnd\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[1],3,GetForLoopIndexB(),\"0\")\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[2],3,GetForLoopIndexB(),\"0\")\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[1],4,GetForLoopIndexB(),\"0\")\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[2],4,GetForLoopIndexB(),\"0\")\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[1],5,GetForLoopIndexB(),\"0/0\")\r\n\tset bj_forLoopBIndex=bj_forLoopBIndex+1\r\nendloop\r\n\tset bj_forLoopBIndex=(CountPlayersInForceBJ(udg_AM_PG[1]) + 4) \r\nset bj_forLoopBIndexEnd=(CountPlayersInForceBJ(udg_AM_PG_ALL) + 4) \r\n\tloop\r\n\texitwhen bj_forLoopBIndex > bj_forLoopBIndexEnd\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[1],3,GetForLoopIndexB(),\"0\")\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[2],3,GetForLoopIndexB(),\"0\")\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[1],4,GetForLoopIndexB(),\"0\")\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[2],4,GetForLoopIndexB(),\"0\")\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[2],5,GetForLoopIndexB(),\"0/0\")\r\n\tset bj_forLoopBIndex=bj_forLoopBIndex+1\r\nendloop\r\n\t\r\n//*   SETTING SPECIFIC VALUE...\r\n\tset bj_forLoopAIndex=1 \r\nset bj_forLoopAIndexEnd=2 \r\n\tloop\r\n\texitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd\r\n\tif(If_Trig_AMCreation_2()) then\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[GetForLoopIndexA()],8,2,(udg_Colour[15] + (I2S((udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(1,udg_AM_LB[1]))] + (udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(2,udg_AM_LB[1]))] + (udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(3,udg_AM_LB[1]))] + (udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(4,udg_AM_LB[1]))] + udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(5,udg_AM_LB[1]))]))))) + \"|r\")))\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[GetForLoopIndexA()],8,(CountPlayersInForceBJ(udg_AM_PG[1]) + 4),(udg_Colour[15] + (I2S((udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(1,udg_AM_LB[2]))] + (udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(2,udg_AM_LB[2]))] + (udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(3,udg_AM_LB[2]))] + (udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(4,udg_AM_LB[2]))] + udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(5,udg_AM_LB[2]))]))))) + \"|r\")))\r\n\telse\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[1],8,2,(udg_Colour[15] + (I2S((udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(1,udg_AM_LB[1]))] + (udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(2,udg_AM_LB[1]))] + (udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(3,udg_AM_LB[1]))] + (udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(4,udg_AM_LB[1]))] + udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(5,udg_AM_LB[1]))]))))) + \"|r\")))\r\n\tcall MultiboardSetItemValueBJ(udg_AM_MB[2],8,(CountPlayersInForceBJ(udg_AM_PG[1]) + 4),(udg_Colour[15] + (I2S((udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(1,udg_AM_LB[2]))] + (udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(2,udg_AM_LB[2]))] + (udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(3,udg_AM_LB[2]))] + (udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(4,udg_AM_LB[2]))] + udg_AM_PLAYER_VALUE[GetConvertedPlayerId(LeaderboardGetIndexedPlayerBJ(5,udg_AM_LB[2]))]))))) + \"|r\")))\r\n\tendif\r\n\r\n\tcall ForForce(udg_AM_PG[1], function Trig_AMCreation_3)\r\n\r\n\tcall ForForce(udg_AM_PG[2], function Trig_AMCreation_4)\r\n\r\n\tset bj_forLoopAIndex=bj_forLoopAIndex+1\r\nendloop\r\n\t\r\n//*   // -------------------------------------------------------------------------------------------------------------------------------------------------\r\n\t\r\n//*   DISPLAYING MULTIBOARD TO ONLY PROPER PLAYERS\r\n\tset bj_forLoopAIndex=1 \r\nset bj_forLoopAIndexEnd=6 \r\n\tloop\r\n\texitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd\r\n\tif (GetLocalPlayer() == Player(bj_forLoopAIndex)) then\r\n\tcall MultiboardDisplayBJ(true,udg_AM_MB[1])\r\n\tendif\r\n\tset bj_forLoopAIndex=bj_forLoopAIndex+1\r\nendloop\r\n\tset bj_forLoopAIndex=7 \r\nset bj_forLoopAIndexEnd=12 \r\n\tloop\r\n\texitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd\r\n\tif (GetLocalPlayer() == Player(bj_forLoopAIndex)) then\r\n\tcall MultiboardDisplayBJ(true,udg_AM_MB[2])\r\n\tendif\r\n\tset bj_forLoopAIndex=bj_forLoopAIndex+1\r\nendloop\r\n\t\r\n//*   // LEAVES GAME\r\n\tcall ForForce(udg_AM_PG_ALL, function Trig_AMCreation_5)\r\n\r\n\t\r\n//*   TURN ON TRIGGERS FOR UPDATE...\r\n\tcall EnableTrigger(gg_trg_AMUpdate)\r\n\tcall EnableTrigger(gg_trg_AMUpdateKills)\r\n\tcall EnableTrigger(gg_trg_AMUpdateLeaver)\r\n\tcall EnableTrigger(gg_trg_AMUpdateLevel)\r\n\t\r\n//*   REDUCE MEMORY USAGE...\r\n\tcall DestroyTrigger(gg_trg_AMCreation)\r\nendfunction\r\n\r\n\r\n//****************************************************************************\r\nfunction InitTrig_AMCreation takes nothing returns nothing\r\n\tset gg_trg_AMCreation = CreateTrigger()\r\n\tcall DisableTrigger(gg_trg_AMCreation)\r\n\tcall TriggerAddAction(gg_trg_AMCreation, function Trig_AMCreation_Actions)\r\nendfunction\r\n\r\n",
  "Events": [],
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
            "value": " CREATION OF MULTIBOARD"
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
            "value": "8"
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
                "VariableId": 100663785,
                "arrayIndexValues": [
                  {
                    "ParamType": 5,
                    "value": "0"
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
                    "value": " [ "
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663784,
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
                                "ParamType": 5,
                                "value": "0|r : "
                              },
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663784,
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
                                    "ParamType": 5,
                                    "value": "00|r"
                                  }
                                ],
                                "value": "OperatorString"
                              }
                            ],
                            "value": "OperatorString"
                          }
                        ],
                        "value": "OperatorString"
                      },
                      {
                        "ParamType": 5,
                        "value": " ]"
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
        "value": "CreateMultiboardBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "ShowHideHide"
          },
          {
            "ParamType": 1,
            "parameters": [],
            "value": "GetLastCreatedMultiboard"
          }
        ],
        "value": "MultiboardDisplayBJ"
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
            "ParamType": 1,
            "parameters": [],
            "value": "GetLastCreatedMultiboard"
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
            "value": "8"
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
                "VariableId": 100663785,
                "arrayIndexValues": [
                  {
                    "ParamType": 5,
                    "value": "0"
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
                    "value": " [ "
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663784,
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
                                "ParamType": 5,
                                "value": "0|r : "
                              },
                              {
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 3,
                                    "VariableId": 100663784,
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
                                    "ParamType": 5,
                                    "value": "00|r"
                                  }
                                ],
                                "value": "OperatorString"
                              }
                            ],
                            "value": "OperatorString"
                          }
                        ],
                        "value": "OperatorString"
                      },
                      {
                        "ParamType": 5,
                        "value": " ]"
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
        "value": "CreateMultiboardBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "ShowHideHide"
          },
          {
            "ParamType": 1,
            "parameters": [],
            "value": "GetLastCreatedMultiboard"
          }
        ],
        "value": "MultiboardDisplayBJ"
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
            "ParamType": 1,
            "parameters": [],
            "value": "GetLastCreatedMultiboard"
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
            "value": " // -------------------------------------------------------------------------------------------------------------------------------------------------"
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
            "value": " SETTINGS"
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
            "value": " DEFAULT SETTINGS FOR WIDTH AND DISPLAY STYLE"
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
            "value": "0"
          },
          {
            "ParamType": 5,
            "value": "0"
          },
          {
            "ParamType": 2,
            "value": "ShowHideShow"
          },
          {
            "ParamType": 2,
            "value": "ShowHideHide"
          }
        ],
        "value": "MultiboardSetItemStyleBJ"
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
            "value": "0"
          },
          {
            "ParamType": 5,
            "value": "0"
          },
          {
            "ParamType": 2,
            "value": "ShowHideShow"
          },
          {
            "ParamType": 2,
            "value": "ShowHideHide"
          }
        ],
        "value": "MultiboardSetItemStyleBJ"
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
            "value": "0"
          },
          {
            "ParamType": 5,
            "value": "0"
          },
          {
            "ParamType": 5,
            "value": "6.00"
          }
        ],
        "value": "MultiboardSetItemWidthBJ"
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
            "value": "0"
          },
          {
            "ParamType": 5,
            "value": "0"
          },
          {
            "ParamType": 5,
            "value": "6.00"
          }
        ],
        "value": "MultiboardSetItemWidthBJ"
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
                "ParamType": 5,
                "value": "// DEFAULT COLOUR FOR COLUMNS REPRESENTING LEVEL"
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
                "value": "2"
              },
              {
                "ParamType": 5,
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "80.00"
              },
              {
                "ParamType": 5,
                "value": "80.00"
              },
              {
                "ParamType": 5,
                "value": "80.00"
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
                "ParamType": 5,
                "value": "// DEFAULT COLOUR FOR COLUMNS REPRESENTING HERO KILLS"
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
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "80.00"
              },
              {
                "ParamType": 5,
                "value": "25.00"
              },
              {
                "ParamType": 5,
                "value": "15.00"
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
                "ParamType": 5,
                "value": "// DEFAULT COLOUR FOR COLUMNS REPRESENTING HERO DEATHS"
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
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "10.00"
              },
              {
                "ParamType": 5,
                "value": "55.00"
              },
              {
                "ParamType": 5,
                "value": "10.00"
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
                "ParamType": 5,
                "value": "// DEFAULT COLOUR FOR COLUMNS REPRESENTING CREEP STATS"
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
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "30.00"
              },
              {
                "ParamType": 5,
                "value": "65.00"
              },
              {
                "ParamType": 5,
                "value": "80.00"
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
                "ParamType": 5,
                "value": "// DEFAULT COLOUR FOR COLUMNS REPRESENTING HP/MHP"
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
                "value": "6"
              },
              {
                "ParamType": 5,
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "70.00"
              },
              {
                "ParamType": 5,
                "value": "30.00"
              },
              {
                "ParamType": 5,
                "value": "50.00"
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
                "ParamType": 5,
                "value": "// DEFAULT COLOUR FOR COLUMNS REPRESENTING GOLD"
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
                "value": "8"
              },
              {
                "ParamType": 5,
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "80.00"
              },
              {
                "ParamType": 5,
                "value": "60.00"
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
                "ParamType": 5,
                "value": "// DEFAULT COLOUR FOR ROWS REPRESENTING TEAMS"
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
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "2"
              },
              {
                "ParamType": 5,
                "value": "100"
              },
              {
                "ParamType": 5,
                "value": "70.00"
              },
              {
                "ParamType": 5,
                "value": "70.00"
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
                "value": "0"
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
                "ParamType": 5,
                "value": "70.00"
              },
              {
                "ParamType": 5,
                "value": "70.00"
              },
              {
                "ParamType": 5,
                "value": "100.00"
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
                "ParamType": 5,
                "value": "// DEFAULT COLOUR FOR COLUMNS REPRESENTING LEVEL"
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
                "value": "9"
              },
              {
                "ParamType": 5,
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "80.00"
              },
              {
                "ParamType": 5,
                "value": "80.00"
              },
              {
                "ParamType": 5,
                "value": "80.00"
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
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": " SETTING NAMES ON BOARD..."
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
            "value": "1"
          },
          {
            "ParamType": 5,
            "value": "2"
          },
          {
            "ParamType": 3,
            "VariableId": 100663783,
            "arrayIndexValues": [
              {
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
            "value": "1"
          },
          {
            "ParamType": 5,
            "value": "2"
          },
          {
            "ParamType": 3,
            "VariableId": 100663783,
            "arrayIndexValues": [
              {
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
            "value": "1"
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
            "ParamType": 3,
            "VariableId": 100663782,
            "arrayIndexValues": [
              {
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
            "value": "1"
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
            "ParamType": 3,
            "VariableId": 100663782,
            "arrayIndexValues": [
              {
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
        "value": "MultiboardSetItemValueBJ"
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
                "value": "2"
              },
              {
                "ParamType": 5,
                "value": "1"
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663784,
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
                    "ParamType": 5,
                    "value": "L|r"
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
                "value": "3"
              },
              {
                "ParamType": 5,
                "value": "1"
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663784,
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
                    "value": "K|r"
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
                "value": "4"
              },
              {
                "ParamType": 5,
                "value": "1"
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663784,
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
                    "ParamType": 5,
                    "value": "D|r"
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
                "ParamType": 5,
                "value": "1"
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663784,
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
                  },
                  {
                    "ParamType": 5,
                    "value": "CS|r"
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
                "value": "6"
              },
              {
                "ParamType": 5,
                "value": "1"
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663784,
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
                    "ParamType": 5,
                    "value": "HP / MHP|r"
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
                "value": "8"
              },
              {
                "ParamType": 5,
                "value": "1"
              },
              {
                "ParamType": 2,
                "value": "ShowHideShow"
              },
              {
                "ParamType": 2,
                "value": "ShowHideShow"
              }
            ],
            "value": "MultiboardSetItemStyleBJ"
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
                "value": "14"
              },
              {
                "ParamType": 5,
                "value": "1"
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 3,
                    "VariableId": 100663784,
                    "arrayIndexValues": [
                      {
                        "ParamType": 5,
                        "value": "15"
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
                        "VariableId": 100663756,
                        "arrayIndexValues": [
                          {
                            "ParamType": 5,
                            "value": "0"
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
                "value": "8"
              },
              {
                "ParamType": 5,
                "value": "1"
              },
              {
                "ParamType": 3,
                "VariableId": 100663777,
                "arrayIndexValues": [
                  {
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
            "value": "MultiboardSetItemIconBJ"
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
      "ElementType": 5,
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
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [],
                        "value": "GetEnumPlayer"
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
                    "VariableId": 100663784,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetEnumPlayer"
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
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetEnumPlayer"
                          }
                        ],
                        "value": "GetPlayerName"
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
                        "value": "GetEnumPlayer"
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
                    "VariableId": 100663784,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetEnumPlayer"
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
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetEnumPlayer"
                          }
                        ],
                        "value": "GetPlayerName"
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
      "isEnabled": true,
      "function": {
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
        "value": "ForForceMultiple"
      }
    },
    {
      "ElementType": 5,
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
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [],
                        "value": "GetEnumPlayer"
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
                    "VariableId": 100663784,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetEnumPlayer"
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
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetEnumPlayer"
                          }
                        ],
                        "value": "GetPlayerName"
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
                        "value": "GetEnumPlayer"
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
                    "VariableId": 100663784,
                    "arrayIndexValues": [
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetEnumPlayer"
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
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 1,
                            "parameters": [],
                            "value": "GetEnumPlayer"
                          }
                        ],
                        "value": "GetPlayerName"
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
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 3,
            "VariableId": 100663780,
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
        "value": "ForForceMultiple"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": " SETTING SPECIFIC WIDTH..."
          }
        ],
        "value": "CommentString"
      }
    },
    {
      "ElementType": 7,
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
                "parameters": [],
                "value": "GetForLoopIndexB"
              },
              {
                "ParamType": 5,
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "2.00"
              }
            ],
            "value": "MultiboardSetItemWidthBJ"
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
                "ParamType": 1,
                "parameters": [],
                "value": "GetForLoopIndexB"
              },
              {
                "ParamType": 5,
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "2.00"
              }
            ],
            "value": "MultiboardSetItemWidthBJ"
          }
        }
      ],
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "2"
          },
          {
            "ParamType": 5,
            "value": "4"
          }
        ],
        "value": "ForLoopBMultiple"
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
                "ParamType": 5,
                "value": " // COLUMN WIDTH OF NAME DISPLAY"
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
                "value": "1"
              },
              {
                "ParamType": 5,
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "8.00"
              }
            ],
            "value": "MultiboardSetItemWidthBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": " // // // // // //"
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
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "3.90"
              }
            ],
            "value": "MultiboardSetItemWidthBJ"
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
                "value": "6"
              },
              {
                "ParamType": 5,
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "8.00"
              }
            ],
            "value": "MultiboardSetItemWidthBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": " // HP BAR WIDTH"
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
                "value": "7"
              },
              {
                "ParamType": 5,
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "10.00"
              }
            ],
            "value": "MultiboardSetItemWidthBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": " // // // // // //"
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
                "value": " // VALUE WIDTH"
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
                "value": "8"
              },
              {
                "ParamType": 5,
                "value": "0"
              },
              {
                "ParamType": 5,
                "value": "5.00"
              }
            ],
            "value": "MultiboardSetItemWidthBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": " // // // // // //"
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
                "value": "1"
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
                "value": "9.00"
              }
            ],
            "value": "MultiboardSetItemWidthBJ"
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
                "value": "15.00"
              }
            ],
            "value": "MultiboardSetItemWidthBJ"
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
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": " SETTING DEFAULT ZEROS..."
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
            "value": "0%"
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
            "ParamType": 5,
            "value": "0%"
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
            "value": "5"
          },
          {
            "ParamType": 5,
            "value": "2"
          },
          {
            "ParamType": 5,
            "value": "0/0"
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
            "value": "5"
          },
          {
            "ParamType": 5,
            "value": "2"
          },
          {
            "ParamType": 5,
            "value": "0/0"
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
            "ParamType": 5,
            "value": "0/0"
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
            "ParamType": 5,
            "value": "0/0"
          }
        ],
        "value": "MultiboardSetItemValueBJ"
      }
    },
    {
      "ElementType": 7,
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
                "parameters": [],
                "value": "GetForLoopIndexB"
              },
              {
                "ParamType": 5,
                "value": "0"
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
                "parameters": [],
                "value": "GetForLoopIndexB"
              },
              {
                "ParamType": 5,
                "value": "0"
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
                "value": "4"
              },
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetForLoopIndexB"
              },
              {
                "ParamType": 5,
                "value": "0"
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
                "parameters": [],
                "value": "GetForLoopIndexB"
              },
              {
                "ParamType": 5,
                "value": "0"
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
                "value": "5"
              },
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetForLoopIndexB"
              },
              {
                "ParamType": 5,
                "value": "0/0"
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
            "value": "2"
          },
          {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "2"
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
              }
            ],
            "value": "OperatorInt"
          }
        ],
        "value": "ForLoopBMultiple"
      }
    },
    {
      "ElementType": 7,
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
                "parameters": [],
                "value": "GetForLoopIndexB"
              },
              {
                "ParamType": 5,
                "value": "0"
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
                "parameters": [],
                "value": "GetForLoopIndexB"
              },
              {
                "ParamType": 5,
                "value": "0"
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
                "value": "4"
              },
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetForLoopIndexB"
              },
              {
                "ParamType": 5,
                "value": "0"
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
                "parameters": [],
                "value": "GetForLoopIndexB"
              },
              {
                "ParamType": 5,
                "value": "0"
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
                "value": "5"
              },
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetForLoopIndexB"
              },
              {
                "ParamType": 5,
                "value": "0/0"
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
                "value": "4"
              }
            ],
            "value": "OperatorInt"
          }
        ],
        "value": "ForLoopBMultiple"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": " SETTING SPECIFIC VALUE..."
          }
        ],
        "value": "CommentString"
      }
    },
    {
      "ElementType": 6,
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
                    "VariableId": 100663755,
                    "arrayIndexValues": [
                      {
                        "ParamType": 5,
                        "value": "0"
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
                    "value": "8"
                  },
                  {
                    "ParamType": 5,
                    "value": "2"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663784,
                        "arrayIndexValues": [
                          {
                            "ParamType": 5,
                            "value": "15"
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
                                    "ParamType": 3,
                                    "VariableId": 100663761,
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
                                        "VariableId": 100663761,
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
                                            "VariableId": 100663761,
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
                                                "VariableId": 100663761,
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
                                                "VariableId": 100663761,
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
                    "value": "8"
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
                        "ParamType": 3,
                        "VariableId": 100663784,
                        "arrayIndexValues": [
                          {
                            "ParamType": 5,
                            "value": "15"
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
                                    "ParamType": 3,
                                    "VariableId": 100663761,
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
                                        "VariableId": 100663761,
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
                                            "VariableId": 100663761,
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
                                                "VariableId": 100663761,
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
                                                "VariableId": 100663761,
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
                    "value": "8"
                  },
                  {
                    "ParamType": 5,
                    "value": "2"
                  },
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 3,
                        "VariableId": 100663784,
                        "arrayIndexValues": [
                          {
                            "ParamType": 5,
                            "value": "15"
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
                                    "ParamType": 3,
                                    "VariableId": 100663761,
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
                                        "VariableId": 100663761,
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
                                            "VariableId": 100663761,
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
                                                "VariableId": 100663761,
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
                                                "VariableId": 100663761,
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
                    "value": "8"
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
                        "ParamType": 3,
                        "VariableId": 100663784,
                        "arrayIndexValues": [
                          {
                            "ParamType": 5,
                            "value": "15"
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
                                    "ParamType": 3,
                                    "VariableId": 100663761,
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
                                        "VariableId": 100663761,
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
                                            "VariableId": 100663761,
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
                                                "VariableId": 100663761,
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
                                                "VariableId": 100663761,
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
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [],
            "value": "IfThenElseMultiple"
          }
        },
        {
          "ElementType": 5,
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
                    "value": "8"
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
                            "value": "GetEnumPlayer"
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
                        "VariableId": 100663761,
                        "arrayIndexValues": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "GetEnumPlayer"
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
            "value": "ForForceMultiple"
          }
        },
        {
          "ElementType": 5,
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
                    "value": "8"
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
                            "value": "GetEnumPlayer"
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
                        "VariableId": 100663761,
                        "arrayIndexValues": [
                          {
                            "ParamType": 1,
                            "parameters": [
                              {
                                "ParamType": 1,
                                "parameters": [],
                                "value": "GetEnumPlayer"
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
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663780,
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
            "value": "ForForceMultiple"
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
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": " // -------------------------------------------------------------------------------------------------------------------------------------------------"
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
            "value": " DISPLAYING MULTIBOARD TO ONLY PROPER PLAYERS"
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
                "ParamType": 5,
                "value": "if (GetLocalPlayer() == Player(bj_forLoopAIndex)) then"
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
                "ParamType": 2,
                "value": "ShowHideShow"
              },
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
              }
            ],
            "value": "MultiboardDisplayBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "endif"
              }
            ],
            "value": "CustomScriptCode"
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
            "value": "6"
          }
        ],
        "value": "ForLoopAMultiple"
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
                "ParamType": 5,
                "value": "if (GetLocalPlayer() == Player(bj_forLoopAIndex)) then"
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
                "ParamType": 2,
                "value": "ShowHideShow"
              },
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
              }
            ],
            "value": "MultiboardDisplayBJ"
          }
        },
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "endif"
              }
            ],
            "value": "CustomScriptCode"
          }
        }
      ],
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "7"
          },
          {
            "ParamType": 5,
            "value": "12"
          }
        ],
        "value": "ForLoopAMultiple"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": " // LEAVES GAME"
          }
        ],
        "value": "CommentString"
      }
    },
    {
      "ElementType": 5,
      "Actions": [
        {
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 4,
                "TriggerId": 50332161,
                "value": null
              },
              {
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [],
                    "value": "GetEnumPlayer"
                  }
                ],
                "value": "TriggerRegisterPlayerEventLeave"
              }
            ],
            "value": "AddTriggerEvent"
          }
        }
      ],
      "isEnabled": true,
      "function": {
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
        "value": "ForForceMultiple"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": " TURN ON TRIGGERS FOR UPDATE..."
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
            "TriggerId": 50332159,
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
            "ParamType": 4,
            "TriggerId": 50332160,
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
            "ParamType": 4,
            "TriggerId": 50332161,
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
            "ParamType": 4,
            "TriggerId": 50332162,
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
            "value": " REDUCE MEMORY USAGE..."
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
            "value": "call DestroyTrigger(gg_trg_AMCreation)"
          }
        ],
        "value": "CustomScriptCode"
      }
    }
  ]
}