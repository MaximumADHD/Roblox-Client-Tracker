PROTO_0:
  GETUPVAL R1 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  LOADK R3 K2 ["string"]
  LOADK R4 K3 ["Attempted to call Dash.trim with argument #1 of type {left:?} not {right:?}"]
  CALL R1 3 0
  LOADK R3 K4 ["^%s*(.-)%s*$"]
  NAMECALL R1 R0 K5 ["match"]
  CALL R1 2 -1
  RETURN R1 -1

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
