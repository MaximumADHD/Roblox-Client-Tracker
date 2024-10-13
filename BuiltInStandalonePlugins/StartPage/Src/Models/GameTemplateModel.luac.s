PROTO_0:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["table"] [+12]
  LOADK R2 K3 ["Expected table, got %*"]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K5 ["gameTemplateType"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K5 ["gameTemplateType"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K7 ["\"gameTemplateType\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K5 ["gameTemplateType"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K8 ["universe"]
  JUMPIFNOT R1 [+14]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K9 ["validate"]
  GETTABLEKS R2 R0 K8 ["universe"]
  CALL R1 1 1
  JUMPIFNOT R1 [+7]
  LOADK R3 K10 ["\"universe\" > %*"]
  MOVE R5 R1
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  LOADNIL R1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Models"]
  GETTABLEKS R2 R3 K8 ["UniverseModel"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_0]
  CAPTURE VAL R1
  DUPTABLE R3 K11 [{"validate"}]
  SETTABLEKS R2 R3 K10 ["validate"]
  RETURN R3 1
