PROTO_0:
  PREPVARARGS 0
  NEWTABLE R0 0 0
  LOADN R1 0
  LOADN R4 1
  LOADK R6 K0 ["#"]
  FASTCALL1 SELECT_VARARG R6 [+3]
  GETIMPORT R5 K2 [select]
  GETVARARGS R7 -1
  CALL R5 -1 1
  MOVE R2 R5
  LOADN R3 1
  FORNPREP R2
  FASTCALL1 SELECT_VARARG R4 [+4]
  GETIMPORT R5 K2 [select]
  MOVE R6 R4
  GETVARARGS R7 -1
  CALL R5 -1 1
  FASTCALL1 TYPEOF R5 [+3]
  MOVE R7 R5
  GETIMPORT R6 K4 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKNIL R5 [+2]
  JUMP [+26]
  JUMPIFNOTEQKS R6 K5 ["table"] [+23]
  GETIMPORT R8 K7 [_G]
  GETTABLEKS R7 R8 K8 ["__DEV__"]
  JUMPIFNOT R7 [+8]
  GETUPVAL R7 0
  MOVE R8 R5
  CALL R7 1 1
  JUMPIF R7 [+4]
  GETIMPORT R7 K10 [error]
  LOADK R8 K11 ["Array.concat(...) only works with array-like tables but it received an object-like table.
You can avoid this error by wrapping the object-like table into an array. Example: `concat({1, 2}, {a = true})` should be `concat({1, 2}, { {a = true} }`"]
  CALL R7 1 0
  LOADN R9 1
  LENGTH R7 R5
  LOADN R8 1
  FORNPREP R7
  ADDK R1 R1 K12 [1]
  GETTABLE R10 R5 R9
  SETTABLE R10 R0 R1
  FORNLOOP R7
  JUMP [+2]
  ADDK R1 R1 K12 [1]
  SETTABLE R5 R0 R1
  FORNLOOP R2
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["isArray"]
  CALL R1 1 1
  DUPCLOSURE R2 K6 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
