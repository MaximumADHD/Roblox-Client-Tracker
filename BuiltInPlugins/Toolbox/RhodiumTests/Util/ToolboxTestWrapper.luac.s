PROTO_0:
  DUPTABLE R1 K1 [{"theme"}]
  GETUPVAL R2 0
  CALL R2 0 1
  SETTABLEKS R2 R1 K0 ["theme"]
  SETTABLEKS R1 R0 K2 ["state"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["theme"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K6 [{"backgrounds", "suggestions", "Size"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["BACKGROUNDS"]
  SETTABLEKS R6 R5 K3 ["backgrounds"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K8 ["SUGGESTIONS"]
  SETTABLEKS R6 R5 K4 ["suggestions"]
  GETIMPORT R6 K11 [UDim2.new]
  LOADN R7 0
  LOADN R8 144
  LOADN R9 0
  LOADN R10 144
  CALL R6 4 1
  SETTABLEKS R6 R5 K5 ["Size"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K7 ["Core"]
  GETTABLEKS R3 R4 K8 ["Util"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K9 ["makeTheme"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K7 ["Core"]
  GETTABLEKS R7 R8 K10 ["Components"]
  GETTABLEKS R6 R7 K11 ["Toolbox"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K7 ["Core"]
  GETTABLEKS R8 R9 K12 ["Types"]
  GETTABLEKS R7 R8 K13 ["Suggestion"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K7 ["Core"]
  GETTABLEKS R9 R10 K12 ["Types"]
  GETTABLEKS R8 R9 K14 ["Background"]
  CALL R7 1 1
  GETTABLEKS R8 R2 K15 ["PureComponent"]
  LOADK R10 K16 ["ToolboxTestWrapper"]
  NAMECALL R8 R8 K17 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K18 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K19 ["init"]
  DUPCLOSURE R9 K20 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K21 ["render"]
  RETURN R8 1
