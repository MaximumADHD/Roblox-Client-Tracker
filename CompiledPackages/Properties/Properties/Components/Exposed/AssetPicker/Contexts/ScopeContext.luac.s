PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADNIL R2
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useState"]
  NEWTABLE R4 0 0
  CALL R3 1 2
  DUPTABLE R5 K5 [{"currentScopeId", "scopeMap", "setCurrentScopeId", "setScopeMap"}]
  SETTABLEKS R1 R5 K1 ["currentScopeId"]
  SETTABLEKS R3 R5 K2 ["scopeMap"]
  SETTABLEKS R2 R5 K3 ["setCurrentScopeId"]
  SETTABLEKS R4 R5 K4 ["setScopeMap"]
  GETUPVAL R6 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["Provider"]
  DUPTABLE R8 K8 [{"value"}]
  SETTABLEKS R5 R8 K7 ["value"]
  GETTABLEKS R9 R0 K9 ["children"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K1 [script]
  LOADK R3 K4 ["AssetPicker"]
  NAMECALL R1 R1 K3 ["FindFirstAncestor"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K5 ["Parent"]
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R2 K8 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R5 R1 K9 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K10 ["createElement"]
  DUPTABLE R6 K15 [{"currentScopeId", "scopeMap", "setCurrentScopeId", "setScopeMap"}]
  LOADNIL R7
  SETTABLEKS R7 R6 K11 ["currentScopeId"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K12 ["scopeMap"]
  DUPCLOSURE R7 K16 [PROTO_0]
  SETTABLEKS R7 R6 K13 ["setCurrentScopeId"]
  DUPCLOSURE R7 K17 [PROTO_1]
  SETTABLEKS R7 R6 K14 ["setScopeMap"]
  GETTABLEKS R7 R3 K18 ["createContext"]
  MOVE R8 R6
  CALL R7 1 1
  DUPCLOSURE R8 K19 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R7
  DUPTABLE R9 K22 [{"Context", "Provider"}]
  SETTABLEKS R7 R9 K20 ["Context"]
  SETTABLEKS R8 R9 K21 ["Provider"]
  RETURN R9 1
