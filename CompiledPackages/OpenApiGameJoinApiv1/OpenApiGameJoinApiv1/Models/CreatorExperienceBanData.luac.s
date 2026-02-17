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
  GETTABLEKS R1 R0 K5 ["startTime"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K5 ["startTime"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K7 ["\"startTime\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K5 ["startTime"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K8 ["durationSeconds"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K8 ["durationSeconds"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["number"] [+13]
  LOADK R2 K10 ["\"durationSeconds\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K8 ["durationSeconds"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K11 ["displayReason"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K11 ["displayReason"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K12 ["\"displayReason\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K11 ["displayReason"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K13 ["displayReasonTextFilterStatus"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K13 ["displayReasonTextFilterStatus"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["number"] [+13]
  LOADK R2 K14 ["\"displayReasonTextFilterStatus\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K13 ["displayReasonTextFilterStatus"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K15 ["isInherited"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K15 ["isInherited"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K16 ["boolean"] [+13]
  LOADK R2 K17 ["\"isInherited\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K15 ["isInherited"]
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
