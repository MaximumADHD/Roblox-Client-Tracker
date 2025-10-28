PROTO_0:
  GETIMPORT R2 K1 [_G]
  GETTABLEKS R1 R2 K2 ["__DEV__"]
  JUMPIFNOT R1 [+9]
  GETIMPORT R2 K1 [_G]
  GETTABLEKS R1 R2 K3 ["__COMPAT_WARNINGS__"]
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 0
  LOADK R2 K4 ["oneChild"]
  LOADK R3 K5 ["You likely don't need this at all! If you were assigning children via `React.oneChild(someChildren)`, you can simply use `someChildren` directly."]
  CALL R1 2 0
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  GETIMPORT R1 K7 [next]
  MOVE R2 R0
  CALL R1 1 2
  JUMPIF R2 [+2]
  LOADNIL R3
  RETURN R3 1
  GETIMPORT R3 K7 [next]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  JUMPIFNOT R3 [+5]
  GETIMPORT R4 K9 [error]
  LOADK R5 K10 ["Expected at most one child, had more than one child."]
  LOADN R6 2
  CALL R4 2 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K11 ["Children"]
  GETTABLEKS R4 R5 K12 ["only"]
  MOVE R5 R2
  CALL R4 1 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["react"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K7 ["warnOnce"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R0
  RETURN R2 1
