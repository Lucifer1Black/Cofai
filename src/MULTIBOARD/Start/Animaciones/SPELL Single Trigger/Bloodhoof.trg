{
  "Id": 50331960,
  "Comment": "",
  "IsScript": false,
  "RunOnMapInit": false,
  "Script": "",
  "Events": [],
  "LocalVariables": [],
  "Conditions": [
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 1,
            "parameters": [],
            "value": "GetLearnedSkillBJ"
          },
          {
            "ParamType": 2,
            "value": "OperatorEqualENE"
          },
          {
            "ParamType": 5,
            "value": "A0AZ"
          }
        ],
        "value": "OperatorCompareHeroSkill"
      }
    }
  ],
  "Actions": [
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "R002"
          },
          {
            "ParamType": 1,
            "parameters": [
              {
                "ParamType": 5,
                "value": "A0AZ"
              },
              {
                "ParamType": 1,
                "parameters": [],
                "value": "GetTriggerUnit"
              }
            ],
            "value": "GetUnitAbilityLevelSwapped"
          },
          {
            "ParamType": 1,
            "parameters": [],
            "value": "GetTriggerPlayer"
          }
        ],
        "value": "SetPlayerTechResearchedSwap"
      }
    }
  ]
}