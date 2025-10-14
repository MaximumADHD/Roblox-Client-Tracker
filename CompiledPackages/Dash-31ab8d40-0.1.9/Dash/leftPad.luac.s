PROTO_0:
  GETUPVAL R3 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  LOADK R5 K2 ["string"]
  LOADK R6 K3 ["Attempted to call Dash.leftPad with argument #1 of type {left:?} not {right:?}"]
  CALL R3 3 0
  GETUPVAL R3 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  LOADK R5 K4 ["number"]
  LOADK R6 K5 ["Attempted to call Dash.leftPad with argument #2 of type {left:?} not {right:?}"]
  CALL R3 3 0
  ORK R3 R2 K6 [" "]
  GETUPVAL R4 0
  FASTCALL1 TYPEOF R3 [+3]
  MOVE R6 R3
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  LOADK R6 K2 ["string"]
  LOADK R7 K7 ["Attempted to call Dash.leftPad with argument #3 of type {left:?} not {right:?}"]
  CALL R4 3 0
  NAMECALL R5 R0 K8 ["len"]
  CALL R5 1 1
  SUB R4 R1 R5
  NAMECALL R6 R3 K8 ["len"]
  CALL R6 1 1
  MOD R5 R4 R6
  SUB R7 R4 R5
  NAMECALL R8 R3 K8 ["len"]
  CALL R8 1 1
  DIV R6 R7 R8
  GETIMPORT R11 K10 [string.rep]
  ORK R12 R3 K6 [" "]
  MOVE R13 R6
  CALL R11 2 1
  MOVE R8 R11
  LOADN R13 1
  MOVE R14 R5
  NAMECALL R11 R3 K11 ["sub"]
  CALL R11 3 1
  MOVE R9 R11
  MOVE R10 R0
  CONCAT R7 R8 R10
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["assertEqual"]
  CALL R1 1 1
  DUPCLOSURE R2 K6 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
