PROTO_0:
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFEQKS R3 K1 ["start_describe_definition"] [+5]
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFNOTEQKS R3 K2 ["finish_describe_definition"] [+12]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["log"]
  GETTABLEKS R5 R1 K0 ["name"]
  LOADK R6 K4 [":"]
  CONCAT R4 R5 R6
  GETTABLEKS R5 R1 K5 ["blockName"]
  CALL R3 2 0
  JUMP [+132]
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFEQKS R3 K6 ["run_describe_start"] [+5]
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFNOTEQKS R3 K7 ["run_describe_finish"] [+14]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["log"]
  GETTABLEKS R5 R1 K0 ["name"]
  LOADK R6 K4 [":"]
  CONCAT R4 R5 R6
  GETTABLEKS R6 R1 K8 ["describeBlock"]
  GETTABLEKS R5 R6 K0 ["name"]
  CALL R3 2 0
  JUMP [+111]
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFEQKS R3 K9 ["test_start"] [+9]
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFEQKS R3 K10 ["test_retry"] [+5]
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFNOTEQKS R3 K11 ["test_done"] [+14]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["log"]
  GETTABLEKS R5 R1 K0 ["name"]
  LOADK R6 K4 [":"]
  CONCAT R4 R5 R6
  GETTABLEKS R6 R1 K12 ["test"]
  GETTABLEKS R5 R6 K0 ["name"]
  CALL R3 2 0
  JUMP [+86]
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFNOTEQKS R3 K13 ["add_test"] [+12]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["log"]
  GETTABLEKS R5 R1 K0 ["name"]
  LOADK R6 K4 [":"]
  CONCAT R4 R5 R6
  GETTABLEKS R5 R1 K14 ["testName"]
  CALL R3 2 0
  JUMP [+71]
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFEQKS R3 K15 ["test_fn_start"] [+9]
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFEQKS R3 K16 ["test_fn_success"] [+5]
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFNOTEQKS R3 K17 ["test_fn_failure"] [+14]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["log"]
  GETTABLEKS R5 R1 K0 ["name"]
  LOADK R6 K4 [":"]
  CONCAT R4 R5 R6
  GETTABLEKS R6 R1 K12 ["test"]
  GETTABLEKS R5 R6 K0 ["name"]
  CALL R3 2 0
  JUMP [+46]
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFNOTEQKS R3 K18 ["add_hook"] [+12]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["log"]
  GETTABLEKS R5 R1 K0 ["name"]
  LOADK R6 K4 [":"]
  CONCAT R4 R5 R6
  GETTABLEKS R5 R1 K19 ["hookType"]
  CALL R3 2 0
  JUMP [+31]
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFEQKS R3 K20 ["hook_start"] [+9]
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFEQKS R3 K21 ["hook_success"] [+5]
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFNOTEQKS R3 K22 ["hook_failure"] [+14]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["log"]
  GETTABLEKS R5 R1 K0 ["name"]
  LOADK R6 K4 [":"]
  CONCAT R4 R5 R6
  GETTABLEKS R6 R1 K23 ["hook"]
  GETTABLEKS R5 R6 K24 ["type"]
  CALL R3 2 0
  JUMP [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["log"]
  GETTABLEKS R4 R1 K0 ["name"]
  CALL R3 1 0
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFNOTEQKS R3 K25 ["run_finish"] [+17]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["log"]
  LOADK R4 K26 [""]
  CALL R3 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["log"]
  LOADK R4 K27 ["unhandledErrors: %d"]
  GETTABLEKS R7 R2 K28 ["unhandledErrors"]
  LENGTH R6 R7
  NAMECALL R4 R4 K29 ["format"]
  CALL R4 2 -1
  CALL R3 -1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K5 ["luau-polyfill"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETTABLEKS R2 R1 K7 ["console"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  LOADK R6 K8 ["jest-types"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  LOADNIL R4
  DUPCLOSURE R4 K9 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R4 R0 K10 ["default"]
  RETURN R0 1
