PROTO_0:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["Exited with code: %d"]
  MOVE R4 R0
  NAMECALL R2 R2 K3 ["format"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  PREPVARARGS 1
  LOADK R2 K0 ["#"]
  FASTCALL1 SELECT_VARARG R2 [+3]
  GETIMPORT R1 K2 [select]
  GETVARARGS R3 -1
  CALL R1 -1 1
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+5]
  GETIMPORT R1 K4 [warn]
  LOADK R2 K5 ["JSON.stringify doesn't currently support more than 1 argument. All additional arguments will be ignored."]
  CALL R1 1 0
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K6 ["JSONEncode"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  PREPVARARGS 1
  LOADK R2 K0 ["#"]
  FASTCALL1 SELECT_VARARG R2 [+3]
  GETIMPORT R1 K2 [select]
  GETVARARGS R3 -1
  CALL R1 -1 1
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+5]
  GETIMPORT R1 K4 [warn]
  LOADK R2 K5 ["JSON.parse doesn't currently support more than 1 argument. All additional arguments will be ignored."]
  CALL R1 1 0
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K6 ["JSONDecode"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Writeable"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K5 ["Writeable"]
  DUPTABLE R2 K8 [{"stdout", "stderr"}]
  GETTABLEKS R3 R1 K9 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K6 ["stdout"]
  GETTABLEKS R3 R1 K9 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K7 ["stderr"]
  DUPCLOSURE R3 K10 [PROTO_0]
  GETIMPORT R4 K12 [game]
  LOADK R6 K13 ["HttpService"]
  NAMECALL R4 R4 K14 ["GetService"]
  CALL R4 2 1
  DUPTABLE R5 K17 [{"stringify", "parse"}]
  DUPCLOSURE R6 K18 [PROTO_1]
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K15 ["stringify"]
  DUPCLOSURE R6 K19 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K16 ["parse"]
  DUPTABLE R6 K23 [{"process", "exit", "JSON"}]
  SETTABLEKS R2 R6 K20 ["process"]
  SETTABLEKS R3 R6 K21 ["exit"]
  SETTABLEKS R5 R6 K22 ["JSON"]
  RETURN R6 1
