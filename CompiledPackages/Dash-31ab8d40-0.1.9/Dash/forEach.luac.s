PROTO_0:
  GETUPVAL R2 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  LOADK R4 K2 ["table"]
  LOADK R5 K3 ["Attempted to call Dash.forEach with argument #1 of type {left:?} not {right:?}"]
  CALL R2 3 0
  GETUPVAL R2 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  LOADK R4 K4 ["function"]
  LOADK R5 K5 ["Attempted to call Dash.forEach with argument #2 of type {left:?} not {right:?}"]
  CALL R2 3 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP R2
  MOVE R7 R1
  MOVE R8 R6
  MOVE R9 R5
  CALL R7 2 0
  FORGLOOP R2 2 [-5]
  RETURN R0 0

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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K7 ["iterator"]
  CALL R3 1 1
  DUPCLOSURE R4 K8 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1
