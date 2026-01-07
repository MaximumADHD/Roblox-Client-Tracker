PROTO_0:
  JUMPIFEQ R0 R1 [+20]
  GETIMPORT R3 K1 [require]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Error"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K3 ["new"]
  LOADK R5 K4 ["AssertError"]
  ORK R6 R2 K5 ["Left {left:?} does not equal right {right:?}"]
  CALL R4 2 1
  DUPTABLE R7 K8 [{"left", "right"}]
  SETTABLEKS R0 R7 K6 ["left"]
  SETTABLEKS R1 R7 K7 ["right"]
  NAMECALL R5 R4 K9 ["throw"]
  CALL R5 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  DUPCLOSURE R1 K3 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
