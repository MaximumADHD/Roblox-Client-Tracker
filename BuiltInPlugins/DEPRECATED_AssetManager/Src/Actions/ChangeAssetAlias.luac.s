PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETIMPORT R4 K4 [string.format]
  LOADK R5 K5 ["ChangeAssetAlias assetId requires a string, not %s"]
  FASTCALL1 TYPE R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K1 [type]
  CALL R6 1 1
  CALL R4 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K7 [assert]
  CALL R2 -1 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETIMPORT R4 K4 [string.format]
  LOADK R5 K8 ["ChangeAssetAlias newAlias requires a string, not %s"]
  FASTCALL1 TYPE R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K1 [type]
  CALL R6 1 1
  CALL R4 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K7 [assert]
  CALL R2 -1 0
  DUPTABLE R2 K11 [{"assetId", "newAlias"}]
  SETTABLEKS R0 R2 K9 ["assetId"]
  SETTABLEKS R1 R2 K10 ["newAlias"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K6 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["Util"]
  GETTABLEKS R1 R2 K8 ["Action"]
  MOVE R2 R1
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K9 ["Name"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CALL R2 2 -1
  RETURN R2 -1
