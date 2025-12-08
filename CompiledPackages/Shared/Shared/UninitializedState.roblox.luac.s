PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["__DEV__"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["warn"]
  LOADK R3 K2 ["Attempted to access uninitialized state. Use setState to initialize state"]
  CALL R2 1 0
  LOADNIL R2
  RETURN R2 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["__DEV__"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["error"]
  LOADK R3 K2 ["Attempted to directly mutate state. Use setState to assign new values to state."]
  CALL R2 1 0
  LOADNIL R2
  RETURN R2 1

PROTO_2:
  LOADK R1 K0 ["<uninitialized component state>"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["console"]
  CALL R0 1 1
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETIMPORT R2 K1 [require]
  GETTABLEKS R3 R1 K6 ["ReactGlobals"]
  CALL R2 1 1
  NEWTABLE R3 0 0
  DUPTABLE R6 K11 [{"__index", "__newindex", "__tostring", "__metatable"}]
  DUPCLOSURE R7 K12 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K7 ["__index"]
  DUPCLOSURE R7 K13 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K8 ["__newindex"]
  DUPCLOSURE R7 K14 [PROTO_2]
  SETTABLEKS R7 R6 K9 ["__tostring"]
  LOADK R7 K15 ["UninitializedState"]
  SETTABLEKS R7 R6 K10 ["__metatable"]
  FASTCALL2 SETMETATABLE R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K17 [setmetatable]
  CALL R4 2 0
  RETURN R3 1
