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
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagRemoveItemTags"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K11 ["Packages"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R3 K12 ["Rodux"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K5 ["Core"]
  GETTABLEKS R7 R8 K6 ["Util"]
  GETTABLEKS R6 R7 K13 ["DebugFlags"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K5 ["Core"]
  GETTABLEKS R6 R7 K14 ["Reducers"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R6 K15 ["Assets"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R6 K16 ["Dialog"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R6 K17 ["Groups"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R6 K18 ["Autocomplete"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R6 K19 ["NetworkErrors"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R6 K20 ["PageInfo"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R6 K21 ["ReducerLogger"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R6 K22 ["Sound"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R6 K23 ["VotingReducer"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R6 K24 ["TutorialLimitsReducer"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R6 K25 ["LiveSearch"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R6 K26 ["Favorite"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R6 K27 ["RolesReducer"]
  CALL R19 1 1
  MOVE R21 R2
  CALL R21 0 1
  JUMPIFNOT R21 [+2]
  LOADNIL R20
  JUMP [+5]
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R6 K28 ["ItemTagsReducer"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R6 K29 ["Purchase"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R6 K11 ["Packages"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R6 K30 ["TryInStudio"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R25 R6 K31 ["HomeConfiguration"]
  CALL R24 1 1
  GETTABLEKS R25 R4 K32 ["combineReducers"]
  DUPTABLE R26 K50 [{"assets", "autocompleteResults", "dialog", "groups", "homeConfiguration", "networkErrors", "pageInfo", "sound", "voting", "liveSearch", "favorite", "roles", "itemTags", "purchase", "packages", "tryInStudio", "tutorialLimits"}]
  SETTABLEKS R7 R26 K33 ["assets"]
  SETTABLEKS R10 R26 K34 ["autocompleteResults"]
  SETTABLEKS R8 R26 K35 ["dialog"]
  MOVE R28 R1
  CALL R28 0 1
  JUMPIFNOT R28 [+2]
  MOVE R27 R9
  JUMP [+1]
  LOADNIL R27
  SETTABLEKS R27 R26 K36 ["groups"]
  SETTABLEKS R24 R26 K37 ["homeConfiguration"]
  SETTABLEKS R11 R26 K38 ["networkErrors"]
  SETTABLEKS R12 R26 K39 ["pageInfo"]
  SETTABLEKS R14 R26 K40 ["sound"]
  SETTABLEKS R15 R26 K41 ["voting"]
  SETTABLEKS R17 R26 K42 ["liveSearch"]
  SETTABLEKS R18 R26 K43 ["favorite"]
  SETTABLEKS R19 R26 K44 ["roles"]
  MOVE R28 R2
  CALL R28 0 1
  JUMPIFNOT R28 [+2]
  LOADNIL R27
  JUMP [+1]
  MOVE R27 R20
  SETTABLEKS R27 R26 K45 ["itemTags"]
  SETTABLEKS R21 R26 K46 ["purchase"]
  SETTABLEKS R22 R26 K47 ["packages"]
  SETTABLEKS R23 R26 K48 ["tryInStudio"]
  SETTABLEKS R16 R26 K49 ["tutorialLimits"]
  CALL R25 1 1
  DUPCLOSURE R26 K51 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R13
  CAPTURE VAL R25
  RETURN R26 1
