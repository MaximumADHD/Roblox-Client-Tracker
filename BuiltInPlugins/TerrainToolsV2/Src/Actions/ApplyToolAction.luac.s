PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R4 K3 ["Expected toolName to be a string, received %s"]
  FASTCALL1 TYPE R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K1 [type]
  CALL R6 1 1
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K6 [assert]
  CALL R2 -1 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K7 ["table"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R4 K8 ["Expected toolAction to be a table, received %s"]
  FASTCALL1 TYPE R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K1 [type]
  CALL R6 1 1
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K6 [assert]
  CALL R2 -1 0
  DUPTABLE R2 K11 [{"toolName", "toolAction"}]
  SETTABLEKS R0 R2 K9 ["toolName"]
  SETTABLEKS R1 R2 K10 ["toolAction"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Action"]
  CALL R0 1 1
  MOVE R1 R0
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K6 ["Name"]
  DUPCLOSURE R3 K7 [PROTO_0]
  CALL R1 2 -1
  RETURN R1 -1
