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
  GETTABLEKS R1 R0 K5 ["isoContext"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K5 ["isoContext"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K7 ["\"isoContext\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K5 ["isoContext"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K8 ["gameIdToExclude"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K8 ["gameIdToExclude"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K9 ["\"gameIdToExclude\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K8 ["gameIdToExclude"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K10 ["eventId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K10 ["eventId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K11 ["\"eventId\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K10 ["eventId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K12 ["gameJoinAttemptId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K12 ["gameJoinAttemptId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K13 ["\"gameJoinAttemptId\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K12 ["gameJoinAttemptId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K14 ["placeId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K14 ["placeId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K15 ["number"] [+13]
  LOADK R2 K16 ["\"placeId\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K14 ["placeId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K17 ["gamerTag"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K17 ["gamerTag"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K18 ["\"gamerTag\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K17 ["gamerTag"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K19 ["isPlayTogetherGame"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K19 ["isPlayTogetherGame"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K20 ["boolean"] [+13]
  LOADK R2 K21 ["\"isPlayTogetherGame\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K19 ["isPlayTogetherGame"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K22 ["browserTrackerId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K22 ["browserTrackerId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K15 ["number"] [+13]
  LOADK R2 K23 ["\"browserTrackerId\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K22 ["browserTrackerId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K24 ["isTeleport"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K24 ["isTeleport"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K20 ["boolean"] [+13]
  LOADK R2 K25 ["\"isTeleport\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K24 ["isTeleport"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K26 ["isQueueAllowedOverride"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K26 ["isQueueAllowedOverride"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K20 ["boolean"] [+13]
  LOADK R2 K27 ["\"isQueueAllowedOverride\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K26 ["isQueueAllowedOverride"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K28 ["isImmersiveAdsTeleport"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K28 ["isImmersiveAdsTeleport"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K20 ["boolean"] [+13]
  LOADK R2 K29 ["\"isImmersiveAdsTeleport\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K28 ["isImmersiveAdsTeleport"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K30 ["channelName"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K30 ["channelName"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K31 ["\"channelName\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K30 ["channelName"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K32 ["joinOrigin"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K32 ["joinOrigin"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K33 ["\"joinOrigin\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K32 ["joinOrigin"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K34 ["partyId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K34 ["partyId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K35 ["\"partyId\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K34 ["partyId"]
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
