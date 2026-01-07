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
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["ReactGlobals"]
  CALL R1 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K6 ["LuauPolyfill"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["console"]
  DUPCLOSURE R3 K8 [PROTO_1]
  CAPTURE VAL R2
  GETIMPORT R4 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K9 ["ReactCurrentDispatcher"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K10 ["ReactCurrentBatchConfig"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K11 ["ReactCurrentOwner"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K12 ["ReactDebugCurrentFrame"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K13 ["IsSomeRendererActing"]
  CALL R8 1 1
  DUPTABLE R9 K14 [{"ReactCurrentDispatcher", "ReactCurrentBatchConfig", "ReactCurrentOwner", "IsSomeRendererActing", "ReactDebugCurrentFrame"}]
  SETTABLEKS R4 R9 K9 ["ReactCurrentDispatcher"]
  SETTABLEKS R5 R9 K10 ["ReactCurrentBatchConfig"]
  SETTABLEKS R6 R9 K11 ["ReactCurrentOwner"]
  SETTABLEKS R8 R9 K13 ["IsSomeRendererActing"]
  GETTABLEKS R11 R1 K15 ["__DEV__"]
  JUMPIFNOT R11 [+2]
  MOVE R10 R7
  JUMP [+4]
  DUPTABLE R10 K17 [{"setExtraStackFrame"}]
  DUPCLOSURE R11 K18 [PROTO_2]
  SETTABLEKS R11 R10 K16 ["setExtraStackFrame"]
  SETTABLEKS R10 R9 K12 ["ReactDebugCurrentFrame"]
  RETURN R9 1
