PROTO_0:
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R0 K0 ["default"]
  JUMPIFEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["default is not supported in this context"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["useState"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["High"]
  CALL R1 1 2
  DUPTABLE R3 K8 [{"modelQuality", "setModelQuality"}]
  GETTABLEKS R5 R0 K6 ["modelQuality"]
  OR R4 R5 R1
  SETTABLEKS R4 R3 K6 ["modelQuality"]
  GETTABLEKS R5 R0 K7 ["setModelQuality"]
  OR R4 R5 R2
  SETTABLEKS R4 R3 K7 ["setModelQuality"]
  GETUPVAL R4 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K9 ["Provider"]
  DUPTABLE R6 K11 [{"value"}]
  SETTABLEKS R3 R6 K10 ["value"]
  GETTABLEKS R7 R0 K12 ["children"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["createElement"]
  DUPTABLE R3 K11 [{"High", "Low"}]
  LOADK R4 K9 ["High"]
  SETTABLEKS R4 R3 K9 ["High"]
  LOADK R4 K10 ["Low"]
  SETTABLEKS R4 R3 K10 ["Low"]
  DUPTABLE R4 K15 [{"default", "modelQuality", "setModelQuality"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K12 ["default"]
  GETTABLEKS R5 R3 K9 ["High"]
  SETTABLEKS R5 R4 K13 ["modelQuality"]
  DUPCLOSURE R5 K16 [PROTO_0]
  SETTABLEKS R5 R4 K14 ["setModelQuality"]
  GETTABLEKS R5 R1 K17 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  DUPCLOSURE R6 K18 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  DUPTABLE R7 K22 [{"Context", "Provider", "ModelQuality"}]
  SETTABLEKS R5 R7 K19 ["Context"]
  SETTABLEKS R6 R7 K20 ["Provider"]
  SETTABLEKS R3 R7 K21 ["ModelQuality"]
  RETURN R7 1
