PROTO_0:
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  GETIMPORT R6 K1 [ipairs]
  MOVE R7 R0
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETTABLEKS R11 R10 K2 ["Offset"]
  ADD R3 R3 R11
  GETTABLEKS R11 R10 K3 ["Scale"]
  ADD R4 R4 R11
  GETTABLEKS R11 R10 K2 ["Offset"]
  JUMPIFNOTEQKN R11 K4 [0] [+5]
  GETTABLEKS R11 R10 K3 ["Scale"]
  JUMPIFEQKN R11 K4 [0] [+2]
  ADDK R5 R5 K5 [1]
  FORGLOOP R6 2 [inext] [-16]
  JUMPIFNOTEQKN R5 K4 [0] [+7]
  GETIMPORT R6 K8 [UDim.new]
  LOADN R7 1
  LOADN R8 0
  CALL R6 2 -1
  RETURN R6 -1
  ORK R7 R1 K4 [0]
  MULK R6 R7 K9 [2]
  ADD R3 R3 R6
  ORK R7 R2 K4 [0]
  SUBK R8 R5 K5 [1]
  MUL R6 R7 R8
  ADD R3 R3 R6
  GETIMPORT R6 K8 [UDim.new]
  SUBRK R7 R5 K4 [0]
  MINUS R8 R3
  CALL R6 2 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  RETURN R2 1
