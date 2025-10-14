PROTO_0:
  GETUPVAL R3 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  LOADK R5 K2 ["table"]
  LOADK R6 K3 ["Attempted to call Dash.reduce with argument #1 of type {left:?} not {right:?}"]
  CALL R3 3 0
  GETUPVAL R3 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  LOADK R5 K4 ["function"]
  LOADK R6 K5 ["Attempted to call Dash.reduce with argument #2 of type {left:?} not {right:?}"]
  CALL R3 3 0
  MOVE R3 R2
  LOADN R6 1
  LENGTH R4 R0
  LOADN R5 1
  FORNPREP R4
  MOVE R7 R1
  MOVE R8 R3
  GETTABLE R9 R0 R6
  MOVE R10 R6
  CALL R7 3 1
  MOVE R3 R7
  FORNLOOP R4
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K6 ["assertEqual"]
  CALL R2 1 1
  DUPCLOSURE R3 K7 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
