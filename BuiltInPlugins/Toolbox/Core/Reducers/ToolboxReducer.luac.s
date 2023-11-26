PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["shouldDebugState"]
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1
  GETUPVAL R2 2
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K6 ["Util"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFFlagToolboxEnableSearchOptionsRefactor"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R6 R0 K5 ["Core"]
  GETTABLEKS R5 R6 K6 ["Util"]
  GETTABLEKS R4 R5 K7 ["SharedFlags"]
  GETTABLEKS R3 R4 K9 ["getFFlagToolboxTutorialLimits"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R7 R0 K5 ["Core"]
  GETTABLEKS R6 R7 K6 ["Util"]
  GETTABLEKS R5 R6 K7 ["SharedFlags"]
  GETTABLEKS R4 R5 K10 ["getFFlagToolboxContextualRecommendations"]
  CALL R3 1 1
  GETTABLEKS R4 R0 K11 ["Packages"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R4 K12 ["Rodux"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K5 ["Core"]
  GETTABLEKS R8 R9 K6 ["Util"]
  GETTABLEKS R7 R8 K13 ["DebugFlags"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K5 ["Core"]
  GETTABLEKS R7 R8 K14 ["Reducers"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R7 K15 ["Assets"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R7 K16 ["ContextualAssetsReducer"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R7 K17 ["Groups"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R7 K18 ["Autocomplete"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R7 K19 ["NetworkErrors"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R7 K20 ["PageInfo"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R7 K21 ["ReducerLogger"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R7 K22 ["Sound"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R7 K23 ["VotingReducer"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R7 K24 ["TutorialLimitsReducer"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R7 K25 ["LiveSearch"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R7 K26 ["Favorite"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R7 K27 ["RolesReducer"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R7 K28 ["ItemTagsReducer"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R7 K29 ["Purchase"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R7 K11 ["Packages"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R25 R7 K30 ["TryInStudio"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R26 R7 K31 ["HomeConfiguration"]
  CALL R25 1 1
  GETTABLEKS R26 R5 K32 ["combineReducers"]
  DUPTABLE R27 K50 [{"assets", "autocompleteResults", "contextualAssets", "groups", "homeConfiguration", "networkErrors", "pageInfo", "sound", "voting", "liveSearch", "favorite", "roles", "itemTags", "purchase", "packages", "tryInStudio", "tutorialLimits"}]
  SETTABLEKS R8 R27 K33 ["assets"]
  SETTABLEKS R11 R27 K34 ["autocompleteResults"]
  MOVE R29 R3
  CALL R29 0 1
  JUMPIFNOT R29 [+2]
  MOVE R28 R9
  JUMP [+1]
  LOADNIL R28
  SETTABLEKS R28 R27 K35 ["contextualAssets"]
  MOVE R29 R1
  CALL R29 0 1
  JUMPIFNOT R29 [+2]
  MOVE R28 R10
  JUMP [+1]
  LOADNIL R28
  SETTABLEKS R28 R27 K36 ["groups"]
  SETTABLEKS R25 R27 K37 ["homeConfiguration"]
  SETTABLEKS R12 R27 K38 ["networkErrors"]
  SETTABLEKS R13 R27 K39 ["pageInfo"]
  SETTABLEKS R15 R27 K40 ["sound"]
  SETTABLEKS R16 R27 K41 ["voting"]
  SETTABLEKS R18 R27 K42 ["liveSearch"]
  SETTABLEKS R19 R27 K43 ["favorite"]
  SETTABLEKS R20 R27 K44 ["roles"]
  SETTABLEKS R21 R27 K45 ["itemTags"]
  SETTABLEKS R22 R27 K46 ["purchase"]
  SETTABLEKS R23 R27 K47 ["packages"]
  SETTABLEKS R24 R27 K48 ["tryInStudio"]
  MOVE R29 R2
  CALL R29 0 1
  JUMPIFNOT R29 [+2]
  MOVE R28 R17
  JUMP [+1]
  LOADNIL R28
  SETTABLEKS R28 R27 K49 ["tutorialLimits"]
  CALL R26 1 1
  DUPCLOSURE R27 K51 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R14
  CAPTURE VAL R26
  RETURN R27 1
