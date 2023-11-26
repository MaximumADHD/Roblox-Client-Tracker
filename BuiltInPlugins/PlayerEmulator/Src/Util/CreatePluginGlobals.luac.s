MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["Http"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K8 ["ContextServices"]
  GETTABLEKS R6 R7 K11 ["NetworkingContext"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K12 ["Resources"]
  GETTABLEKS R7 R8 K13 ["MakeTheme"]
  CALL R6 1 1
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K12 ["Resources"]
  GETTABLEKS R7 R8 K14 ["SourceStrings"]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K12 ["Resources"]
  GETTABLEKS R8 R9 K15 ["LocalizedStrings"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K16 ["Reducers"]
  GETTABLEKS R10 R11 K17 ["createMainReducer"]
  CALL R9 1 1
  GETTABLEKS R11 R3 K18 ["Localization"]
  GETTABLEKS R10 R11 K19 ["new"]
  DUPTABLE R11 K23 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  SETTABLEKS R7 R11 K20 ["stringResourceTable"]
  SETTABLEKS R8 R11 K21 ["translationResourceTable"]
  LOADK R12 K24 ["PlayerEmulator"]
  SETTABLEKS R12 R11 K22 ["pluginName"]
  CALL R10 1 1
  GETTABLEKS R12 R1 K25 ["Store"]
  GETTABLEKS R11 R12 K19 ["new"]
  MOVE R12 R9
  CALL R12 0 1
  LOADNIL R13
  NEWTABLE R14 0 1
  GETTABLEKS R15 R1 K26 ["thunkMiddleware"]
  SETLIST R14 R15 1 [1]
  CALL R11 3 1
  GETTABLEKS R13 R4 K27 ["Networking"]
  GETTABLEKS R12 R13 K19 ["new"]
  DUPTABLE R13 K30 [{"isInternal", "loggingLevel"}]
  LOADB R14 1
  SETTABLEKS R14 R13 K28 ["isInternal"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["loggingLevel"]
  CALL R12 1 1
  DUPTABLE R13 K35 [{"theme", "localization", "store", "networking"}]
  MOVE R14 R6
  CALL R14 0 1
  SETTABLEKS R14 R13 K31 ["theme"]
  SETTABLEKS R10 R13 K32 ["localization"]
  GETTABLEKS R15 R3 K25 ["Store"]
  GETTABLEKS R14 R15 K19 ["new"]
  MOVE R15 R11
  CALL R14 1 1
  SETTABLEKS R14 R13 K33 ["store"]
  GETTABLEKS R14 R5 K19 ["new"]
  MOVE R15 R12
  CALL R14 1 1
  SETTABLEKS R14 R13 K34 ["networking"]
  RETURN R13 1
