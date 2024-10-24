PROTO_0:
  ADDK R2 R0 K0 [0.5]
  FASTCALL1 MATH_FLOOR R2 [+2]
  GETIMPORT R1 K3 [math.floor]
  CALL R1 1 1
  RETURN R1 1

PROTO_1:
  JUMPIFNOT R1 [+2]
  JUMPIFNOTEQKN R1 K0 [0] [+2]
  RETURN R0 1
  DIVK R3 R1 K1 [2]
  ADD R2 R0 R3
  MOD R4 R2 R1
  SUB R3 R2 R4
  RETURN R3 1

PROTO_2:
  GETGLOBAL R2 K0 ["round"]
  GETTABLEKS R3 R0 K1 ["X"]
  CALL R2 1 1
  GETGLOBAL R3 K0 ["round"]
  GETTABLEKS R4 R0 K2 ["Y"]
  CALL R3 1 1
  GETGLOBAL R4 K0 ["round"]
  GETTABLEKS R5 R0 K3 ["Z"]
  CALL R4 1 -1
  FASTCALL VECTOR [+2]
  GETIMPORT R1 K6 [Vector3.new]
  CALL R1 -1 1
  RETURN R1 1

PROTO_3:
  GETGLOBAL R3 K0 ["roundToNearest"]
  GETTABLEKS R4 R0 K1 ["X"]
  MOVE R5 R1
  CALL R3 2 1
  GETGLOBAL R4 K0 ["roundToNearest"]
  GETTABLEKS R5 R0 K2 ["Y"]
  MOVE R6 R1
  CALL R4 2 1
  GETGLOBAL R5 K0 ["roundToNearest"]
  GETTABLEKS R6 R0 K3 ["Z"]
  MOVE R7 R1
  CALL R5 2 -1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K6 [Vector3.new]
  CALL R2 -1 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  SETGLOBAL R0 K1 ["round"]
  DUPCLOSURE R0 K2 [PROTO_1]
  SETGLOBAL R0 K3 ["roundToNearest"]
  DUPCLOSURE R0 K4 [PROTO_2]
  SETGLOBAL R0 K5 ["roundVector3"]
  DUPCLOSURE R0 K6 [PROTO_3]
  SETGLOBAL R0 K7 ["roundVector3ToNearest"]
  NEWTABLE R0 2 0
  GETGLOBAL R1 K3 ["roundToNearest"]
  SETTABLEKS R1 R0 K3 ["roundToNearest"]
  GETGLOBAL R1 K7 ["roundVector3ToNearest"]
  SETTABLEKS R1 R0 K7 ["roundVector3ToNearest"]
  RETURN R0 1
