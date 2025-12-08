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
  GETTABLEKS R1 R0 K5 ["conversationId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K5 ["conversationId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K7 ["\"conversationId\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K5 ["conversationId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K8 ["gameJoinAttemptId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K8 ["gameJoinAttemptId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K10 ["\"gameJoinAttemptId\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K8 ["gameJoinAttemptId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K11 ["placeId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K11 ["placeId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K12 ["\"placeId\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K11 ["placeId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K13 ["gamerTag"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K13 ["gamerTag"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K14 ["\"gamerTag\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K13 ["gamerTag"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K15 ["isPlayTogetherGame"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K15 ["isPlayTogetherGame"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K16 ["boolean"] [+13]
  LOADK R2 K17 ["\"isPlayTogetherGame\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K15 ["isPlayTogetherGame"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K18 ["browserTrackerId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K18 ["browserTrackerId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K19 ["\"browserTrackerId\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K18 ["browserTrackerId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K20 ["isTeleport"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K20 ["isTeleport"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K16 ["boolean"] [+13]
  LOADK R2 K21 ["\"isTeleport\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K20 ["isTeleport"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K22 ["isQueueAllowedOverride"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K22 ["isQueueAllowedOverride"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K16 ["boolean"] [+13]
  LOADK R2 K23 ["\"isQueueAllowedOverride\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K22 ["isQueueAllowedOverride"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K24 ["isImmersiveAdsTeleport"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K24 ["isImmersiveAdsTeleport"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K16 ["boolean"] [+13]
  LOADK R2 K25 ["\"isImmersiveAdsTeleport\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K24 ["isImmersiveAdsTeleport"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K26 ["channelName"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K26 ["channelName"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K27 ["\"channelName\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K26 ["channelName"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K28 ["joinOrigin"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K28 ["joinOrigin"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K29 ["\"joinOrigin\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K28 ["joinOrigin"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K30 ["partyId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K30 ["partyId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K31 ["\"partyId\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K30 ["partyId"]
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
