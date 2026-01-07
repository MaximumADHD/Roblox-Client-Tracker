PROTO_0:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIFNOTEQKNIL R2 [+13]
  GETUPVAL R3 1
  JUMPIFNOT R3 [+10]
  GETUPVAL R3 2
  DUPTABLE R5 K2 [{"key", "objectName"}]
  SETTABLEKS R1 R5 K0 ["key"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K1 ["objectName"]
  NAMECALL R3 R3 K3 ["throw"]
  CALL R3 2 0
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  DUPTABLE R4 K2 [{"key", "objectName"}]
  SETTABLEKS R1 R4 K0 ["key"]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K1 ["objectName"]
  NAMECALL R2 R2 K3 ["throw"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  LENGTH R0 R1
  RETURN R0 1

PROTO_3:
  GETUPVAL R0 0
  LOADK R1 K0 ["Frozen({})"]
  GETUPVAL R2 1
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  PREPVARARGS 1
  GETUPVAL R1 0
  MOVE R2 R1
  GETVARARGS R3 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R3 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  LOADK R5 K2 ["string"]
  LOADK R6 K3 ["Attempted to call Dash.freeze with argument #1 of type {left:?} not {right:?}"]
  CALL R3 3 0
  GETUPVAL R3 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  LOADK R5 K4 ["table"]
  LOADK R6 K5 ["Attempted to call Dash.freeze with argument #2 of type {left:?} not {right:?}"]
  CALL R3 3 0
  NEWTABLE R3 0 0
  DUPTABLE R6 K11 [{"__index", "__newindex", "__len", "__tostring", "__call"}]
  NEWCLOSURE R7 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K6 ["__index"]
  NEWCLOSURE R7 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K7 ["__newindex"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K8 ["__len"]
  NEWCLOSURE R7 P3
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K9 ["__tostring"]
  NEWCLOSURE R7 P4
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K10 ["__call"]
  FASTCALL2 SETMETATABLE R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K13 [setmetatable]
  CALL R4 2 0
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
  GETTABLEKS R5 R2 K9 ["new"]
  LOADK R6 K10 ["ReadonlyKey"]
  LOADK R7 K11 ["Attempted to write to readonly key {key:?} of frozen object {objectName:?}"]
  CALL R5 2 1
  GETTABLEKS R6 R2 K9 ["new"]
  LOADK R7 K12 ["MissingKey"]
  LOADK R8 K13 ["Attempted to read missing key {key:?} of frozen object {objectName:?}"]
  CALL R6 2 1
  DUPCLOSURE R7 K14 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R7 1
