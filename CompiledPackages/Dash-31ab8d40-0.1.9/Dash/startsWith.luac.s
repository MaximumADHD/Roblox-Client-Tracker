PROTO_0:
  GETUPVAL R2 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  LOADK R4 K2 ["string"]
  LOADK R5 K3 ["Attempted to call Dash.startsWith with argument #1 of type {left:?} not {right:?}"]
  CALL R2 3 0
  GETUPVAL R2 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  LOADK R4 K2 ["string"]
  LOADK R5 K4 ["Attempted to call Dash.startsWith with argument #2 of type {left:?} not {right:?}"]
  CALL R2 3 0
  LOADN R5 1
  NAMECALL R6 R1 K5 ["len"]
  CALL R6 1 -1
  NAMECALL R3 R0 K6 ["sub"]
  CALL R3 -1 1
  JUMPIFEQ R3 R1 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

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
