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
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["Writeable"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETTABLEKS R1 R0 K5 ["Writeable"]
  DUPTABLE R2 K9 [{"stdout", "stderr"}]
  GETTABLEKS R3 R1 K10 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K7 ["stdout"]
  GETTABLEKS R3 R1 K10 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K8 ["stderr"]
  DUPCLOSURE R3 K11 [PROTO_0]
  GETIMPORT R4 K13 [game]
  LOADK R6 K14 ["HttpService"]
  NAMECALL R4 R4 K15 ["GetService"]
  CALL R4 2 1
  DUPTABLE R5 K18 [{"stringify", "parse"}]
  DUPCLOSURE R6 K19 [PROTO_1]
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K16 ["stringify"]
  DUPCLOSURE R6 K20 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K17 ["parse"]
  DUPTABLE R6 K24 [{"process", "exit", "JSON"}]
  SETTABLEKS R2 R6 K21 ["process"]
  SETTABLEKS R3 R6 K22 ["exit"]
  SETTABLEKS R5 R6 K23 ["JSON"]
  RETURN R6 1
