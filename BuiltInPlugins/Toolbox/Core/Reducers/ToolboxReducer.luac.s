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
  GETTABLEKS R3 R4 K9 ["getFFlagToolboxSeparatePurchaseStatusDialogsFromAssetPreview"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K10 ["Packages"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R3 K11 ["Rodux"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K5 ["Core"]
  GETTABLEKS R7 R8 K6 ["Util"]
  GETTABLEKS R6 R7 K12 ["DebugFlags"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K5 ["Core"]
  GETTABLEKS R6 R7 K13 ["Reducers"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R6 K14 ["Assets"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R6 K15 ["ContextualAssetsReducer"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R6 K16 ["Dialog"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R6 K17 ["Groups"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R6 K18 ["Autocomplete"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R6 K19 ["NetworkErrors"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R6 K20 ["PageInfo"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R6 K21 ["ReducerLogger"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R6 K22 ["Sound"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R6 K23 ["VotingReducer"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R6 K24 ["TutorialLimitsReducer"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R6 K25 ["LiveSearch"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R6 K26 ["Favorite"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R6 K27 ["RolesReducer"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R6 K28 ["ItemTagsReducer"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R6 K29 ["Purchase"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R6 K10 ["Packages"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R25 R6 K30 ["TryInStudio"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R26 R6 K31 ["HomeConfiguration"]
  CALL R25 1 1
  GETTABLEKS R26 R4 K32 ["combineReducers"]
  DUPTABLE R27 K51 [{"assets", "autocompleteResults", "contextualAssets", "dialog", "groups", "homeConfiguration", "networkErrors", "pageInfo", "sound", "voting", "liveSearch", "favorite", "roles", "itemTags", "purchase", "packages", "tryInStudio", "tutorialLimits"}]
  SETTABLEKS R7 R27 K33 ["assets"]
  SETTABLEKS R11 R27 K34 ["autocompleteResults"]
  SETTABLEKS R8 R27 K35 ["contextualAssets"]
  MOVE R29 R2
  CALL R29 0 1
  JUMPIFNOT R29 [+2]
  MOVE R28 R9
  JUMP [+1]
  LOADNIL R28
  SETTABLEKS R28 R27 K36 ["dialog"]
  MOVE R29 R1
  CALL R29 0 1
  JUMPIFNOT R29 [+2]
  MOVE R28 R10
  JUMP [+1]
  LOADNIL R28
  SETTABLEKS R28 R27 K37 ["groups"]
  SETTABLEKS R25 R27 K38 ["homeConfiguration"]
  SETTABLEKS R12 R27 K39 ["networkErrors"]
  SETTABLEKS R13 R27 K40 ["pageInfo"]
  SETTABLEKS R15 R27 K41 ["sound"]
  SETTABLEKS R16 R27 K42 ["voting"]
  SETTABLEKS R18 R27 K43 ["liveSearch"]
  SETTABLEKS R19 R27 K44 ["favorite"]
  SETTABLEKS R20 R27 K45 ["roles"]
  SETTABLEKS R21 R27 K46 ["itemTags"]
  SETTABLEKS R22 R27 K47 ["purchase"]
  SETTABLEKS R23 R27 K48 ["packages"]
  SETTABLEKS R24 R27 K49 ["tryInStudio"]
  SETTABLEKS R17 R27 K50 ["tutorialLimits"]
  CALL R26 1 1
  DUPCLOSURE R27 K52 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R14
  CAPTURE VAL R26
  RETURN R27 1
