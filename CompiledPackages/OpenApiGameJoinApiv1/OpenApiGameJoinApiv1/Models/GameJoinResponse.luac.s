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
  GETTABLEKS R1 R0 K5 ["jobId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K5 ["jobId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+13]
  LOADK R2 K7 ["\"jobId\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K5 ["jobId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K8 ["status"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K8 ["status"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["number"] [+13]
  LOADK R2 K10 ["\"status\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K8 ["status"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R2 R0 K11 ["statusData"]
  JUMPIFNOT R2 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K12 ["validate"]
  GETTABLEKS R2 R0 K11 ["statusData"]
  CALL R1 1 1
  JUMP [+1]
  LOADNIL R1
  JUMPIFNOT R1 [+7]
  LOADK R3 K13 ["\"statusData\" > %*"]
  MOVE R5 R1
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  GETTABLEKS R2 R0 K14 ["joinScriptUrl"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R3 R0 K14 ["joinScriptUrl"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K6 ["string"] [+13]
  LOADK R3 K15 ["\"joinScriptUrl\" > Expected string, got %*"]
  GETTABLEKS R6 R0 K14 ["joinScriptUrl"]
  FASTCALL1 TYPEOF R6 [+2]
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  GETTABLEKS R2 R0 K16 ["authenticationUrl"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R3 R0 K16 ["authenticationUrl"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K6 ["string"] [+13]
  LOADK R3 K17 ["\"authenticationUrl\" > Expected string, got %*"]
  GETTABLEKS R6 R0 K16 ["authenticationUrl"]
  FASTCALL1 TYPEOF R6 [+2]
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  GETTABLEKS R2 R0 K18 ["authenticationTicket"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R3 R0 K18 ["authenticationTicket"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K6 ["string"] [+13]
  LOADK R3 K19 ["\"authenticationTicket\" > Expected string, got %*"]
  GETTABLEKS R6 R0 K18 ["authenticationTicket"]
  FASTCALL1 TYPEOF R6 [+2]
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  GETTABLEKS R2 R0 K20 ["message"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R3 R0 K20 ["message"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K6 ["string"] [+13]
  LOADK R3 K21 ["\"message\" > Expected string, got %*"]
  GETTABLEKS R6 R0 K20 ["message"]
  FASTCALL1 TYPEOF R6 [+2]
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  GETTABLEKS R3 R0 K22 ["joinScript"]
  JUMPIFNOT R3 [+7]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K12 ["validate"]
  GETTABLEKS R3 R0 K22 ["joinScript"]
  CALL R2 1 1
  JUMP [+1]
  LOADNIL R2
  JUMPIFNOT R2 [+7]
  LOADK R4 K23 ["\"joinScript\" > %*"]
  MOVE R6 R2
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  RETURN R3 1
  GETTABLEKS R3 R0 K24 ["queuePosition"]
  JUMPIFNOT R3 [+20]
  GETTABLEKS R4 R0 K24 ["queuePosition"]
  FASTCALL1 TYPEOF R4 [+2]
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFEQKS R3 K9 ["number"] [+13]
  LOADK R4 K25 ["\"queuePosition\" > Expected number, got %*"]
  GETTABLEKS R7 R0 K24 ["queuePosition"]
  FASTCALL1 TYPEOF R7 [+2]
  GETIMPORT R6 K1 [typeof]
  CALL R6 1 1
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  RETURN R3 1
  LOADNIL R3
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["OpenApiGameJoinApiv1"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Models"]
  GETTABLEKS R2 R3 K7 ["StatusData"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Models"]
  GETTABLEKS R3 R4 K8 ["JoinInformation"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  GETIMPORT R4 K12 [table.freeze]
  DUPTABLE R5 K14 [{"validate"}]
  SETTABLEKS R3 R5 K13 ["validate"]
  CALL R4 1 -1
  RETURN R4 -1
