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
  GETTABLEKS R3 R4 K9 ["getFFlagToolboxContextualRecommendations"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R7 R0 K5 ["Core"]
  GETTABLEKS R6 R7 K6 ["Util"]
  GETTABLEKS R5 R6 K7 ["SharedFlags"]
  GETTABLEKS R4 R5 K10 ["getFFlagToolboxSeparatePurchaseStatusDialogsFromAssetPreview"]
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
  GETTABLEKS R11 R7 K17 ["Dialog"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R7 K18 ["Groups"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R7 K19 ["Autocomplete"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R7 K20 ["NetworkErrors"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R7 K21 ["PageInfo"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R7 K22 ["ReducerLogger"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R7 K23 ["Sound"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R7 K24 ["VotingReducer"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R7 K25 ["TutorialLimitsReducer"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R7 K26 ["LiveSearch"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R7 K27 ["Favorite"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R7 K28 ["RolesReducer"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R7 K29 ["ItemTagsReducer"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R7 K30 ["Purchase"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R25 R7 K11 ["Packages"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R26 R7 K31 ["TryInStudio"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R27 R7 K32 ["HomeConfiguration"]
  CALL R26 1 1
  GETTABLEKS R27 R5 K33 ["combineReducers"]
  DUPTABLE R28 K52 [{"assets", "autocompleteResults", "contextualAssets", "dialog", "groups", "homeConfiguration", "networkErrors", "pageInfo", "sound", "voting", "liveSearch", "favorite", "roles", "itemTags", "purchase", "packages", "tryInStudio", "tutorialLimits"}]
  SETTABLEKS R8 R28 K34 ["assets"]
  SETTABLEKS R12 R28 K35 ["autocompleteResults"]
  MOVE R30 R2
  CALL R30 0 1
  JUMPIFNOT R30 [+2]
  MOVE R29 R9
  JUMP [+1]
  LOADNIL R29
  SETTABLEKS R29 R28 K36 ["contextualAssets"]
  MOVE R30 R3
  CALL R30 0 1
  JUMPIFNOT R30 [+2]
  MOVE R29 R10
  JUMP [+1]
  LOADNIL R29
  SETTABLEKS R29 R28 K37 ["dialog"]
  MOVE R30 R1
  CALL R30 0 1
  JUMPIFNOT R30 [+2]
  MOVE R29 R11
  JUMP [+1]
  LOADNIL R29
  SETTABLEKS R29 R28 K38 ["groups"]
  SETTABLEKS R26 R28 K39 ["homeConfiguration"]
  SETTABLEKS R13 R28 K40 ["networkErrors"]
  SETTABLEKS R14 R28 K41 ["pageInfo"]
  SETTABLEKS R16 R28 K42 ["sound"]
  SETTABLEKS R17 R28 K43 ["voting"]
  SETTABLEKS R19 R28 K44 ["liveSearch"]
  SETTABLEKS R20 R28 K45 ["favorite"]
  SETTABLEKS R21 R28 K46 ["roles"]
  SETTABLEKS R22 R28 K47 ["itemTags"]
  SETTABLEKS R23 R28 K48 ["purchase"]
  SETTABLEKS R24 R28 K49 ["packages"]
  SETTABLEKS R25 R28 K50 ["tryInStudio"]
  SETTABLEKS R18 R28 K51 ["tutorialLimits"]
  CALL R27 1 1
  DUPCLOSURE R28 K53 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R27
  RETURN R28 1
