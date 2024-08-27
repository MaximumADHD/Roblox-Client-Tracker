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
  GETTABLEKS R1 R0 K5 ["id"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K5 ["id"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K7 ["\"id\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K5 ["id"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K8 ["name"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K8 ["name"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K10 ["\"name\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K8 ["name"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K11 ["description"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K11 ["description"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K12 ["\"description\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K11 ["description"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K13 ["rootPlaceId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K13 ["rootPlaceId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K14 ["\"rootPlaceId\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K13 ["rootPlaceId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K15 ["privacyType"]
  JUMPIFNOT R1 [+18]
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K9 ["string"] [+12]
  LOADK R3 K16 ["\"privacyType\" > Expected string, got %*"]
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  GETTABLEKS R2 R0 K17 ["creatorTargetId"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R3 R0 K17 ["creatorTargetId"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K6 ["number"] [+13]
  LOADK R3 K18 ["\"creatorTargetId\" > Expected number, got %*"]
  GETTABLEKS R6 R0 K17 ["creatorTargetId"]
  FASTCALL1 TYPEOF R6 [+2]
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  GETTABLEKS R2 R0 K19 ["creatorName"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R3 R0 K19 ["creatorName"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K9 ["string"] [+13]
  LOADK R3 K20 ["\"creatorName\" > Expected string, got %*"]
  GETTABLEKS R6 R0 K19 ["creatorName"]
  FASTCALL1 TYPEOF R6 [+2]
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  GETTABLEKS R2 R0 K21 ["created"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R3 R0 K21 ["created"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K9 ["string"] [+13]
  LOADK R3 K22 ["\"created\" > Expected string, got %*"]
  GETTABLEKS R6 R0 K21 ["created"]
  FASTCALL1 TYPEOF R6 [+2]
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  GETTABLEKS R2 R0 K23 ["updated"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R3 R0 K23 ["updated"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K9 ["string"] [+13]
  LOADK R3 K24 ["\"updated\" > Expected string, got %*"]
  GETTABLEKS R6 R0 K23 ["updated"]
  FASTCALL1 TYPEOF R6 [+2]
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  LOADNIL R2
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPTABLE R1 K2 [{"validate"}]
  SETTABLEKS R0 R1 K1 ["validate"]
  RETURN R1 1
