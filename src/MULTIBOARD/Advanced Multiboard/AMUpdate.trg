{
  "Id": 50332159,
  "Comment": "",
  "IsScript": true,
  "RunOnMapInit": false,
  "Script": "//* Trigger AMUpdate (V23.0 - CS Color Perfect Match)\r\n//****************************************************************************\r\n\r\nlibrary AMUpdateConfig\r\n    globals\r\n        // === COLUMNAS ===\r\n        public constant integer COL_ICON   = 0     \r\n        public constant integer COL_LEVEL  = 1     \r\n        public constant integer COL_KILLS  = 2     \r\n        public constant integer COL_DEATHS = 3     \r\n        public constant integer COL_CS     = 4     \r\n        public constant integer COL_HP_TXT = 5     \r\n        public constant integer COL_HP_BAR = 6     \r\n        public constant integer COL_GOLD   = 7     \r\n        \r\n        // === COLOR EXACTO DEL CS (Calculado de AMCreation: 30%, 65%, 80%) ===\r\n        public constant string COLOR_CS_EXACT = \"|cff4DA6CC\" \r\n        \r\n        // === ICONOS Y NOMBRES ===\r\n        public constant string NAME_BOSS_1 = \"|c00FF0000Legion|r\"\r\n        public constant string NAME_BOSS_2 = \"|c0020C000Lich King|r\"\r\n        public constant string ICON_BOSS_1 = \"ReplaceableTextures\\\\CommandButtons\\\\BTNArchimonde.blp\"\r\n        public constant string ICON_BOSS_2 = \"ReplaceableTextures\\\\CommandButtons\\\\BTNHeroDeathKnight.blp\"\r\n        public constant string ICON_ERROR  = \"ReplaceableTextures\\\\CommandButtons\\\\BTNPeasant.blp\"\r\n        public constant string BOSS_SLEEP_TEXT = \"|cff808080DURMIENDO|r\" \r\n        \r\n        // === TÍTULO ===\r\n        public constant string MAP_TITLE = \"Clash of Fire and Ice                         \"\r\n        public constant string TITLE_PADDING = \"                                        \" \r\n    endglobals\r\nendlibrary\r\n\r\nfunction If_Trig_AMUpdate_0 takes nothing returns boolean\r\n    return udg_AM_SHOW_OPPONENT_VALUE == true\r\nendfunction\r\n\r\n// === FUNCIONES AUXILIARES ===\r\nfunction GetHPBarString takes unit u returns string\r\n    local real lifePct\r\n    local integer bars\r\n    if u == null or GetUnitState(u, UNIT_STATE_LIFE) <= 0.405 then\r\n        return \"|cff808080[MUERTO]|r\"\r\n    endif\r\n    set lifePct = GetUnitLifePercent(u)\r\n    set bars = R2I((lifePct / 100.00) * I2R(udg_AM_BAR_COUNT))\r\n    if bars < 0 then \r\n        set bars = 0 \r\n    endif\r\n    if bars > udg_AM_BAR_COUNT then \r\n        set bars = udg_AM_BAR_COUNT \r\n    endif\r\n    return udg_AM_BAR_COLOUR[1] + SubStringBJ(udg_AM_BAR_STRING, 1, bars) + \"|r\" + udg_AM_BAR_COLOUR[2] + SubStringBJ(udg_AM_BAR_STRING, bars + 1, udg_AM_BAR_COUNT + 2) + \"|r [ \" + I2S(R2I(lifePct)) + \"% ]\"\r\nendfunction\r\n\r\nfunction GetBossHPString takes unit u returns string\r\n    local real lifePct\r\n    local integer bars\r\n    if u == null or GetUnitState(u, UNIT_STATE_LIFE) <= 0.405 then\r\n        return AMUpdateConfig_BOSS_SLEEP_TEXT\r\n    endif\r\n    set lifePct = GetUnitLifePercent(u)\r\n    set bars = R2I((lifePct / 100.00) * I2R(udg_AM_BAR_COUNT))\r\n    if bars < 0 then \r\n        set bars = 0 \r\n    endif\r\n    if bars > udg_AM_BAR_COUNT then \r\n        set bars = udg_AM_BAR_COUNT \r\n    endif\r\n    return udg_AM_BAR_COLOUR[1] + SubStringBJ(udg_AM_BAR_STRING, 1, bars) + \"|r\" + udg_AM_BAR_COLOUR[2] + SubStringBJ(udg_AM_BAR_STRING, bars + 1, udg_AM_BAR_COUNT + 2) + \"|r [ \" + I2S(R2I(lifePct)) + \"% ]\"\r\nendfunction\r\n\r\nfunction FixHeroIconIndex takes integer pID, unit hero returns nothing\r\n    local integer i = 1\r\n    local integer typeID\r\n    if hero == null then\r\n        return\r\n    endif\r\n    set typeID = GetUnitTypeId(hero)\r\n    if udg_AM_PLAYER_HERO_ICON_PATH[pID] > 0 then\r\n        if udg_AM_HERO_TYPE[udg_AM_PLAYER_HERO_ICON_PATH[pID]] == typeID then\r\n            return \r\n        endif\r\n    endif\r\n    loop\r\n        exitwhen i > 48 \r\n        if udg_AM_HERO_TYPE[i] == typeID then\r\n            set udg_AM_PLAYER_HERO_ICON_PATH[pID] = i\r\n            return \r\n        endif\r\n        set i = i + 1\r\n    endloop\r\nendfunction\r\n\r\n// === HEADER INTERMEDIO (CORREGIDO COLOR CS) ===\r\nfunction UpdateMiddleHeader takes integer boardIndex, integer row returns nothing\r\n    local multiboarditem mbItem\r\n    local multiboard mb = udg_AM_MB[boardIndex]\r\n    \r\n    if mb == null or (row - 1) >= MultiboardGetRowCount(mb) then\r\n        return \r\n    endif\r\n\r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_LEVEL)\r\n    call MultiboardSetItemValue(mbItem, \"|cff808080L|r\")\r\n    call MultiboardSetItemStyle(mbItem, true, false)\r\n    call MultiboardReleaseItem(mbItem)\r\n\r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_KILLS)\r\n    call MultiboardSetItemValue(mbItem, \"|c00FF0303K|r\")\r\n    call MultiboardSetItemStyle(mbItem, true, false)\r\n    call MultiboardReleaseItem(mbItem)\r\n\r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_DEATHS)\r\n    call MultiboardSetItemValue(mbItem, \"|c0020C000D|r\")\r\n    call MultiboardSetItemStyle(mbItem, true, false)\r\n    call MultiboardReleaseItem(mbItem)\r\n\r\n    // CS CORREGIDO (Usa la variable COLOR_CS_EXACT)\r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_CS)\r\n    call MultiboardSetItemValue(mbItem, AMUpdateConfig_COLOR_CS_EXACT + \"CS|r\")\r\n    call MultiboardSetItemStyle(mbItem, true, false)\r\n    call MultiboardReleaseItem(mbItem)\r\n\r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_HP_TXT)\r\n    call MultiboardSetItemValue(mbItem, \"|c00E55BB0HP / MHP|r\")\r\n    call MultiboardSetItemStyle(mbItem, true, false)\r\n    call MultiboardReleaseItem(mbItem)\r\n    \r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_GOLD)\r\n    call MultiboardSetItemStyle(mbItem, true, true)\r\n    call MultiboardSetItemIcon(mbItem, \"UI\\\\Feedback\\\\Resources\\\\ResourceGold.blp\")\r\n    call MultiboardReleaseItem(mbItem)\r\n    \r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_ICON)\r\n    call MultiboardSetItemValue(mbItem, \"\")\r\n    call MultiboardSetItemStyle(mbItem, false, false) \r\n    call MultiboardReleaseItem(mbItem)\r\n    \r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_HP_BAR)\r\n    call MultiboardSetItemValue(mbItem, \"\")\r\n    call MultiboardSetItemStyle(mbItem, false, false)\r\n    call MultiboardReleaseItem(mbItem)\r\nendfunction\r\n\r\n// === ACTUALIZAR JUGADORES ===\r\nfunction Trig_AMUpdate_Player takes nothing returns nothing\r\n    local integer pID = GetConvertedPlayerId(GetEnumPlayer())\r\n    local unit hero = udg_AM_CHOSEN_HERO[pID]\r\n    local integer row\r\n    local multiboarditem mbItem\r\n    local integer currentBoard = bj_forLoopAIndex\r\n    local string finalIconPath\r\n    local multiboard mb = udg_AM_MB[currentBoard]\r\n    \r\n    if mb == null then\r\n        return\r\n    endif\r\n    \r\n    set udg_AM_PLAYER_VALUE[pID] = GetPlayerState(GetEnumPlayer(), PLAYER_STATE_RESOURCE_GOLD)\r\n    \r\n    if (IsPlayerInForce(GetEnumPlayer(), udg_AM_PG[1])) then\r\n         set row = (LeaderboardGetPlayerIndexBJ(GetEnumPlayer(), udg_AM_LB[1]) + 2)\r\n    else\r\n         set row = (LeaderboardGetPlayerIndexBJ(GetEnumPlayer(), udg_AM_LB[2]) + (CountPlayersInForceBJ(udg_AM_PG[1]) + 4))\r\n    endif\r\n    \r\n    if row - 1 >= MultiboardGetRowCount(mb) then\r\n        return\r\n    endif\r\n    \r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_GOLD)\r\n    call MultiboardSetItemValue(mbItem, I2S(udg_AM_PLAYER_VALUE[pID]))\r\n    call MultiboardReleaseItem(mbItem)\r\n    \r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_KILLS)\r\n    call MultiboardSetItemValue(mbItem, I2S(udg_AM_HERO_KILLS[pID]))\r\n    call MultiboardReleaseItem(mbItem)\r\n\r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_DEATHS)\r\n    call MultiboardSetItemValue(mbItem, I2S(udg_AM_HERO_DEATHS[pID]))\r\n    call MultiboardReleaseItem(mbItem)\r\n\r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_CS)\r\n    call MultiboardSetItemValue(mbItem, I2S(udg_AM_CREEP_KILLS[pID]) + \"/\" + I2S(udg_AM_CREEP_DENIES[pID]))\r\n    call MultiboardReleaseItem(mbItem)\r\n    \r\n    if hero != null then\r\n        call FixHeroIconIndex(pID, hero)\r\n        \r\n        set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_LEVEL)\r\n        call MultiboardSetItemValue(mbItem, I2S(GetHeroLevel(hero)))\r\n        call MultiboardReleaseItem(mbItem)\r\n\r\n        set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_HP_TXT)\r\n        call MultiboardSetItemValue(mbItem, I2S(R2I(GetUnitState(hero, UNIT_STATE_LIFE))) + \"/\" + I2S(R2I(GetUnitState(hero, UNIT_STATE_MAX_LIFE))))\r\n        call MultiboardReleaseItem(mbItem)\r\n        \r\n        set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_HP_BAR)\r\n        call MultiboardSetItemValue(mbItem, GetHPBarString(hero))\r\n        call MultiboardReleaseItem(mbItem)\r\n        \r\n        set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_ICON)\r\n        call MultiboardSetItemStyle(mbItem, true, true)\r\n        if udg_AM_PLAYER_HERO_ICON_PATH[pID] > 0 and udg_AM_HERO_ICON_PATH[udg_AM_PLAYER_HERO_ICON_PATH[pID]] != null then\r\n            set finalIconPath = udg_AM_HERO_ICON_PATH[udg_AM_PLAYER_HERO_ICON_PATH[pID]]\r\n        else\r\n            set finalIconPath = AMUpdateConfig_ICON_ERROR\r\n        endif\r\n        call MultiboardSetItemIcon(mbItem, finalIconPath)\r\n        call MultiboardReleaseItem(mbItem)\r\n    endif\r\n    set hero = null\r\n    set mbItem = null\r\nendfunction\r\n\r\n// === ACTUALIZAR BOSS (CORREGIDO COLOR CS) ===\r\nfunction UpdateBossRow takes integer boardIndex, integer row, unit boss, string bossName, string iconPath, integer tGold, integer tKills, integer tDeaths, integer tCS, integer tDenies returns nothing\r\n    local multiboarditem mbItem\r\n    local multiboard mb = udg_AM_MB[boardIndex]\r\n    \r\n    if mb == null or (row - 1) >= MultiboardGetRowCount(mb) then\r\n        return \r\n    endif\r\n\r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_ICON)\r\n    call MultiboardSetItemStyle(mbItem, true, true)\r\n    call MultiboardSetItemValue(mbItem, bossName)\r\n    call MultiboardSetItemIcon(mbItem, iconPath)\r\n    call MultiboardReleaseItem(mbItem)\r\n\r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_HP_TXT)\r\n    call MultiboardSetItemStyle(mbItem, true, false)\r\n    if boss != null and GetUnitState(boss, UNIT_STATE_LIFE) > 0.405 then\r\n        call MultiboardSetItemValue(mbItem, I2S(R2I(GetUnitState(boss, UNIT_STATE_LIFE))) + \"/\" + I2S(R2I(GetUnitState(boss, UNIT_STATE_MAX_LIFE))))\r\n    else\r\n        call MultiboardSetItemValue(mbItem, \"\") \r\n    endif\r\n    call MultiboardReleaseItem(mbItem)\r\n\r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_HP_BAR)\r\n    call MultiboardSetItemStyle(mbItem, true, false)\r\n    call MultiboardSetItemValue(mbItem, GetBossHPString(boss))\r\n    call MultiboardReleaseItem(mbItem)\r\n    \r\n    // Totales Equipo\r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_GOLD)\r\n    call MultiboardSetItemStyle(mbItem, true, false)\r\n    call MultiboardSetItemValue(mbItem, \"|cffffcc00\" + I2S(tGold) + \"|r\")\r\n    call MultiboardReleaseItem(mbItem)\r\n    \r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_KILLS)\r\n    call MultiboardSetItemValue(mbItem, \"|c00FF0303\" + I2S(tKills) + \"|r\")\r\n    call MultiboardReleaseItem(mbItem)\r\n    \r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_DEATHS)\r\n    call MultiboardSetItemValue(mbItem, \"|c00999999\" + I2S(tDeaths) + \"|r\")\r\n    call MultiboardReleaseItem(mbItem)\r\n    \r\n    // CS CORREGIDO (Usa la variable COLOR_CS_EXACT)\r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_CS)\r\n    call MultiboardSetItemValue(mbItem, AMUpdateConfig_COLOR_CS_EXACT + I2S(tCS) + \"/\" + I2S(tDenies) + \"|r\")\r\n    call MultiboardReleaseItem(mbItem)\r\n    \r\n    set mbItem = MultiboardGetItem(mb, row - 1, AMUpdateConfig_COL_LEVEL)\r\n    call MultiboardSetItemValue(mbItem, \"\")\r\n    call MultiboardReleaseItem(mbItem)\r\nendfunction\r\n\r\n// === LOOP PRINCIPAL ===\r\nfunction Trig_AMUpdate_Actions takes nothing returns nothing\r\n    local integer rowTeam1 = 2 \r\n    local integer rowTeam2 = (CountPlayersInForceBJ(udg_AM_PG[1]) + 4) \r\n    local string titleString\r\n    local integer i = 0\r\n    local integer pID\r\n    local player p\r\n    \r\n    local integer goldT1 = 0\r\n    local integer killsT1 = 0\r\n    local integer deathsT1 = 0\r\n    local integer csT1 = 0\r\n    local integer deniesT1 = 0\r\n    local integer goldT2 = 0\r\n    local integer killsT2 = 0\r\n    local integer deathsT2 = 0\r\n    local integer csT2 = 0\r\n    local integer deniesT2 = 0\r\n    \r\n    loop\r\n        exitwhen i > 11 \r\n        set p = Player(i)\r\n        set pID = i + 1 \r\n        if GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING then\r\n            if IsPlayerInForce(p, udg_AM_PG[1]) then\r\n                set goldT1 = goldT1 + GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)\r\n                set killsT1 = killsT1 + udg_AM_HERO_KILLS[pID]\r\n                set deathsT1 = deathsT1 + udg_AM_HERO_DEATHS[pID]\r\n                set csT1 = csT1 + udg_AM_CREEP_KILLS[pID]\r\n                set deniesT1 = deniesT1 + udg_AM_CREEP_DENIES[pID]\r\n            else\r\n                if IsPlayerInForce(p, udg_AM_PG[2]) then\r\n                    set goldT2 = goldT2 + GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)\r\n                    set killsT2 = killsT2 + udg_AM_HERO_KILLS[pID]\r\n                    set deathsT2 = deathsT2 + udg_AM_HERO_DEATHS[pID]\r\n                    set csT2 = csT2 + udg_AM_CREEP_KILLS[pID]\r\n                    set deniesT2 = deniesT2 + udg_AM_CREEP_DENIES[pID]\r\n                endif\r\n            endif\r\n        endif\r\n        set i = i + 1\r\n    endloop\r\n    set p = null\r\n\r\n    set titleString = AMUpdateConfig_TITLE_PADDING + AMUpdateConfig_MAP_TITLE + \"     |     Gems: |c00FF0303\" + I2S(udg_Game_Doubloons_Fire) + \"|r : |c0020C000\" + I2S(udg_Game_Doubloons_Ice) + \"|r\"\r\n\r\n    set bj_forLoopAIndex = 1 \r\n    set bj_forLoopAIndexEnd = 2 \r\n\r\n    loop\r\n        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd\r\n        \r\n        if udg_AM_MB[bj_forLoopAIndex] != null then\r\n            call MultiboardSetTitleText(udg_AM_MB[bj_forLoopAIndex], titleString)\r\n            \r\n            call UpdateBossRow(bj_forLoopAIndex, rowTeam1, udg_Game_Boss_Kiljaeden, AMUpdateConfig_NAME_BOSS_1, AMUpdateConfig_ICON_BOSS_1, goldT1, killsT1, deathsT1, csT1, deniesT1)\r\n            call UpdateMiddleHeader(bj_forLoopAIndex, rowTeam2 - 1)\r\n            call UpdateBossRow(bj_forLoopAIndex, rowTeam2, udg_Game_Boss_Arthas, AMUpdateConfig_NAME_BOSS_2, AMUpdateConfig_ICON_BOSS_2, goldT2, killsT2, deathsT2, csT2, deniesT2)\r\n        endif\r\n\r\n        call ForForce(udg_AM_PG[1], function Trig_AMUpdate_Player)\r\n        call ForForce(udg_AM_PG[2], function Trig_AMUpdate_Player)\r\n\r\n        set bj_forLoopAIndex = bj_forLoopAIndex + 1\r\n    endloop\r\nendfunction\r\n\r\n//****************************************************************************\r\nfunction InitTrig_AMUpdate takes nothing returns nothing\r\n    set gg_trg_AMUpdate = CreateTrigger()\r\n    call TriggerRegisterTimerEventPeriodic(gg_trg_AMUpdate, 1.00) \r\n    call TimerStart(CreateTimer(), 0.05, false, function Trig_AMUpdate_Actions)\r\n    call DisableTrigger(gg_trg_AMUpdate) \r\n    call TriggerAddAction(gg_trg_AMUpdate, function Trig_AMUpdate_Actions)\r\nendfunction",
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
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": " // TIME"
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
            "value": " // VALUE"
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
            "value": " // HP"
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
                            "value": "GetUnitStateSwap"
                          }
                        ],
                        "value": "R2I"
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
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 2,
                                    "value": "UnitStateMaxLife"
                                  },
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
                                "value": "GetUnitStateSwap"
                              }
                            ],
                            "value": "R2I"
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
          "ElementType": 9,
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663774,
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
                    "value": "GetUnitLifePercent"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorDivide"
                  },
                  {
                    "ParamType": 5,
                    "value": "100.00"
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
                "VariableId": 100663771,
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
                        "ParamType": 3,
                        "VariableId": 100663774,
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
                        "value": "OperatorMultiply"
                      },
                      {
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
                          }
                        ],
                        "value": "I2R"
                      }
                    ],
                    "value": "OperatorReal"
                  }
                ],
                "value": "R2I"
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
                "value": "7"
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
                    "ParamType": 1,
                    "parameters": [
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
                            "value": "1"
                          },
                          {
                            "ParamType": 3,
                            "VariableId": 100663771,
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
                        "value": "SubStringBJ"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "|r"
                          },
                          {
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
                                "ParamType": 1,
                                "parameters": [
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
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663771,
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
                                            "value": "OperatorAdd"
                                          },
                                          {
                                            "ParamType": 5,
                                            "value": "1"
                                          }
                                        ],
                                        "value": "OperatorInt"
                                      },
                                      {
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
                                            "ParamType": 2,
                                            "value": "OperatorAdd"
                                          },
                                          {
                                            "ParamType": 5,
                                            "value": "2"
                                          }
                                        ],
                                        "value": "OperatorInt"
                                      }
                                    ],
                                    "value": "SubStringBJ"
                                  },
                                  {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "|r [ "
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
                                            "value": "% ]"
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
                            "value": "GetUnitStateSwap"
                          }
                        ],
                        "value": "R2I"
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
                                "ParamType": 1,
                                "parameters": [
                                  {
                                    "ParamType": 2,
                                    "value": "UnitStateMaxLife"
                                  },
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
                                "value": "GetUnitStateSwap"
                              }
                            ],
                            "value": "R2I"
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
          "ElementType": 9,
          "isEnabled": true,
          "function": {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 3,
                "VariableId": 100663774,
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
                    "value": "GetUnitLifePercent"
                  },
                  {
                    "ParamType": 2,
                    "value": "OperatorDivide"
                  },
                  {
                    "ParamType": 5,
                    "value": "100.00"
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
                "VariableId": 100663771,
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
                        "ParamType": 3,
                        "VariableId": 100663774,
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
                        "value": "OperatorMultiply"
                      },
                      {
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
                          }
                        ],
                        "value": "I2R"
                      }
                    ],
                    "value": "OperatorReal"
                  }
                ],
                "value": "R2I"
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
                "value": "7"
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
                    "ParamType": 1,
                    "parameters": [
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
                            "value": "1"
                          },
                          {
                            "ParamType": 3,
                            "VariableId": 100663771,
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
                        "value": "SubStringBJ"
                      },
                      {
                        "ParamType": 1,
                        "parameters": [
                          {
                            "ParamType": 5,
                            "value": "|r"
                          },
                          {
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
                                "ParamType": 1,
                                "parameters": [
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
                                        "ParamType": 1,
                                        "parameters": [
                                          {
                                            "ParamType": 3,
                                            "VariableId": 100663771,
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
                                            "value": "OperatorAdd"
                                          },
                                          {
                                            "ParamType": 5,
                                            "value": "1"
                                          }
                                        ],
                                        "value": "OperatorInt"
                                      },
                                      {
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
                                            "ParamType": 2,
                                            "value": "OperatorAdd"
                                          },
                                          {
                                            "ParamType": 5,
                                            "value": "2"
                                          }
                                        ],
                                        "value": "OperatorInt"
                                      }
                                    ],
                                    "value": "SubStringBJ"
                                  },
                                  {
                                    "ParamType": 1,
                                    "parameters": [
                                      {
                                        "ParamType": 5,
                                        "value": "|r [ "
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
                                            "value": "% ]"
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
            "value": " // // // // // // // // // // // // // // // //"
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
            "value": " // // // // // // // // // // // // // // // //"
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
            "value": " // // // // // // // // // // // // // // // //"
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
            "value": "// PART 1 // HERO ICON. "
          }
        ],
        "value": "CommentString"
      }
    },
    {
      "ElementType": 6,
      "Actions": [
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
        },
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
        "parameters": [
          {
            "ParamType": 5,
            "value": "1"
          },
          {
            "ParamType": 5,
            "value": "48"
          }
        ],
        "value": "ForLoopAMultiple"
      }
    }
  ]
}