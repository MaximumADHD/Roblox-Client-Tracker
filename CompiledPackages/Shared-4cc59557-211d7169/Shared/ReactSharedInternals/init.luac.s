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

PROTO_3:
  GETIMPORT R1 K1 [_G]
  GETTABLEKS R0 R1 K2 ["__DEV__"]
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 0
  RETURN R0 1
  DUPTABLE R0 K4 [{"setExtraStackFrame"}]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K3 ["setExtraStackFrame"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K5 ["LuauPolyfill"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K6 ["console"]
  DUPCLOSURE R2 K7 [PROTO_1]
  CAPTURE VAL R1
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["ReactCurrentDispatcher"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K9 ["ReactCurrentBatchConfig"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K10 ["ReactCurrentOwner"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K11 ["ReactDebugCurrentFrame"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K12 ["IsSomeRendererActing"]
  CALL R7 1 1
  DUPTABLE R8 K13 [{"ReactCurrentDispatcher", "ReactCurrentBatchConfig", "ReactCurrentOwner", "IsSomeRendererActing", "ReactDebugCurrentFrame"}]
  SETTABLEKS R3 R8 K8 ["ReactCurrentDispatcher"]
  SETTABLEKS R4 R8 K9 ["ReactCurrentBatchConfig"]
  SETTABLEKS R5 R8 K10 ["ReactCurrentOwner"]
  SETTABLEKS R7 R8 K12 ["IsSomeRendererActing"]
  GETIMPORT R11 K15 [_G]
  GETTABLEKS R10 R11 K16 ["__DEV__"]
  JUMPIFNOT R10 [+2]
  MOVE R9 R6
  JUMP [+4]
  DUPTABLE R9 K18 [{"setExtraStackFrame"}]
  DUPCLOSURE R10 K19 [PROTO_2]
  SETTABLEKS R10 R9 K17 ["setExtraStackFrame"]
  SETTABLEKS R9 R8 K11 ["ReactDebugCurrentFrame"]
  RETURN R8 1
