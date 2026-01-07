PROTO_0:
  GETIMPORT R2 K1 [_G]
  GETTABLEKS R1 R2 K2 ["__DEV__"]
  JUMPIFNOT R1 [+9]
  GETIMPORT R2 K1 [_G]
  GETTABLEKS R1 R2 K3 ["__COMPAT_WARNINGS__"]
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 0
  LOADK R2 K4 ["setGlobalConfig"]
  LOADK R3 K5 ["React Lua uses a `_G.__DEV__` flag to enable development behavior. If you're seeing this warning, you already have it enabled. Please remove any redundant uses of `setGlobalConfig`."]
  CALL R1 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["warnOnce"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  DUPCLOSURE R1 K7 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
