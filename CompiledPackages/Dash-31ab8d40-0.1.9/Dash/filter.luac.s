PROTO_0:
  GETUPVAL R2 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  LOADK R4 K2 ["table"]
  LOADK R5 K3 ["Attempted to call Dash.filter with argument #1 of type {left:?} not {right:?}"]
  CALL R2 3 0
  GETUPVAL R2 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  LOADK R4 K4 ["function"]
  LOADK R5 K5 ["Attempted to call Dash.filter with argument #2 of type {left:?} not {right:?}"]
  CALL R2 3 0
  NEWTABLE R2 0 0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP R3
  MOVE R8 R1
  MOVE R9 R7
  MOVE R10 R6
  CALL R8 2 1
  JUMPIFNOT R8 [+7]
  FASTCALL2 TABLE_INSERT R2 R7 [+5]
  MOVE R9 R2
  MOVE R10 R7
  GETIMPORT R8 K7 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-13]
  RETURN R2 1

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
