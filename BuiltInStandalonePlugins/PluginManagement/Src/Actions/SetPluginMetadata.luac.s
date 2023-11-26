PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R9 R0
  GETIMPORT R8 K1 [type]
  CALL R8 1 1
  JUMPIFEQKS R8 K2 ["string"] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K3 [+4]
  LOADK R8 K3 ["Expected pluginId to be a string"]
  GETIMPORT R6 K5 [assert]
  CALL R6 2 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R9 R1
  GETIMPORT R8 K1 [type]
  CALL R8 1 1
  JUMPIFEQKS R8 K2 ["string"] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K6 [+4]
  LOADK R8 K6 ["Expected name to be a string"]
  GETIMPORT R6 K5 [assert]
  CALL R6 2 0
  FASTCALL1 TYPE R2 [+3]
  MOVE R9 R2
  GETIMPORT R8 K1 [type]
  CALL R8 1 1
  JUMPIFEQKS R8 K2 ["string"] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K7 [+4]
  LOADK R8 K7 ["Expected description to be a string"]
  GETIMPORT R6 K5 [assert]
  CALL R6 2 0
  FASTCALL1 TYPE R3 [+3]
  MOVE R9 R3
  GETIMPORT R8 K1 [type]
  CALL R8 1 1
  JUMPIFEQKS R8 K2 ["string"] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K8 [+4]
  LOADK R8 K8 ["Expected versionId to be a string"]
  GETIMPORT R6 K5 [assert]
  CALL R6 2 0
  FASTCALL1 TYPE R4 [+3]
  MOVE R9 R4
  GETIMPORT R8 K1 [type]
  CALL R8 1 1
  JUMPIFEQKS R8 K2 ["string"] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K9 [+4]
  LOADK R8 K9 ["Expected created to be a string"]
  GETIMPORT R6 K5 [assert]
  CALL R6 2 0
  FASTCALL1 TYPE R5 [+3]
  MOVE R9 R5
  GETIMPORT R8 K1 [type]
  CALL R8 1 1
  JUMPIFEQKS R8 K2 ["string"] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K10 [+4]
  LOADK R8 K10 ["Expected updated to be a string"]
  GETIMPORT R6 K5 [assert]
  CALL R6 2 0
  DUPTABLE R6 K17 [{"pluginId", "name", "description", "versionId", "created", "updated"}]
  SETTABLEKS R0 R6 K11 ["pluginId"]
  SETTABLEKS R1 R6 K12 ["name"]
  SETTABLEKS R2 R6 K13 ["description"]
  SETTABLEKS R3 R6 K14 ["versionId"]
  SETTABLEKS R4 R6 K15 ["created"]
  SETTABLEKS R5 R6 K16 ["updated"]
  RETURN R6 1

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
