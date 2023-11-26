PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["string"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K3 [+4]
  LOADK R5 K3 ["Expected pluginId to be a string"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K6 ["number"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K7 [+4]
  LOADK R5 K7 ["Expected statusCode to be a number"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  FASTCALL1 TYPE R2 [+3]
  MOVE R6 R2
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["string"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Expected message to be a string"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  DUPTABLE R3 K12 [{"pluginId", "statusCode", "message"}]
  SETTABLEKS R0 R3 K9 ["pluginId"]
  SETTABLEKS R1 R3 K10 ["statusCode"]
  SETTABLEKS R2 R3 K11 ["message"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Action"]
  CALL R1 1 1
  MOVE R2 R1
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K7 ["Name"]
  DUPCLOSURE R4 K8 [PROTO_0]
  CALL R2 2 -1
  RETURN R2 -1
