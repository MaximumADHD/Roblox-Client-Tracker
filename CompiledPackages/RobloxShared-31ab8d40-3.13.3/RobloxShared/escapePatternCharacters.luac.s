PROTO_0:
  GETIMPORT R1 K2 [string.gsub]
  MOVE R2 R0
  LOADK R3 K3 ["([%(%)%.%%%+%-%*%?%[%^%$])"]
  LOADK R4 K4 ["%%%1"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPTABLE R1 K2 [{"escapePatternCharacters"}]
  SETTABLEKS R0 R1 K1 ["escapePatternCharacters"]
  RETURN R1 1
