PROTO_0:
  GETTABLEKS R2 R0 K0 ["_context"]
  GETUPVAL R3 0
  GETTABLEKS R4 R1 K1 ["networkInterface"]
  SETTABLE R4 R2 R3
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["oneChild"]
  GETTABLEKS R3 R0 K1 ["props"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Children"]
  GETTABLE R2 R3 R4
  CALL R1 1 -1
  RETURN R1 -1

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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K3 ["Packages"]
  GETTABLEKS R4 R5 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K8 ["ContextServices"]
  GETTABLEKS R4 R5 K9 ["ContextItem"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K12 ["Symbol"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K13 ["named"]
  LOADK R7 K14 ["NetworkInterface"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K15 ["PureComponent"]
  LOADK R9 K16 ["NetworkContext"]
  NAMECALL R7 R7 K17 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K18 [PROTO_0]
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K19 ["init"]
  DUPCLOSURE R8 K20 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K21 ["render"]
  LOADK R10 K22 ["Network"]
  NAMECALL R8 R4 K23 ["createSimple"]
  CALL R8 2 -1
  RETURN R8 -1
