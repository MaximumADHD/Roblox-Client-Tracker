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
  GETTABLEKS R1 R0 K5 ["accessCode"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K5 ["accessCode"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K7 ["\"accessCode\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K5 ["accessCode"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K8 ["linkCode"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K8 ["linkCode"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K9 ["\"linkCode\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K8 ["linkCode"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K10 ["gameJoinAttemptId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K10 ["gameJoinAttemptId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K11 ["\"gameJoinAttemptId\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K10 ["gameJoinAttemptId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K12 ["placeId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K12 ["placeId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K13 ["number"] [+13]
  LOADK R2 K14 ["\"placeId\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K12 ["placeId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K15 ["gamerTag"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K15 ["gamerTag"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K16 ["\"gamerTag\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K15 ["gamerTag"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K17 ["isPlayTogetherGame"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K17 ["isPlayTogetherGame"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K18 ["boolean"] [+13]
  LOADK R2 K19 ["\"isPlayTogetherGame\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K17 ["isPlayTogetherGame"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K20 ["browserTrackerId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K20 ["browserTrackerId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K13 ["number"] [+13]
  LOADK R2 K21 ["\"browserTrackerId\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K20 ["browserTrackerId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K22 ["isTeleport"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K22 ["isTeleport"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K18 ["boolean"] [+13]
  LOADK R2 K23 ["\"isTeleport\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K22 ["isTeleport"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K24 ["isQueueAllowedOverride"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K24 ["isQueueAllowedOverride"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K18 ["boolean"] [+13]
  LOADK R2 K25 ["\"isQueueAllowedOverride\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K24 ["isQueueAllowedOverride"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K26 ["isImmersiveAdsTeleport"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K26 ["isImmersiveAdsTeleport"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K18 ["boolean"] [+13]
  LOADK R2 K27 ["\"isImmersiveAdsTeleport\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K26 ["isImmersiveAdsTeleport"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K28 ["channelName"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K28 ["channelName"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K29 ["\"channelName\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K28 ["channelName"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K30 ["joinOrigin"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K30 ["joinOrigin"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K31 ["\"joinOrigin\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K30 ["joinOrigin"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K32 ["partyId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K32 ["partyId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K33 ["\"partyId\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K32 ["partyId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  GETIMPORT R1 K3 [table.freeze]
  DUPTABLE R2 K5 [{"validate"}]
  SETTABLEKS R0 R2 K4 ["validate"]
  CALL R1 1 -1
  RETURN R1 -1
