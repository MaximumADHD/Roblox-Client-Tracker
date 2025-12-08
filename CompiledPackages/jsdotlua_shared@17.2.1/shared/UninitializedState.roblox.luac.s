PROTO_0:
  GETIMPORT R3 K1 [_G]
  GETTABLEKS R2 R3 K2 ["__DEV__"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["warn"]
  LOADK R3 K4 ["Attempted to access uninitialized state. Use setState to initialize state"]
  CALL R2 1 0
  LOADNIL R2
  RETURN R2 1

PROTO_1:
  GETIMPORT R3 K1 [_G]
  GETTABLEKS R2 R3 K2 ["__DEV__"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["error"]
  LOADK R3 K4 ["Attempted to directly mutate state. Use setState to assign new values to state."]
  CALL R2 1 0
  LOADNIL R2
  RETURN R2 1

PROTO_2:
  LOADK R1 K0 ["<uninitialized component state>"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["console"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  NEWTABLE R1 0 0
  DUPTABLE R4 K11 [{"__index", "__newindex", "__tostring", "__metatable"}]
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K7 ["__index"]
  DUPCLOSURE R5 K13 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K8 ["__newindex"]
  DUPCLOSURE R5 K14 [PROTO_2]
  SETTABLEKS R5 R4 K9 ["__tostring"]
  LOADK R5 K15 ["UninitializedState"]
  SETTABLEKS R5 R4 K10 ["__metatable"]
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K17 [setmetatable]
  CALL R2 2 0
  RETURN R1 1
