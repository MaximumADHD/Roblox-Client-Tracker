PROTO_0:
  PREPVARARGS 1
  MOVE R1 R0
  GETIMPORT R2 K1 [ipairs]
  NEWTABLE R3 0 0
  GETVARARGS R5 -1
  SETLIST R3 R5 -1 [1]
  CALL R2 1 3
  FORGPREP_INEXT R2
  JUMPIFNOTEQKNIL R1 [+3]
  LOADNIL R7
  RETURN R7 1
  GETTABLE R1 R1 R6
  FORGLOOP R2 2 [inext] [-6]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  SETGLOBAL R0 K1 ["optional"]
  GETGLOBAL R0 K1 ["optional"]
  RETURN R0 1
