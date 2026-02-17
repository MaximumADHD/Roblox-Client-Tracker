PROTO_0:
  GETUPVAL R2 0
  DUPTABLE R3 K2 [{"targetPinPosition", "sourcePinInfo"}]
  SETTABLEKS R0 R3 K0 ["targetPinPosition"]
  SETTABLEKS R1 R3 K1 ["sourcePinInfo"]
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADNIL R2
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["useCallback"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  NEWTABLE R5 0 1
  MOVE R6 R2
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["useCallback"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R2
  NEWTABLE R6 0 1
  MOVE R7 R2
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  DUPTABLE R5 K5 [{"visibleMenuState", "hideMenu", "showMenu"}]
  SETTABLEKS R1 R5 K2 ["visibleMenuState"]
  SETTABLEKS R4 R5 K3 ["hideMenu"]
  SETTABLEKS R3 R5 K4 ["showMenu"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["Provider"]
  DUPTABLE R8 K9 [{"value"}]
  SETTABLEKS R5 R8 K8 ["value"]
  GETTABLEKS R9 R0 K10 ["children"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["NodeViewTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K7 ["Parent"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K7 ["Parent"]
  GETTABLEKS R4 R5 K9 ["ReactUtils"]
  CALL R3 1 1
  DUPTABLE R4 K13 [{"visibleMenuState", "showMenu", "hideMenu"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K10 ["visibleMenuState"]
  GETTABLEKS R5 R3 K14 ["createUnimplemented"]
  LOADK R6 K11 ["showMenu"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K11 ["showMenu"]
  GETTABLEKS R5 R3 K14 ["createUnimplemented"]
  LOADK R6 K12 ["hideMenu"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K12 ["hideMenu"]
  GETTABLEKS R5 R2 K15 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  DUPCLOSURE R6 K16 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R5
  DUPTABLE R7 K19 [{"Context", "Provider"}]
  SETTABLEKS R5 R7 K17 ["Context"]
  SETTABLEKS R6 R7 K18 ["Provider"]
  RETURN R7 1
