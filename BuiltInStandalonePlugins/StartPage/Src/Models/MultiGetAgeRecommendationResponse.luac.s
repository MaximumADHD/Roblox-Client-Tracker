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
  GETTABLEKS R1 R0 K5 ["ageRecommendationDetailsByUniverse"]
  JUMPIFNOT R1 [+38]
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K2 ["table"] [+12]
  LOADK R3 K6 ["\"ageRecommendationDetailsByUniverse\" > Expected table, got %*"]
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["validate"]
  MOVE R8 R6
  CALL R7 1 1
  JUMPIFNOT R7 [+8]
  LOADK R9 K8 ["\"ageRecommendationDetailsByUniverse\" > [%*] > %*"]
  MOVE R11 R5
  MOVE R12 R7
  NAMECALL R9 R9 K4 ["format"]
  CALL R9 3 1
  MOVE R8 R9
  RETURN R8 1
  FORGLOOP R2 2 [-15]
  LOADNIL R2
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Models"]
  GETTABLEKS R2 R3 K8 ["AgeRecommendationDetailsByUniverse"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_0]
  CAPTURE VAL R1
  DUPTABLE R3 K11 [{"validate"}]
  SETTABLEKS R2 R3 K10 ["validate"]
  RETURN R3 1
