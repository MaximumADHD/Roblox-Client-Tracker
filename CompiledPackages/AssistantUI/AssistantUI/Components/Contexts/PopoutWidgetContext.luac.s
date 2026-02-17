PROTO_0:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["getDialogWidget is not implemented"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["getPopoutMenu is not implemented"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["default"]
  JUMPIFEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["default is not supported in this context"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  DUPTABLE R1 K5 [{"option"}]
  GETTABLEKS R2 R0 K4 ["option"]
  SETTABLEKS R2 R1 K4 ["option"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["Provider"]
  DUPTABLE R4 K8 [{"value"}]
  SETTABLEKS R1 R4 K7 ["value"]
  GETTABLEKS R5 R0 K9 ["children"]
  CALL R2 3 -1
  RETURN R2 -1

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
  NEWTABLE R3 2 0
  DUPCLOSURE R4 K9 [PROTO_0]
  SETTABLEKS R4 R3 K10 ["getDialogWidget"]
  DUPCLOSURE R4 K11 [PROTO_1]
  SETTABLEKS R4 R3 K12 ["getPopoutMenu"]
  DUPTABLE R4 K15 [{"default", "option"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K13 ["default"]
  SETTABLEKS R3 R4 K14 ["option"]
  GETTABLEKS R5 R1 K16 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  DUPCLOSURE R6 K17 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R5
  DUPTABLE R7 K20 [{"Context", "Provider"}]
  SETTABLEKS R5 R7 K18 ["Context"]
  SETTABLEKS R6 R7 K19 ["Provider"]
  RETURN R7 1
