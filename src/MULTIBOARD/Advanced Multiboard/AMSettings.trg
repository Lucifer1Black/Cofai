{
  "Id": 50331689,
  "Comment": "Advanced Multiboard Settings",
  "IsScript": false,
  "RunOnMapInit": false,
  "Script": "//*  Trigger AMSettings\r\n//****************************************************************************\r\nfunction Trig_AMSettings_0 takes nothing returns nothing\r\n\tcall SetPlayerStateBJ(GetEnumPlayer(),PLAYER_STATE_RESOURCE_GOLD,750)\r\n\r\nendfunction\r\n\r\nfunction If_Trig_AMSettings_2 takes nothing returns boolean\r\n\tif (not (GetUnitTypeId(udg_AM_CHOSEN_HERO[GetConvertedPlayerId(GetEnumPlayer())]) == udg_AM_HERO_TYPE[GetForLoopIndexA()])) then\r\n\t\treturn false\r\n\tendif\r\n\treturn true\r\n\r\nendfunction\r\n\r\nfunction Trig_AMSettings_1 takes nothing returns nothing\r\n\tset bj_forLoopAIndex=48 \r\nset bj_forLoopAIndexEnd=udg_AM_HERO_TYPE_COUNT \r\n\tloop\r\n\texitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd\r\n\tif(If_Trig_AMSettings_2()) then\r\n\tset udg_AM_PLAYER_HERO_ICON_PATH[GetConvertedPlayerId(GetEnumPlayer())] = GetForLoopIndexA()\r\n\telse\r\n\tendif\r\n\r\n\tset bj_forLoopAIndex=bj_forLoopAIndex+1\r\nendloop\r\n\r\nendfunction\r\n\r\nfunction If_Trig_AMSettings_3 takes nothing returns boolean\r\n\tif (not (IsPlayerAlly(GetTriggerPlayer(),Player(0)) == true)) then\r\n\t\treturn false\r\n\tendif\r\n\treturn true\r\n\r\nendfunction\r\n\r\nfunction If_Trig_AMSettings_5 takes nothing returns boolean\r\n\tif (not (udg_AM_CHOSEN_HERO[GetConvertedPlayerId(GetEnumPlayer())] != null)) then\r\n\t\treturn false\r\n\tendif\r\n\treturn true\r\n\r\nendfunction\r\n\r\nfunction Trig_AMSettings_4 takes nothing returns nothing\r\n\tif(If_Trig_AMSettings_5()) then\r\n\tcall MultiboardSetItemStyleBJ(udg_AM_MB[GetForLoopIndexA()],1,(LeaderboardGetPlayerIndexBJ(GetEnumPlayer(),udg_AM_LB[1]) + 2),true,true)\r\n\tcall MultiboardSetItemIconBJ(udg_AM_MB[GetForLoopIndexA()],1,(LeaderboardGetPlayerIndexBJ(GetEnumPlayer(),udg_AM_LB[1]) + 2),udg_AM_HERO_ICON_PATH[udg_AM_PLAYER_HERO_ICON_PATH[GetConvertedPlayerId(GetEnumPlayer())]])\r\n\telse\r\n\tendif\r\n\r\n\r\nendfunction\r\n\r\nfunction If_Trig_AMSettings_7 takes nothing returns boolean\r\n\tif (not (udg_AM_CHOSEN_HERO[GetConvertedPlayerId(GetEnumPlayer())] != null)) then\r\n\t\treturn false\r\n\tendif\r\n\treturn true\r\n\r\nendfunction\r\n\r\nfunction Trig_AMSettings_6 takes nothing returns nothing\r\n\tif(If_Trig_AMSettings_7()) then\r\n\tcall MultiboardSetItemStyleBJ(udg_AM_MB[GetForLoopIndexA()],1,(LeaderboardGetPlayerIndexBJ(GetEnumPlayer(),udg_AM_LB[2]) + (CountPlayersInForceBJ(udg_AM_PG[1]) + 4)),true,true)\r\n\tcall MultiboardSetItemIconBJ(udg_AM_MB[GetForLoopIndexA()],1,(LeaderboardGetPlayerIndexBJ(GetEnumPlayer(),udg_AM_LB[2]) + (CountPlayersInForceBJ(udg_AM_PG[1]) + 4)),udg_AM_HERO_ICON_PATH[udg_AM_PLAYER_HERO_ICON_PATH[GetConvertedPlayerId(GetEnumPlayer())]])\r\n\telse\r\n\tendif\r\n\r\n\r\nendfunction\r\n\r\nfunction Trig_AMSettings_8 takes nothing returns nothing\r\n\tcall LeaderboardAddItemBJ(GetEnumPlayer(),udg_AM_LB[1],GetPlayerName(GetEnumPlayer()),0)\r\n\r\nendfunction\r\n\r\nfunction Trig_AMSettings_9 takes nothing returns nothing\r\n\tcall LeaderboardAddItemBJ(GetEnumPlayer(),udg_AM_LB[2],GetPlayerName(GetEnumPlayer()),0)\r\n\r\nendfunction\r\n\r\nfunction Trig_AMSettings_Actions takes nothing returns nothing\r\n\tset udg_AM_SHOW_OPPONENT_VALUE = false\r\n\tset udg_AM_VALUE_NAME = \"Gold\"\r\n\t\r\n//*  ---------------------------\r\n\t\r\n//*  Setup Hero Icon\r\n\t\r\n//*  ---------------------------\r\n\t\r\n//*  ---------------------------\r\n\t\r\n//*  Strength 1x - 16 Heroes\r\n\t\r\n//*  ---------------------------\r\n\tset udg_AM_HERO_TYPE[1] = 'H00B'\r\n\tset udg_AM_HERO_TYPE[2] = 'O00Y'\r\n\tset udg_AM_HERO_TYPE[3] = 'N016'\r\n\tset udg_AM_HERO_TYPE[4] = 'H004'\r\n\tset udg_AM_HERO_TYPE[5] = 'E002'\r\n\tset udg_AM_HERO_TYPE[6] = 'H002'\r\n\tset udg_AM_HERO_TYPE[7] = 'O002'\r\n\tset udg_AM_HERO_TYPE[8] = 'O00L'\r\n\tset udg_AM_HERO_TYPE[9] = 'N01E'\r\n\tset udg_AM_HERO_TYPE[10] = 'N00Q'\r\n\tset udg_AM_HERO_TYPE[11] = 'H00S'\r\n\tset udg_AM_HERO_TYPE[12] = 'U001'\r\n\tset udg_AM_HERO_TYPE[13] = 'H00Z'\r\n\tset udg_AM_HERO_TYPE[14] = 'O005'\r\n\tset udg_AM_HERO_TYPE[15] = 'H017'\r\n\tset udg_AM_HERO_TYPE[16] = 'H01N'\r\n\t\r\n//*  ---------------------------\r\n\t\r\n//*  ---------------------------\r\n\tset udg_AM_HERO_ICON_PATH[1] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNAvatarOn.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[2] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNHeroTaurenChieftain.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[3] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNPitLord.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[4] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNHeroPaladin.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[5] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNMountainGiant.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[6] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNArthas.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[7] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNChaosGrom.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[8] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNBeastmaster.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[9] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNPandarenBrewmaster.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[10] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNHeroAlchemist.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[11] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNTheCaptain.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[12] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNTichondrius.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[13] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNGarithos.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[14] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNChaosKotoBeast.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[15] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNSeigeEngineWithMissles.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[16] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNGrunt.blp\"\r\n\t\r\n//*  ---------------------------\r\n\t\r\n//*  Agility 3x - 14 Heroes\r\n\t\r\n//*  ---------------------------\r\n\tset udg_AM_HERO_TYPE[17] = 'E003'\r\n\tset udg_AM_HERO_TYPE[18] = 'H00A'\r\n\tset udg_AM_HERO_TYPE[19] = 'U000'\r\n\tset udg_AM_HERO_TYPE[20] = 'N00X'\r\n\tset udg_AM_HERO_TYPE[21] = 'H00D'\r\n\tset udg_AM_HERO_TYPE[22] = 'H005'\r\n\tset udg_AM_HERO_TYPE[23] = 'E008'\r\n\tset udg_AM_HERO_TYPE[24] = 'N00L'\r\n\tset udg_AM_HERO_TYPE[25] = 'E00A'\r\n\tset udg_AM_HERO_TYPE[26] = 'E00C'\r\n\tset udg_AM_HERO_TYPE[27] = 'H00T'\r\n\tset udg_AM_HERO_TYPE[28] = 'H000'\r\n\tset udg_AM_HERO_TYPE[29] = 'O004'\r\n\tset udg_AM_HERO_TYPE[30] = 'H011'\r\n\tset udg_AM_HERO_TYPE[31] = 'H01R'\r\n\tset udg_AM_HERO_TYPE[32] = 'E005'\r\n\t\r\n//*  ---------------------------\r\n\t\r\n//*  ---------------------------\r\n\tset udg_AM_HERO_ICON_PATH[17] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNHuntress.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[18] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNSC2-Marine.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[19] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNBansheeRanger.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[20] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNHeroAvatarOfFlame.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[21] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNProudmoore.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[22] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNShaman.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[23] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNWarden2.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[24] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNChaosBlademaster.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[25] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNPriestessOfTheMoon.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[26] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNHeroDemonHunter.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[27] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNChaosWolfRider.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[28] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNSummonWaterElemental.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[29] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNHeroBlademaster.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[30] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNGlaiveThrower.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[31] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNSylvanusWindrunner.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[32] = \"war3mapImported\\\\BTNEvilKerrigan.tga\"\r\n\t\r\n//*  ---------------------------\r\n\t\r\n//*  Intelligence 5x - 14 Heroes\r\n\t\r\n//*  ---------------------------\r\n\tset udg_AM_HERO_TYPE[33] = 'H00J'\r\n\tset udg_AM_HERO_TYPE[34] = 'O00U'\r\n\tset udg_AM_HERO_TYPE[35] = 'U008'\r\n\tset udg_AM_HERO_TYPE[36] = 'U003'\r\n\tset udg_AM_HERO_TYPE[37] = 'H00K'\r\n\tset udg_AM_HERO_TYPE[38] = 'O00G'\r\n\tset udg_AM_HERO_TYPE[39] = 'E006'\r\n\tset udg_AM_HERO_TYPE[40] = 'H008'\r\n\tset udg_AM_HERO_TYPE[41] = 'H00Q'\r\n\tset udg_AM_HERO_TYPE[42] = 'E00E'\r\n\tset udg_AM_HERO_TYPE[43] = 'H00V'\r\n\tset udg_AM_HERO_TYPE[44] = 'N012'\r\n\tset udg_AM_HERO_TYPE[45] = 'H014'\r\n\tset udg_AM_HERO_TYPE[46] = 'H00F'\r\n\tset udg_AM_HERO_TYPE[47] = 'H01L'\r\n\tset udg_AM_HERO_TYPE[48] = 'H00L'\r\n\t\r\n//*  ---------------------------\r\n\t\r\n//*  ---------------------------\r\n\tset udg_AM_HERO_ICON_PATH[33] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNMortarTeam.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[34] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNShadowHunter.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[35] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNLichVersion2.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[36] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNHeroCryptLord.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[37] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNJaina.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[38] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNThrall.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[39] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNKeeperGhostBlue.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[40] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNBloodMage2.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[41] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNPriest.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[42] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNFurion.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[43] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNGhostMage.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[44] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNHeroTinker.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[45] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNInfernalCannon.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[46] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNHeroGriffonWarrior.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[47] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNFaerieDragon.blp\"\r\n\tset udg_AM_HERO_ICON_PATH[48] = \"ReplaceableTextures\\\\CommandButtons\\\\BTNDeepLordRevenant.blp\"\r\n\t\r\n//*  ---------------------------------------------------------------------------------\r\n\t\r\n//*  ---------------------------------------------------------------------------------\r\n\tset udg_AM_HERO_TYPE_COUNT = 48\r\n\tcall ForForce(GetPlayersAll(), function Trig_AMSettings_0)\r\n\r\n\tset bj_forLoopAIndex=1 \r\nset bj_forLoopAIndexEnd=10 \r\n\tloop\r\n\texitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd\r\n\tset udg_AM_PLAYER_VALUE[GetForLoopIndexA()] = GetPlayerState(ConvertedPlayer(GetForLoopIndexA()),PLAYER_STATE_RESOURCE_GOLD)\r\n\tset bj_forLoopAIndex=bj_forLoopAIndex+1\r\nendloop\r\n\tset udg_AM_NAME = \"Gems\"\r\n\tset udg_AM_TEAM_ONE_NAME = \"|c00FF0000Burning Legion|r\"\r\n\tset udg_AM_TEAM_TWO_NAME = \"|c0020C000The Lich King|r\"\r\n\tset udg_AM_VALUE_ICON = \"UI\\\\Feedback\\\\Resources\\\\ResourceGold.blp\"\r\n\tset bj_forLoopAIndex=2 \r\nset bj_forLoopAIndexEnd=6 \r\n\tloop\r\n\texitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd\r\n\tcall ForceAddPlayerSimple(ConvertedPlayer(GetForLoopIndexA()),udg_Legion) \r\n\tset bj_forLoopAIndex=bj_forLoopAIndex+1\r\nendloop \r\n\r\n\tset bj_forLoopAIndex=8 \r\nset bj_forLoopAIndexEnd=12 \r\n\tloop\r\n\texitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd\r\n\tcall ForceAddPlayerSimple(ConvertedPlayer(GetForLoopIndexA()),udg_LichKing) \r\n\tset bj_forLoopAIndex=bj_forLoopAIndex+1\r\nendloop \r\n\r\n\tset udg_AM_PG[1] = udg_Legion\r\n\tset udg_AM_PG[2] = udg_LichKing\r\n\tset udg_AM_PG_ALL = GetPlayersAll()\r\n\tset udg_AM_BAR_COLOUR[1] = \"|cffff0303\"\r\n\tset udg_AM_BAR_COLOUR[2] = \"|cff20c000\"\r\n\tset udg_AM_BAR_COUNT = 10\r\n\tset bj_forLoopAIndex=1 \r\nset bj_forLoopAIndexEnd=udg_AM_BAR_COUNT \r\n\tloop\r\n\texitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd\r\n\tset udg_AM_BAR_STRING = (udg_AM_BAR_STRING + \"l\")\r\n\tset bj_forLoopAIndex=bj_forLoopAIndex+1\r\nendloop\r\n\t\r\n//*  // // //// // //// // //// // //// // //\r\n\t\r\n//*  // // //// // //// // //// // //// // //\r\n\t\r\n//*  // // //// // //// // //// // //// // //\r\n\t\r\n//*  // // //// // //// // //// // //// // //\r\n\t\r\n//*  PLEASE SEE THIS:\r\n\t\r\n//*   // PUT THE FOLLOWING ACTIONS INTO YOUR HERO CHOOSE TRIGGER\r\n\t\r\n//*   // AND ENABLE THE CURRENTLY DISABLED ACTION AFTER PLACING IT IN THE TRIGGER\r\n\t\r\n//*   // GO TO AMCreation and DELETE THE ACTION //PART 1// HERO ICON.\r\n\tcall ForForce(udg_AM_PG_ALL, function Trig_AMSettings_1)\r\n\r\n\tif(If_Trig_AMSettings_3()) then\r\n\tcall ForForce(udg_AM_PG[1], function Trig_AMSettings_4)\r\n\r\n\telse\r\n\tcall ForForce(udg_AM_PG[2], function Trig_AMSettings_6)\r\n\r\n\tendif\r\n\r\n\t\r\n//*  // // //// // //// // //// // //// // //\r\n\t\r\n//*  // // //// // //// // //// // //// // //\r\n\t\r\n//*  // // //// // //// // //// // //// // //\r\n\t\r\n//*  // // //// // //// // //// // //// // //\r\n\t\r\n//*   CREATION OF LEADERBOARD\r\n\tcall CreateLeaderboardBJ(udg_AM_PG[1],\"T1 LEADERBOARD\")\r\n\tcall LeaderboardDisplayBJ(false,GetLastCreatedLeaderboard())\r\n\tset udg_AM_LB[1] = GetLastCreatedLeaderboard()\r\n\tcall CreateLeaderboardBJ(udg_AM_PG[2],\"T2 LEADERBOARD\")\r\n\tcall LeaderboardDisplayBJ(false,GetLastCreatedLeaderboard())\r\n\tset udg_AM_LB[2] = GetLastCreatedLeaderboard()\r\n\tcall ForForce(udg_AM_PG[1], function Trig_AMSettings_8)\r\n\r\n\tcall ForForce(udg_AM_PG[2], function Trig_AMSettings_9)\r\n\r\n\t\r\n//*   REDUCE MEMORY USAGE...\r\n\tcall DestroyTrigger(gg_trg_AMSettings)\r\nendfunction\r\n\r\n\r\n//****************************************************************************\r\nfunction InitTrig_AMSettings takes nothing returns nothing\r\n\tset gg_trg_AMSettings = CreateTrigger()\r\ncall TriggerRegisterTimerEventSingle(gg_trg_AMSettings,0.10) \r\n\tcall TriggerAddAction(gg_trg_AMSettings, function Trig_AMSettings_Actions)\r\nendfunction\r\n\r\n",
  "Events": [
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "0.10"
          }
        ],
        "value": "TriggerRegisterTimerEventSingle"
      }
    }
  ],
  "LocalVariables": [],
  "Conditions": [],
  "Actions": [
    {
      "ElementType": 9,
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
            "ParamType": 5,
            "value": "false"
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
            "value": "Gold"
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
            "value": "---------------------------"
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
            "value": "Setup Hero Icon"
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
            "value": "---------------------------"
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
            "value": "---------------------------"
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
            "value": "Strength 1x - 16 Heroes"
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
            "value": "---------------------------"
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
            "VariableId": 100663762,
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
            "value": "H00B"
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
            "VariableId": 100663762,
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
            "value": "O00Y"
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
            "VariableId": 100663762,
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
            "ParamType": 5,
            "value": "N016"
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
            "VariableId": 100663762,
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
            "ParamType": 5,
            "value": "H004"
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
            "VariableId": 100663762,
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
            "ParamType": 5,
            "value": "E002"
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
            "VariableId": 100663762,
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
            "ParamType": 5,
            "value": "H002"
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
            "VariableId": 100663762,
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
            "value": "O002"
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
            "VariableId": 100663762,
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
            "value": "O00L"
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
            "VariableId": 100663762,
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
            "value": "N01E"
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
            "VariableId": 100663762,
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
            "value": "N00Q"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "11"
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
            "value": "H00S"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "12"
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
            "value": "U001"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "13"
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
            "value": "H00Z"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "14"
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
            "value": "O005"
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
            "VariableId": 100663762,
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
            "ParamType": 5,
            "value": "H017"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "16"
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
            "value": "H01N"
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
            "value": "---------------------------"
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
            "value": "---------------------------"
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
            "VariableId": 100663758,
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNAvatarOn.blp"
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
            "VariableId": 100663758,
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroTaurenChieftain.blp"
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
            "VariableId": 100663758,
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
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNPitLord.blp"
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
            "VariableId": 100663758,
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
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroPaladin.blp"
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
            "VariableId": 100663758,
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
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNMountainGiant.blp"
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
            "VariableId": 100663758,
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
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNArthas.blp"
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
            "VariableId": 100663758,
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNChaosGrom.blp"
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
            "VariableId": 100663758,
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNBeastmaster.blp"
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
            "VariableId": 100663758,
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNPandarenBrewmaster.blp"
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
            "VariableId": 100663758,
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroAlchemist.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "11"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNTheCaptain.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "12"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNTichondrius.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "13"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNGarithos.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "14"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNChaosKotoBeast.blp"
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
            "VariableId": 100663758,
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
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNSeigeEngineWithMissles.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "16"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNGrunt.blp"
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
            "value": "---------------------------"
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
            "value": "Agility 3x - 14 Heroes"
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
            "value": "---------------------------"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "17"
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
            "value": "E003"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "18"
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
            "value": "H00A"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "19"
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
            "value": "U000"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "20"
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
            "value": "N00X"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "21"
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
            "value": "H00D"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "22"
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
            "value": "H005"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "23"
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
            "value": "E008"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "24"
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
            "value": "N00L"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "25"
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
            "value": "E00A"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "26"
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
            "value": "E00C"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "27"
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
            "value": "H00T"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "28"
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
            "value": "H000"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "29"
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
            "value": "O004"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "30"
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
            "value": "H011"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "31"
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
            "value": "H01R"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "32"
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
            "value": "E005"
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
            "value": "---------------------------"
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
            "value": "---------------------------"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "17"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNHuntress.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "18"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNSC2-Marine.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "19"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNBansheeRanger.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "20"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroAvatarOfFlame.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "21"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNProudmoore.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "22"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNShaman.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "23"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNWarden2.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "24"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNChaosBlademaster.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "25"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNPriestessOfTheMoon.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "26"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroDemonHunter.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "27"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNChaosWolfRider.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "28"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNSummonWaterElemental.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "29"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroBlademaster.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "30"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNGlaiveThrower.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "31"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNSylvanusWindrunner.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "32"
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
            "value": "war3mapImported\\BTNEvilKerrigan.tga"
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
            "value": "---------------------------"
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
            "value": "Intelligence 5x - 14 Heroes"
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
            "value": "---------------------------"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "33"
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
            "value": "H00J"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "34"
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
            "value": "O00U"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "35"
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
            "value": "U008"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "36"
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
            "value": "U003"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "37"
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
            "value": "H00K"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "38"
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
            "value": "O00G"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "39"
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
            "value": "E006"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "40"
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
            "value": "H008"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "41"
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
            "value": "H00Q"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "42"
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
            "value": "E00E"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "43"
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
            "value": "H00V"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "44"
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
            "value": "N012"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "45"
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
            "value": "H014"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "46"
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
            "value": "H00F"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "47"
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
            "value": "H01L"
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
            "VariableId": 100663762,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "48"
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
            "value": "H00L"
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
            "value": "---------------------------"
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
            "value": "---------------------------"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "33"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNMortarTeam.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "34"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNShadowHunter.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "35"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNLichVersion2.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "36"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroCryptLord.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "37"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNJaina.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "38"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNThrall.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "39"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNKeeperGhostBlue.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "40"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNBloodMage2.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "41"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNPriest.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "42"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNFurion.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "43"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNGhostMage.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "44"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroTinker.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "45"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNInfernalCannon.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "46"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroGriffonWarrior.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "47"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNFaerieDragon.blp"
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
            "VariableId": 100663758,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "48"
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
            "value": "ReplaceableTextures\\CommandButtons\\BTNDeepLordRevenant.blp"
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
            "value": "---------------------------------------------------------------------------------"
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
            "value": "---------------------------------------------------------------------------------"
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
            "VariableId": 100663763,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "0"
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
            "value": "48"
          }
        ],
        "value": "SetVariable"
      }
    },
    {
      "ElementType": 6,
      "Actions": [
        {
          "ElementType": 9,
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663761,
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
                "ParamType": 1,
                "parameters": [
                  {
                    "ParamType": 1,
                    "parameters": [
                      {
                        "ParamType": 1,
                        "parameters": [],
                        "value": "GetForLoopIndexA"
                      }
                    ],
                    "value": "ConvertedPlayer"
                  },
                  {
                    "ParamType": 2,
                    "value": "PlayerStateGold"
                  }
                ],
                "value": "GetPlayerState"
              }
            ],
            "value": "SetVariable"
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
            "value": "10"
          }
        ],
        "value": "ForLoopAMultiple"
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
            "ParamType": 5,
            "value": "Gems"
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
          },
          {
            "ParamType": 5,
            "value": "|c00FF0000Burning Legion|r"
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
          },
          {
            "ParamType": 5,
            "value": "|c0020C000The Lich King|r"
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
          },
          {
            "ParamType": 5,
            "value": "UI\\Feedback\\Resources\\ResourceGold.blp"
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
            "value": "2"
          },
          {
            "ParamType": 5,
            "value": "6"
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
                    "value": "GetForLoopIndexA"
                  }
                ],
                "value": "ConvertedPlayer"
              },
              {
                "ParamType": 3,
                "VariableId": 100663370,
                "arrayIndexValues": [
                  {
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
            "value": "ForceAddPlayerSimple"
          }
        ],
        "value": "ForLoopA"
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
            "ParamType": 5,
            "value": "12"
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
                    "value": "GetForLoopIndexA"
                  }
                ],
                "value": "ConvertedPlayer"
              },
              {
                "ParamType": 3,
                "VariableId": 100663786,
                "arrayIndexValues": [
                  {
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
            "value": "ForceAddPlayerSimple"
          }
        ],
        "value": "ForLoopA"
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
          },
          {
            "ParamType": 3,
            "VariableId": 100663370,
            "arrayIndexValues": [
              {
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
          },
          {
            "ParamType": 3,
            "VariableId": 100663786,
            "arrayIndexValues": [
              {
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
          },
          {
            "ParamType": 1,
            "parameters": [],
            "value": "GetPlayersAll"
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
            "VariableId": 100663776,
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
            "value": "|cffff0303"
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
            "VariableId": 100663776,
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
            "value": "|cff20c000"
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
            "VariableId": 100663775,
            "arrayIndexValues": [
              {
                "ParamType": 5,
                "value": "0"
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
            "value": "10"
          }
        ],
        "value": "SetVariable"
      }
    },
    {
      "ElementType": 6,
      "Actions": [
        {
          "ElementType": 9,
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663769,
                "arrayIndexValues": [
                  {
                    "ParamType": 5,
                    "value": "0"
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
                    "VariableId": 100663769,
                    "arrayIndexValues": [
                      {
                        "ParamType": 5,
                        "value": "0"
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
                    "value": "l"
                  }
                ],
                "value": "OperatorString"
              }
            ],
            "value": "SetVariable"
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
            "ParamType": 3,
            "VariableId": 100663775,
            "arrayIndexValues": [
              {
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
            "value": "// // //// // //// // //// // //// // //"
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
            "value": "// // //// // //// // //// // //// // //"
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
            "value": "// // //// // //// // //// // //// // //"
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
            "value": "// // //// // //// // //// // //// // //"
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
            "value": "PLEASE SEE THIS:"
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
            "value": " // PUT THE FOLLOWING ACTIONS INTO YOUR HERO CHOOSE TRIGGER"
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
            "value": " // AND ENABLE THE CURRENTLY DISABLED ACTION AFTER PLACING IT IN THE TRIGGER"
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
            "value": " // GO TO AMCreation and DELETE THE ACTION //PART 1// HERO ICON."
          }
        ],
        "value": "CommentString"
      }
    },
    {
      "ElementType": 5,
      "Actions": [
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
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663770,
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
                        "value": "GetUnitTypeId"
                      },
                      {
                        "ParamType": 2,
                        "value": "OperatorEqualENE"
                      },
                      {
                        "ParamType": 3,
                        "VariableId": 100663762,
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
                      }
                    ],
                    "value": "OperatorCompareUnitCode"
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
                        "VariableId": 100663759,
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
                        "parameters": [],
                        "value": "GetForLoopIndexA"
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
            }
          ],
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "48"
              },
              {
                "ParamType": 3,
                "VariableId": 100663763,
                "arrayIndexValues": [
                  {
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
            "value": "ForLoopAMultiple"
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
          "ElementType": 5,
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
                        "VariableId": 100663770,
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
                        "ParamType": 2,
                        "value": "OperatorNotEqualENE"
                      },
                      {
                        "ParamType": 2,
                        "value": "UnitNull"
                      }
                    ],
                    "value": "OperatorCompareUnit"
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
                        "ParamType": 3,
                        "VariableId": 100663758,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663759,
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
        }
      ],
      "Else": [
        {
          "ElementType": 5,
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
                        "VariableId": 100663770,
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
                        "ParamType": 2,
                        "value": "OperatorNotEqualENE"
                      },
                      {
                        "ParamType": 2,
                        "value": "UnitNull"
                      }
                    ],
                    "value": "OperatorCompareUnit"
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
                        "ParamType": 3,
                        "VariableId": 100663758,
                        "arrayIndexValues": [
                          {
                            "ParamType": 3,
                            "VariableId": 100663759,
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
            "value": "// // //// // //// // //// // //// // //"
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
            "value": "// // //// // //// // //// // //// // //"
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
            "value": "// // //// // //// // //// // //// // //"
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
            "value": "// // //// // //// // //// // //// // //"
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
            "value": " CREATION OF LEADERBOARD"
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
          },
          {
            "ParamType": 5,
            "value": "T1 LEADERBOARD"
          }
        ],
        "value": "CreateLeaderboardBJ"
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
            "value": "GetLastCreatedLeaderboard"
          }
        ],
        "value": "LeaderboardDisplayBJ"
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
          },
          {
            "ParamType": 1,
            "parameters": [],
            "value": "GetLastCreatedLeaderboard"
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
          },
          {
            "ParamType": 5,
            "value": "T2 LEADERBOARD"
          }
        ],
        "value": "CreateLeaderboardBJ"
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
            "value": "GetLastCreatedLeaderboard"
          }
        ],
        "value": "LeaderboardDisplayBJ"
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
          },
          {
            "ParamType": 1,
            "parameters": [],
            "value": "GetLastCreatedLeaderboard"
          }
        ],
        "value": "SetVariable"
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
                "value": "GetPlayerName"
              },
              {
                "ParamType": 5,
                "value": "0"
              }
            ],
            "value": "LeaderboardAddItemBJ"
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
                "value": "GetPlayerName"
              },
              {
                "ParamType": 5,
                "value": "0"
              }
            ],
            "value": "LeaderboardAddItemBJ"
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
            "value": "call DestroyTrigger(gg_trg_AMSettings)"
          }
        ],
        "value": "CustomScriptCode"
      }
    }
  ]
}