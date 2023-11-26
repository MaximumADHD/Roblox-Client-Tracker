PROTO_0:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["table"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["UpdateOverrideAssetData resultsArray parameter must be a table"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K6 ["boolean"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["UpdateOverrideAssetData fetchedAll parameter must be a boolean"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  DUPTABLE R2 K10 [{"resultsArray", "fetchedAll"}]
  SETTABLEKS R0 R2 K8 ["resultsArray"]
  SETTABLEKS R1 R2 K9 ["fetchedAll"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K6 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["Util"]
  GETTABLEKS R3 R2 K8 ["Action"]
  MOVE R4 R3
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K9 ["Name"]
  DUPCLOSURE R6 K10 [PROTO_0]
  CALL R4 2 -1
  RETURN R4 -1
