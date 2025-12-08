PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADNIL R2
  CALL R1 1 2
  DUPTABLE R3 K3 [{"renameBoxActiveFor", "setRenameBoxActiveFor"}]
  SETTABLEKS R1 R3 K1 ["renameBoxActiveFor"]
  SETTABLEKS R2 R3 K2 ["setRenameBoxActiveFor"]
  GETUPVAL R4 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["Provider"]
  DUPTABLE R6 K6 [{"value"}]
  SETTABLEKS R3 R6 K5 ["value"]
  GETTABLEKS R7 R0 K7 ["children"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R0 K8 ["RpcTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["createUnimplemented"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K11 ["createElement"]
  DUPTABLE R5 K14 [{"renameBoxActiveFor", "setRenameBoxActiveFor"}]
  LOADNIL R6
  SETTABLEKS R6 R5 K12 ["renameBoxActiveFor"]
  MOVE R6 R3
  LOADK R7 K13 ["setRenameBoxActiveFor"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K13 ["setRenameBoxActiveFor"]
  GETTABLEKS R6 R1 K15 ["createContext"]
  MOVE R7 R5
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  DUPTABLE R8 K19 [{"Context", "Provider"}]
  SETTABLEKS R6 R8 K17 ["Context"]
  SETTABLEKS R7 R8 K18 ["Provider"]
  RETURN R8 1
