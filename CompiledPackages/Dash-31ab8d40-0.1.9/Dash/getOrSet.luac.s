PROTO_0:
  GETUPVAL R3 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  LOADK R5 K2 ["table"]
  LOADK R6 K3 ["Attempted to call Dash.getOrSet with argument #1 of type {left:?} not {right:?}"]
  CALL R3 3 0
  GETUPVAL R3 0
  JUMPIFEQKNIL R1 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  LOADB R5 0
  LOADK R6 K4 ["Attempted to call Dash.getOrSet with a nil key argument"]
  CALL R3 3 0
  GETUPVAL R3 0
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R5 R2
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  LOADK R5 K5 ["function"]
  LOADK R6 K6 ["Attempted to call Dash.getOrSet with argument #3 of type {left:?} not {right:?}"]
  CALL R3 3 0
  GETTABLE R3 R0 R1
  JUMPIFNOTEQKNIL R3 [+6]
  MOVE R3 R2
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLE R3 R0 R1
  GETTABLE R3 R0 R1
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K6 ["Error"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K7 ["assertEqual"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R0 K8 ["format"]
  CALL R4 1 1
  DUPCLOSURE R5 K9 [PROTO_0]
  CAPTURE VAL R3
  RETURN R5 1
