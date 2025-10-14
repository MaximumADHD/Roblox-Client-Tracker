PROTO_0:
  GETTABLEKS R3 R0 K0 ["default"]
  JUMPIFEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["default is used for testing if something is stubbed, do not specify it"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["Provider"]
  DUPTABLE R3 K6 [{"value"}]
  SETTABLEKS R0 R3 K5 ["value"]
  GETTABLEKS R4 R0 K7 ["children"]
  CALL R1 3 -1
  RETURN R1 -1

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
  GETTABLEKS R2 R1 K8 ["createElement"]
  DUPTABLE R3 K11 [{"default", "activeViewIdentifier"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K9 ["default"]
  LOADNIL R4
  SETTABLEKS R4 R3 K10 ["activeViewIdentifier"]
  GETTABLEKS R4 R1 K12 ["createContext"]
  MOVE R5 R3
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  DUPTABLE R6 K16 [{"Context", "Provider"}]
  SETTABLEKS R4 R6 K14 ["Context"]
  SETTABLEKS R5 R6 K15 ["Provider"]
  RETURN R6 1
