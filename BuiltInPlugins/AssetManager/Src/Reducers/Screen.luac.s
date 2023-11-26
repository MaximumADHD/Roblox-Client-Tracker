PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K5 [{"currentScreen", "previousScreens", "nextScreens"}]
  GETTABLEKS R5 R1 K6 ["screen"]
  SETTABLEKS R5 R4 K2 ["currentScreen"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K3 ["previousScreens"]
  NEWTABLE R7 1 0
  GETTABLEKS R10 R0 K3 ["previousScreens"]
  LENGTH R9 R10
  ADDK R8 R9 K7 [1]
  GETTABLEKS R9 R0 K2 ["currentScreen"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["previousScreens"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K4 ["nextScreens"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETTABLEKS R5 R0 K0 ["previousScreens"]
  LENGTH R4 R5
  LOADN R5 0
  JUMPIFLT R5 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["previousScreens should not be empty"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["Dictionary"]
  GETTABLEKS R2 R3 K5 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K8 [{"currentScreen", "previousScreens", "nextScreens"}]
  GETTABLEKS R6 R0 K0 ["previousScreens"]
  GETTABLEKS R8 R0 K0 ["previousScreens"]
  LENGTH R7 R8
  GETTABLE R5 R6 R7
  SETTABLEKS R5 R4 K6 ["currentScreen"]
  NEWTABLE R5 0 1
  GETTABLEKS R7 R0 K0 ["previousScreens"]
  LOADN R8 1
  GETTABLEKS R11 R0 K0 ["previousScreens"]
  LENGTH R10 R11
  SUBK R9 R10 K9 [1]
  FASTCALL TABLE_UNPACK [+2]
  GETIMPORT R6 K11 [unpack]
  CALL R6 3 -1
  SETLIST R5 R6 -1 [1]
  SETTABLEKS R5 R4 K0 ["previousScreens"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["Dictionary"]
  GETTABLEKS R5 R6 K5 ["join"]
  GETTABLEKS R6 R0 K7 ["nextScreens"]
  NEWTABLE R7 1 0
  GETTABLEKS R10 R0 K7 ["nextScreens"]
  LENGTH R9 R10
  ADDK R8 R9 K9 [1]
  GETTABLEKS R9 R0 K6 ["currentScreen"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["nextScreens"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETTABLEKS R5 R0 K0 ["nextScreens"]
  LENGTH R4 R5
  LOADN R5 0
  JUMPIFLT R5 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["nextScreens should not be empty"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["Dictionary"]
  GETTABLEKS R2 R3 K5 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K8 [{"currentScreen", "previousScreens", "nextScreens"}]
  GETTABLEKS R6 R0 K0 ["nextScreens"]
  GETTABLEKS R8 R0 K0 ["nextScreens"]
  LENGTH R7 R8
  GETTABLE R5 R6 R7
  SETTABLEKS R5 R4 K6 ["currentScreen"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["Dictionary"]
  GETTABLEKS R5 R6 K5 ["join"]
  GETTABLEKS R6 R0 K7 ["previousScreens"]
  NEWTABLE R7 1 0
  GETTABLEKS R10 R0 K7 ["previousScreens"]
  LENGTH R9 R10
  ADDK R8 R9 K9 [1]
  GETTABLEKS R9 R0 K6 ["currentScreen"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["previousScreens"]
  NEWTABLE R5 0 1
  GETTABLEKS R7 R0 K0 ["nextScreens"]
  LOADN R8 1
  GETTABLEKS R11 R0 K0 ["nextScreens"]
  LENGTH R10 R11
  SUBK R9 R10 K9 [1]
  FASTCALL TABLE_UNPACK [+2]
  GETIMPORT R6 K11 [unpack]
  CALL R6 3 -1
  SETLIST R5 R6 -1 [1]
  SETTABLEKS R5 R4 K0 ["nextScreens"]
  CALL R2 2 -1
  RETURN R2 -1

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
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["Screens"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K11 ["createReducer"]
  DUPTABLE R5 K16 [{"screensTable", "currentScreen", "previousScreens", "nextScreens"}]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K12 ["screensTable"]
  GETTABLEKS R6 R3 K17 ["MAIN"]
  SETTABLEKS R6 R5 K13 ["currentScreen"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K14 ["previousScreens"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K15 ["nextScreens"]
  DUPTABLE R6 K21 [{"SetScreen", "SetToPreviousScreen", "SetToNextScreen"}]
  DUPCLOSURE R7 K22 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K18 ["SetScreen"]
  DUPCLOSURE R7 K23 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K19 ["SetToPreviousScreen"]
  DUPCLOSURE R7 K24 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K20 ["SetToNextScreen"]
  CALL R4 2 -1
  RETURN R4 -1
