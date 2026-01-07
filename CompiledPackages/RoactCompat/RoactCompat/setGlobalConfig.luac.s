PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["__DEV__"]
  JUMPIFNOT R1 [+11]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["__COMPAT_WARNINGS__"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 1
  LOADK R2 K2 ["setGlobalConfig"]
  LOADK R4 K3 ["Roact 17 uses a `ReactGlobals.__DEV__` flag to enable development behavior. "]
  LOADK R5 K4 ["If you're seeing this warning, you already have it enabled. "]
  LOADK R6 K5 ["Please remove any redundant uses of `setGlobalConfig`."]
  CONCAT R3 R4 R6
  CALL R1 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["ReactGlobals"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K6 ["warnOnce"]
  CALL R2 1 1
  DUPCLOSURE R3 K7 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
