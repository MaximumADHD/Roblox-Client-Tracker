PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["map"]
  GETTABLEKS R4 R0 K1 ["testResults"]
  GETUPVAL R5 1
  CALL R3 2 1
  GETTABLEKS R4 R0 K2 ["testExecError"]
  JUMPIFEQKNIL R4 [+41]
  GETIMPORT R5 K5 [DateTime.now]
  CALL R5 0 1
  GETTABLEKS R4 R5 K6 ["UnixTimestampMillis"]
  DUPTABLE R5 K15 [{"assertionResults", "coverage", "endTime", "message", "name", "startTime", "status", "summary"}]
  SETTABLEKS R3 R5 K7 ["assertionResults"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K8 ["coverage"]
  SETTABLEKS R4 R5 K9 ["endTime"]
  GETTABLEKS R7 R0 K16 ["failureMessage"]
  JUMPIFEQKNIL R7 [+4]
  GETTABLEKS R6 R0 K16 ["failureMessage"]
  JUMP [+4]
  GETTABLEKS R7 R0 K2 ["testExecError"]
  GETTABLEKS R6 R7 K10 ["message"]
  SETTABLEKS R6 R5 K10 ["message"]
  GETTABLEKS R6 R0 K17 ["testFilePath"]
  SETTABLEKS R6 R5 K11 ["name"]
  SETTABLEKS R4 R5 K12 ["startTime"]
  LOADK R6 K18 ["failed"]
  SETTABLEKS R6 R5 K13 ["status"]
  LOADK R6 K19 [""]
  SETTABLEKS R6 R5 K14 ["summary"]
  RETURN R5 1
  GETTABLEKS R5 R0 K20 ["numFailingTests"]
  JUMPIFEQKN R5 K21 [0] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  DUPTABLE R5 K15 [{"assertionResults", "coverage", "endTime", "message", "name", "startTime", "status", "summary"}]
  SETTABLEKS R3 R5 K7 ["assertionResults"]
  JUMPIFEQKNIL R1 [+7]
  MOVE R6 R1
  GETTABLEKS R7 R0 K8 ["coverage"]
  MOVE R8 R2
  CALL R6 2 1
  JUMP [+2]
  GETTABLEKS R6 R0 K8 ["coverage"]
  SETTABLEKS R6 R5 K8 ["coverage"]
  GETTABLEKS R7 R0 K23 ["perfStats"]
  GETTABLEKS R6 R7 K22 ["end"]
  SETTABLEKS R6 R5 K9 ["endTime"]
  GETTABLEKS R7 R0 K16 ["failureMessage"]
  JUMPIFEQKNIL R7 [+4]
  GETTABLEKS R6 R0 K16 ["failureMessage"]
  JUMP [+1]
  LOADK R6 K19 [""]
  SETTABLEKS R6 R5 K10 ["message"]
  GETTABLEKS R6 R0 K17 ["testFilePath"]
  SETTABLEKS R6 R5 K11 ["name"]
  GETTABLEKS R7 R0 K23 ["perfStats"]
  GETTABLEKS R6 R7 K24 ["start"]
  SETTABLEKS R6 R5 K12 ["startTime"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K25 ["toJSBoolean"]
  MOVE R8 R4
  CALL R7 1 1
  JUMPIFNOT R7 [+2]
  LOADK R6 K26 ["passed"]
  JUMP [+1]
  LOADK R6 K18 ["failed"]
  SETTABLEKS R6 R5 K13 ["status"]
  LOADK R6 K19 [""]
  SETTABLEKS R6 R5 K14 ["summary"]
  RETURN R5 1

PROTO_1:
  DUPTABLE R1 K7 [{"ancestorTitles", "duration", "failureMessages", "fullName", "location", "status", "title"}]
  GETTABLEKS R2 R0 K0 ["ancestorTitles"]
  SETTABLEKS R2 R1 K0 ["ancestorTitles"]
  GETTABLEKS R2 R0 K1 ["duration"]
  SETTABLEKS R2 R1 K1 ["duration"]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["failureMessages"]
  GETTABLEKS R2 R0 K3 ["fullName"]
  SETTABLEKS R2 R1 K3 ["fullName"]
  GETTABLEKS R2 R0 K4 ["location"]
  SETTABLEKS R2 R1 K4 ["location"]
  GETTABLEKS R2 R0 K5 ["status"]
  SETTABLEKS R2 R1 K5 ["status"]
  GETTABLEKS R2 R0 K6 ["title"]
  SETTABLEKS R2 R1 K6 ["title"]
  GETTABLEKS R2 R0 K2 ["failureMessages"]
  JUMPIFNOT R2 [+4]
  GETTABLEKS R2 R0 K2 ["failureMessages"]
  SETTABLEKS R2 R1 K2 ["failureMessages"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R1 3 1
  RETURN R1 1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["map"]
  GETTABLEKS R4 R0 K1 ["testResults"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R2
  CALL R3 2 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["assign"]
  NEWTABLE R5 0 0
  MOVE R6 R0
  DUPTABLE R7 K3 [{"testResults"}]
  SETTABLEKS R3 R7 K1 ["testResults"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["luau-polyfill"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETTABLEKS R1 R0 K7 ["Array"]
  GETTABLEKS R2 R0 K8 ["Boolean"]
  GETTABLEKS R3 R0 K9 ["Object"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  LOADK R7 K10 ["types"]
  NAMECALL R5 R5 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  LOADNIL R5
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CAPTURE REF R5
  CAPTURE VAL R2
  DUPCLOSURE R5 K11 [PROTO_1]
  DUPCLOSURE R7 K12 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R3
  DUPTABLE R8 K14 [{"default"}]
  SETTABLEKS R7 R8 K13 ["default"]
  CLOSEUPVALS R5
  RETURN R8 1
