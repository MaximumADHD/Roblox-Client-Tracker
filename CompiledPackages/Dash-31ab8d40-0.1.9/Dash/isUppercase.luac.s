PROTO_0:
  GETUPVAL R1 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  LOADK R3 K2 ["string"]
  LOADK R4 K3 ["Attempted to call Dash.isUppercase with argument #1 of type {left:?} not {right:?}"]
  CALL R1 3 0
  GETUPVAL R1 0
  LENGTH R3 R0
  LOADN R4 0
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  LOADB R3 1
  LOADK R4 K4 ["Attempted to call Dash.isUppercase with an empty string"]
  CALL R1 3 0
  LOADN R3 1
  LOADN R4 1
  NAMECALL R1 R0 K5 ["sub"]
  CALL R1 3 1
  NAMECALL R3 R1 K6 ["upper"]
  CALL R3 1 1
  JUMPIFEQ R1 R3 [+2]
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
