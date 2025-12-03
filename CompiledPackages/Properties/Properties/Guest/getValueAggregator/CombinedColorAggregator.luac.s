PROTO_0:
  DUPTABLE R2 K4 [{"value", "color3", "brickColor", "transparency"}]
  DUPTABLE R3 K6 [{"value", "multiple"}]
  SETTABLEKS R1 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["multiple"]
  SETTABLEKS R3 R2 K0 ["value"]
  DUPTABLE R3 K6 [{"value", "multiple"}]
  GETTABLEKS R4 R1 K1 ["color3"]
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["multiple"]
  SETTABLEKS R3 R2 K1 ["color3"]
  DUPTABLE R3 K6 [{"value", "multiple"}]
  GETTABLEKS R4 R1 K2 ["brickColor"]
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["multiple"]
  SETTABLEKS R3 R2 K2 ["brickColor"]
  DUPTABLE R3 K6 [{"value", "multiple"}]
  GETTABLEKS R4 R1 K3 ["transparency"]
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["multiple"]
  SETTABLEKS R3 R2 K3 ["transparency"]
  RETURN R2 1

PROTO_1:
  GETTABLEKS R4 R1 K0 ["value"]
  GETTABLEKS R3 R4 K1 ["multiple"]
  JUMPIFNOT R3 [+17]
  GETTABLEKS R4 R1 K2 ["transparency"]
  GETTABLEKS R3 R4 K1 ["multiple"]
  JUMPIFNOT R3 [+12]
  GETTABLEKS R4 R1 K3 ["color3"]
  GETTABLEKS R3 R4 K1 ["multiple"]
  JUMPIFNOT R3 [+7]
  GETTABLEKS R4 R1 K4 ["brickColor"]
  GETTABLEKS R3 R4 K1 ["multiple"]
  JUMPIFNOT R3 [+2]
  LOADB R3 1
  RETURN R3 1
  GETTABLEKS R4 R1 K3 ["color3"]
  GETTABLEKS R3 R4 K1 ["multiple"]
  JUMPIF R3 [+22]
  GETTABLEKS R3 R2 K3 ["color3"]
  JUMPIFEQKNIL R3 [+19]
  GETTABLEKS R3 R2 K3 ["color3"]
  GETTABLEKS R5 R1 K3 ["color3"]
  GETTABLEKS R4 R5 K0 ["value"]
  JUMPIFEQ R3 R4 [+11]
  GETTABLEKS R3 R1 K3 ["color3"]
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["multiple"]
  GETTABLEKS R3 R1 K0 ["value"]
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["multiple"]
  GETTABLEKS R4 R1 K4 ["brickColor"]
  GETTABLEKS R3 R4 K1 ["multiple"]
  JUMPIF R3 [+22]
  GETTABLEKS R3 R2 K4 ["brickColor"]
  JUMPIFEQKNIL R3 [+19]
  GETTABLEKS R3 R2 K4 ["brickColor"]
  GETTABLEKS R5 R1 K4 ["brickColor"]
  GETTABLEKS R4 R5 K0 ["value"]
  JUMPIFEQ R3 R4 [+11]
  GETTABLEKS R3 R1 K4 ["brickColor"]
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["multiple"]
  GETTABLEKS R3 R1 K0 ["value"]
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["multiple"]
  GETTABLEKS R4 R1 K2 ["transparency"]
  GETTABLEKS R3 R4 K1 ["multiple"]
  JUMPIF R3 [+22]
  GETTABLEKS R3 R2 K2 ["transparency"]
  JUMPIFEQKNIL R3 [+19]
  GETTABLEKS R3 R2 K2 ["transparency"]
  GETTABLEKS R5 R1 K2 ["transparency"]
  GETTABLEKS R4 R5 K0 ["value"]
  JUMPIFEQ R3 R4 [+11]
  GETTABLEKS R3 R1 K2 ["transparency"]
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["multiple"]
  GETTABLEKS R3 R1 K0 ["value"]
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["multiple"]
  GETTABLEKS R4 R1 K0 ["value"]
  GETTABLEKS R3 R4 K1 ["multiple"]
  JUMPIFNOT R3 [+14]
  GETTABLEKS R4 R1 K3 ["color3"]
  GETTABLEKS R3 R4 K1 ["multiple"]
  JUMPIFNOT R3 [+9]
  GETTABLEKS R4 R1 K2 ["transparency"]
  GETTABLEKS R3 R4 K1 ["multiple"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R4 R1 K4 ["brickColor"]
  GETTABLEKS R3 R4 K1 ["multiple"]
  RETURN R3 1

PROTO_2:
  JUMPIFNOTEQKS R4 K0 ["color3"] [+24]
  MOVE R8 R2
  MOVE R6 R3
  LOADN R7 1
  FORNPREP R6
  GETIMPORT R9 K3 [table.clone]
  GETTABLE R10 R1 R8
  CALL R9 1 1
  SETTABLEKS R5 R9 K0 ["color3"]
  GETTABLEKS R10 R9 K4 ["brickColor"]
  JUMPIFEQKNIL R10 [+7]
  GETIMPORT R10 K7 [BrickColor.new]
  MOVE R11 R5
  CALL R10 1 1
  SETTABLEKS R10 R9 K4 ["brickColor"]
  SETTABLE R9 R1 R8
  FORNLOOP R6
  JUMP [+56]
  JUMPIFNOTEQKS R4 K4 ["brickColor"] [+22]
  MOVE R8 R2
  MOVE R6 R3
  LOADN R7 1
  FORNPREP R6
  GETIMPORT R9 K3 [table.clone]
  GETTABLE R10 R1 R8
  CALL R9 1 1
  SETTABLEKS R5 R9 K4 ["brickColor"]
  GETTABLEKS R10 R9 K0 ["color3"]
  JUMPIFEQKNIL R10 [+5]
  GETTABLEKS R10 R5 K8 ["Color"]
  SETTABLEKS R10 R9 K0 ["color3"]
  SETTABLE R9 R1 R8
  FORNLOOP R6
  JUMP [+33]
  JUMPIFNOTEQKS R4 K9 ["transparency"] [+14]
  MOVE R8 R2
  MOVE R6 R3
  LOADN R7 1
  FORNPREP R6
  GETIMPORT R9 K3 [table.clone]
  GETTABLE R10 R1 R8
  CALL R9 1 1
  SETTABLEKS R5 R9 K9 ["transparency"]
  SETTABLE R9 R1 R8
  FORNLOOP R6
  JUMP [+18]
  JUMPIFNOTEQKS R4 K10 ["value"] [+8]
  MOVE R8 R2
  MOVE R6 R3
  LOADN R7 1
  FORNPREP R6
  SETTABLE R5 R1 R8
  FORNLOOP R6
  JUMP [+9]
  GETIMPORT R6 K12 [error]
  LOADK R8 K13 ["Unexpected CombinedColor part: %*"]
  MOVE R10 R4
  NAMECALL R8 R8 K14 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  CALL R6 1 0
  LOADNIL R6
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["PropertyEditorTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R0 K7 ["PropertyTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R0 K8 ["RpcTypes"]
  CALL R3 1 1
  DUPCLOSURE R4 K9 [PROTO_0]
  DUPCLOSURE R5 K10 [PROTO_1]
  DUPCLOSURE R6 K11 [PROTO_2]
  DUPTABLE R7 K15 [{"initParts", "addToAggregation", "setPart"}]
  SETTABLEKS R4 R7 K12 ["initParts"]
  SETTABLEKS R5 R7 K13 ["addToAggregation"]
  SETTABLEKS R6 R7 K14 ["setPart"]
  RETURN R7 1
