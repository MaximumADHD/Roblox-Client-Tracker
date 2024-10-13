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
  GETTABLEKS R2 R0 K9 ["Packages"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R2 K10 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Core"]
  GETTABLEKS R6 R7 K6 ["Util"]
  GETTABLEKS R5 R6 K11 ["DebugFlags"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K5 ["Core"]
  GETTABLEKS R5 R6 K12 ["Reducers"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K13 ["Assets"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R5 K14 ["Dialog"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R5 K15 ["Groups"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R5 K16 ["Autocomplete"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R5 K17 ["NetworkErrors"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R5 K18 ["PageInfo"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R5 K19 ["ReducerLogger"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R5 K20 ["Sound"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R5 K21 ["VotingReducer"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R5 K22 ["TutorialLimitsReducer"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R5 K23 ["LiveSearch"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R5 K24 ["Favorite"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R5 K25 ["RolesReducer"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R5 K26 ["ItemTagsReducer"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R5 K27 ["Purchase"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R5 K9 ["Packages"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R5 K28 ["TryInStudio"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R5 K29 ["HomeConfiguration"]
  CALL R23 1 1
  GETTABLEKS R24 R3 K30 ["combineReducers"]
  DUPTABLE R25 K48 [{"assets", "autocompleteResults", "dialog", "groups", "homeConfiguration", "networkErrors", "pageInfo", "sound", "voting", "liveSearch", "favorite", "roles", "itemTags", "purchase", "packages", "tryInStudio", "tutorialLimits"}]
  SETTABLEKS R6 R25 K31 ["assets"]
  SETTABLEKS R9 R25 K32 ["autocompleteResults"]
  SETTABLEKS R7 R25 K33 ["dialog"]
  MOVE R27 R1
  CALL R27 0 1
  JUMPIFNOT R27 [+2]
  MOVE R26 R8
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K34 ["groups"]
  SETTABLEKS R23 R25 K35 ["homeConfiguration"]
  SETTABLEKS R10 R25 K36 ["networkErrors"]
  SETTABLEKS R11 R25 K37 ["pageInfo"]
  SETTABLEKS R13 R25 K38 ["sound"]
  SETTABLEKS R14 R25 K39 ["voting"]
  SETTABLEKS R16 R25 K40 ["liveSearch"]
  SETTABLEKS R17 R25 K41 ["favorite"]
  SETTABLEKS R18 R25 K42 ["roles"]
  SETTABLEKS R19 R25 K43 ["itemTags"]
  SETTABLEKS R20 R25 K44 ["purchase"]
  SETTABLEKS R21 R25 K45 ["packages"]
  SETTABLEKS R22 R25 K46 ["tryInStudio"]
  SETTABLEKS R15 R25 K47 ["tutorialLimits"]
  CALL R24 1 1
  DUPCLOSURE R25 K49 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R24
  RETURN R25 1
