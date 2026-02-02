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
  GETTABLEKS R2 R0 K5 ["creatorExperienceBan"]
  JUMPIFNOT R2 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["validate"]
  GETTABLEKS R2 R0 K5 ["creatorExperienceBan"]
  CALL R1 1 1
  JUMP [+1]
  LOADNIL R1
  JUMPIFNOT R1 [+7]
  LOADK R3 K7 ["\"creatorExperienceBan\" > %*"]
  MOVE R5 R1
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  LOADNIL R2
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["OpenApiGameJoinApiv1"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Models"]
  GETTABLEKS R2 R3 K7 ["CreatorExperienceBanData"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  GETIMPORT R3 K11 [table.freeze]
  DUPTABLE R4 K13 [{"validate"}]
  SETTABLEKS R2 R4 K12 ["validate"]
  CALL R3 1 -1
  RETURN R3 -1
