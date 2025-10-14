PROTO_0:
  GETIMPORT R1 K1 [_G]
  GETTABLEKS R0 R1 K2 ["__MOCK_FILE_SYSTEM__"]
  JUMPIF R0 [+6]
  GETIMPORT R0 K4 [game]
  LOADK R2 K5 ["FileSystemService"]
  NAMECALL R0 R0 K6 ["GetService"]
  CALL R0 2 1
  RETURN R0 1

PROTO_1:
  GETIMPORT R0 K1 [pcall]
  DUPCLOSURE R1 K2 [PROTO_0]
  CALL R0 1 2
  JUMPIF R0 [+8]
  GETIMPORT R2 K4 [error]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["new"]
  LOADK R4 K6 ["Attempting to save snapshots in an environment where FileSystemService is inaccessible."]
  CALL R3 1 -1
  CALL R2 -1 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["LuauPolyfill"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K6 ["Error"]
  DUPCLOSURE R4 K7 [PROTO_1]
  CAPTURE VAL R3
  RETURN R4 1
