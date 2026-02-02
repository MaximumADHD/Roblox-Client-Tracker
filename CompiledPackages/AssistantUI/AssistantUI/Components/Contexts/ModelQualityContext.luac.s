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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R0 K8 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["createElement"]
  DUPTABLE R4 K12 [{"High", "Low"}]
  LOADK R5 K10 ["High"]
  SETTABLEKS R5 R4 K10 ["High"]
  LOADK R5 K11 ["Low"]
  SETTABLEKS R5 R4 K11 ["Low"]
  DUPTABLE R5 K16 [{"default", "modelQuality", "setModelQuality"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K13 ["default"]
  GETTABLEKS R6 R4 K10 ["High"]
  SETTABLEKS R6 R5 K14 ["modelQuality"]
  DUPCLOSURE R6 K17 [PROTO_0]
  SETTABLEKS R6 R5 K15 ["setModelQuality"]
  GETTABLEKS R6 R1 K18 ["createContext"]
  MOVE R7 R5
  CALL R6 1 1
  DUPCLOSURE R7 K19 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  DUPTABLE R8 K23 [{"Context", "Provider", "ModelQuality"}]
  SETTABLEKS R6 R8 K20 ["Context"]
  SETTABLEKS R7 R8 K21 ["Provider"]
  SETTABLEKS R4 R8 K22 ["ModelQuality"]
  RETURN R8 1
