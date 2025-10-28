PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["error"]
  GETUPVAL R2 1
  LOADK R3 K1 [" is only available in tests, not in production"]
  CONCAT R1 R2 R3
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  RETURN R1 1

PROTO_2:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K5 ["luau-polyfill"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETTABLEKS R0 R1 K7 ["console"]
  DUPCLOSURE R1 K8 [PROTO_1]
  CAPTURE VAL R0
  GETIMPORT R2 K1 [require]
  GETIMPORT R3 K3 [script]
  LOADK R5 K9 ["ReactCurrentDispatcher"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R4 K3 [script]
  LOADK R6 K10 ["ReactCurrentBatchConfig"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R5 K3 [script]
  LOADK R7 K11 ["ReactCurrentOwner"]
  NAMECALL R5 R5 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R6 K3 [script]
  LOADK R8 K12 ["ReactDebugCurrentFrame"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R7 K3 [script]
  LOADK R9 K13 ["IsSomeRendererActing"]
  NAMECALL R7 R7 K6 ["WaitForChild"]
  CALL R7 2 -1
  CALL R6 -1 1
  DUPTABLE R7 K14 [{"ReactCurrentDispatcher", "ReactCurrentBatchConfig", "ReactCurrentOwner", "IsSomeRendererActing", "ReactDebugCurrentFrame"}]
  SETTABLEKS R2 R7 K9 ["ReactCurrentDispatcher"]
  SETTABLEKS R3 R7 K10 ["ReactCurrentBatchConfig"]
  SETTABLEKS R4 R7 K11 ["ReactCurrentOwner"]
  SETTABLEKS R6 R7 K13 ["IsSomeRendererActing"]
  GETIMPORT R10 K16 [_G]
  GETTABLEKS R9 R10 K17 ["__DEV__"]
  JUMPIFNOT R9 [+2]
  MOVE R8 R5
  JUMP [+4]
  DUPTABLE R8 K19 [{"setExtraStackFrame"}]
  DUPCLOSURE R9 K20 [PROTO_2]
  SETTABLEKS R9 R8 K18 ["setExtraStackFrame"]
  SETTABLEKS R8 R7 K12 ["ReactDebugCurrentFrame"]
  RETURN R7 1
