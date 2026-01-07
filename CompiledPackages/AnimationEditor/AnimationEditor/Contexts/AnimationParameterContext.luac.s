PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  NEWTABLE R2 0 0
  CALL R1 1 2
  DUPTABLE R3 K3 [{"animationParameters", "setAnimationParameters"}]
  SETTABLEKS R1 R3 K1 ["animationParameters"]
  SETTABLEKS R2 R3 K2 ["setAnimationParameters"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Provider"]
  DUPTABLE R6 K7 [{"value"}]
  SETTABLEKS R3 R6 K6 ["value"]
  GETTABLEKS R7 R0 K8 ["children"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["ReactUtils"]
  CALL R2 1 1
  DUPTABLE R3 K11 [{"animationParameters", "setAnimationParameters"}]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K9 ["animationParameters"]
  GETTABLEKS R4 R2 K12 ["createUnimplemented"]
  LOADK R5 K10 ["setAnimationParameters"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["setAnimationParameters"]
  GETTABLEKS R4 R1 K13 ["createContext"]
  MOVE R5 R3
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  DUPTABLE R6 K17 [{"Context", "Provider"}]
  SETTABLEKS R4 R6 K15 ["Context"]
  SETTABLEKS R5 R6 K16 ["Provider"]
  RETURN R6 1
