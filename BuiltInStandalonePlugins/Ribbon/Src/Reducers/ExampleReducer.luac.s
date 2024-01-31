PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K2 [{"ExampleCount", "ExampleString"}]
  GETTABLEKS R6 R0 K0 ["ExampleCount"]
  ADDK R5 R6 K3 [1]
  SETTABLEKS R5 R4 K0 ["ExampleCount"]
  GETTABLEKS R5 R1 K4 ["something"]
  SETTABLEKS R5 R4 K1 ["ExampleString"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["join"]
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Actions"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K12 ["ExampleIncrementCount"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K13 ["createReducer"]
  DUPTABLE R7 K16 [{"ExampleCount", "ExampleString"}]
  LOADN R8 0
  SETTABLEKS R8 R7 K14 ["ExampleCount"]
  LOADK R8 K17 [""]
  SETTABLEKS R8 R7 K15 ["ExampleString"]
  NEWTABLE R8 1 0
  GETTABLEKS R9 R5 K18 ["name"]
  DUPCLOSURE R10 K19 [PROTO_0]
  CAPTURE VAL R3
  SETTABLE R10 R8 R9
  CALL R6 2 1
  RETURN R6 1
