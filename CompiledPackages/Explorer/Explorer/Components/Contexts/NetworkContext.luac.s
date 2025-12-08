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
  GETTABLEKS R3 R0 K6 ["Networking"]
  GETTABLEKS R2 R3 K7 ["NetworkingTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["createUnimplemented"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K12 ["createElement"]
  DUPTABLE R5 K15 [{"default", "registerOnConnect"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K13 ["default"]
  MOVE R6 R3
  LOADK R7 K14 ["registerOnConnect"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K14 ["registerOnConnect"]
  GETTABLEKS R6 R2 K16 ["createContext"]
  MOVE R7 R5
  CALL R6 1 1
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R6
  DUPTABLE R8 K20 [{"Context", "Provider"}]
  SETTABLEKS R6 R8 K18 ["Context"]
  SETTABLEKS R7 R8 K19 ["Provider"]
  RETURN R8 1
