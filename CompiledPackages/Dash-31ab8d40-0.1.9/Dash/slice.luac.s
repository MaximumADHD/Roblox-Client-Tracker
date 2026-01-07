PROTO_0:
  GETUPVAL R3 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  LOADK R5 K2 ["table"]
  LOADK R6 K3 ["Attempted to call Dash.slice with argument #1 of type {left:?} not {right:?}"]
  CALL R3 3 0
  NEWTABLE R3 0 0
  ORK R1 R1 K4 [1]
  MOVE R4 R2
  JUMPIF R4 [+1]
  LENGTH R4 R0
  MOVE R2 R4
  GETUPVAL R4 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  LOADK R6 K5 ["number"]
  LOADK R7 K6 ["Attempted to call Dash.slice with argument #2 of type {left:?} not {right:?}"]
  CALL R4 3 0
  GETUPVAL R4 0
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R6 R2
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  LOADK R6 K5 ["number"]
  LOADK R7 K7 ["Attempted to call Dash.slice with argument #3 of type {left:?} not {right:?}"]
  CALL R4 3 0
  LOADN R4 0
  JUMPIFNOTLT R1 R4 [+3]
  LENGTH R4 R0
  ADD R1 R4 R1
  JUMPIFNOT R2 [+5]
  LOADN R4 0
  JUMPIFNOTLT R2 R4 [+3]
  LENGTH R4 R0
  ADD R2 R4 R2
  MOVE R6 R1
  MOVE R4 R2
  LOADN R5 1
  FORNPREP R4
  GETTABLE R9 R0 R6
  FASTCALL2 TABLE_INSERT R3 R9 [+3]
  MOVE R8 R3
  GETUPVAL R7 1
  CALL R7 2 0
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
  GETIMPORT R3 K9 [table.insert]
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1
