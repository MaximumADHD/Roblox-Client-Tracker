PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["string"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["searchTerm must be a string"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  DUPTABLE R1 K7 [{"searchTerm"}]
  SETTABLEKS R0 R1 K6 ["searchTerm"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["Action"]
  MOVE R4 R3
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K9 ["Name"]
  DUPCLOSURE R6 K10 [PROTO_0]
  CALL R4 2 -1
  RETURN R4 -1
