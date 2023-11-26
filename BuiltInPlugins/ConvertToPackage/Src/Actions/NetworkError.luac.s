PROTO_0:
  LOADK R2 K0 ["networkErrorAction must be a string, received %s"]
  FASTCALL1 TYPE R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K2 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K3 ["string"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETIMPORT R5 K5 [string.format]
  MOVE R6 R2
  FASTCALL1 TYPE R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K2 [type]
  CALL R7 1 1
  CALL R5 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R3 K7 [assert]
  CALL R3 -1 0
  LOADK R2 K8 ["response must be a string, or table, received %s"]
  LOADB R4 1
  FASTCALL1 TYPE R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K2 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K3 ["string"] [+10]
  FASTCALL1 TYPE R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K2 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K9 ["table"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETIMPORT R5 K5 [string.format]
  MOVE R6 R2
  FASTCALL1 TYPE R0 [+3]
  MOVE R8 R0
  GETIMPORT R7 K2 [type]
  CALL R7 1 1
  CALL R5 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R3 K7 [assert]
  CALL R3 -1 0
  MOVE R3 R0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K11 [typeof]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K3 ["string"] [+5]
  DUPTABLE R4 K13 [{"responseBody"}]
  SETTABLEKS R0 R4 K12 ["responseBody"]
  MOVE R3 R4
  DUPTABLE R4 K16 [{"response", "networkErrorAction"}]
  SETTABLEKS R3 R4 K14 ["response"]
  SETTABLEKS R1 R4 K15 ["networkErrorAction"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Actions"]
  GETTABLEKS R2 R3 K7 ["Action"]
  CALL R1 1 1
  MOVE R2 R1
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K8 ["Name"]
  DUPCLOSURE R4 K9 [PROTO_0]
  CALL R2 2 -1
  RETURN R2 -1
