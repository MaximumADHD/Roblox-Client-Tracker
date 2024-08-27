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
  GETTABLEKS R1 R0 K5 ["ageRecommendationDetails"]
  JUMPIFNOT R1 [+83]
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K2 ["table"] [+12]
  LOADK R3 K6 ["\"ageRecommendationDetails\" > Expected table, got %*"]
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  GETTABLEKS R2 R1 K7 ["ageRecommendationSummary"]
  JUMPIFNOT R2 [+62]
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["table"] [+12]
  LOADK R4 K8 ["\"ageRecommendationDetails\" > \"ageRecommendationSummary\" > Expected table, got %*"]
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R7 R2
  GETIMPORT R6 K1 [typeof]
  CALL R6 1 1
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  RETURN R3 1
  GETTABLEKS R3 R2 K9 ["ageRecommendation"]
  JUMPIFNOT R3 [+41]
  FASTCALL1 TYPEOF R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["table"] [+12]
  LOADK R5 K10 ["\"ageRecommendationDetails\" > \"ageRecommendationSummary\" > \"ageRecommendation\" > Expected table, got %*"]
  FASTCALL1 TYPEOF R3 [+3]
  MOVE R8 R3
  GETIMPORT R7 K1 [typeof]
  CALL R7 1 1
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  RETURN R4 1
  GETTABLEKS R4 R3 K11 ["minimumAge"]
  JUMPIFNOT R4 [+20]
  GETTABLEKS R5 R3 K11 ["minimumAge"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K12 ["number"] [+13]
  LOADK R5 K13 ["\"ageRecommendationDetails\" > \"ageRecommendationSummary\" > \"ageRecommendation\" > \"minimumAge\" > Expected number, got %*"]
  GETTABLEKS R8 R3 K11 ["minimumAge"]
  FASTCALL1 TYPEOF R8 [+2]
  GETIMPORT R7 K1 [typeof]
  CALL R7 1 1
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  RETURN R4 1
  GETTABLEKS R2 R0 K14 ["universeId"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R3 R0 K14 ["universeId"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K12 ["number"] [+13]
  LOADK R3 K15 ["\"universeId\" > Expected number, got %*"]
  GETTABLEKS R6 R0 K14 ["universeId"]
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
