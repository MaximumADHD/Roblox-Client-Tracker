PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["__DEV__"]
  JUMPIFNOT R1 [+8]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["__COMPAT_WARNINGS__"]
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 1
  LOADK R2 K2 ["oneChild"]
  LOADK R3 K3 ["You likely don't need this at all! If you were assigning children via `React.oneChild(someChildren)`, you can simply use `someChildren` directly."]
  CALL R1 2 0
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  GETIMPORT R1 K5 [next]
  MOVE R2 R0
  CALL R1 1 2
  JUMPIF R2 [+2]
  LOADNIL R3
  RETURN R3 1
  GETIMPORT R3 K5 [next]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  JUMPIFNOT R3 [+5]
  GETIMPORT R4 K7 [error]
  LOADK R5 K8 ["Expected at most one child, had more than one child."]
  LOADN R6 2
  CALL R4 2 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K9 ["Children"]
  GETTABLEKS R4 R5 K10 ["only"]
  MOVE R5 R2
  CALL R4 1 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K6 ["ReactGlobals"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K7 ["warnOnce"]
  CALL R3 1 1
  DUPCLOSURE R4 K8 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R4 1
