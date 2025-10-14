PROTO_0:
  LOADB R0 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Fields"]
  GETTABLEKS R2 R3 K7 ["FieldTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Fields"]
  GETTABLEKS R3 R4 K8 ["createPropertiesWatcher"]
  CALL R2 1 1
  DUPTABLE R3 K14 [{"key", "icon", "watch", "validateArgs", "permanent"}]
  LOADK R4 K15 ["packageLinkStatus"]
  SETTABLEKS R4 R3 K9 ["key"]
  LOADK R4 K16 [""]
  SETTABLEKS R4 R3 K10 ["icon"]
  MOVE R4 R2
  LOADK R5 K17 ["PackageLink"]
  NEWTABLE R6 0 1
  LOADK R7 K18 ["AutoUpdate"]
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  SETTABLEKS R4 R3 K11 ["watch"]
  DUPCLOSURE R4 K19 [PROTO_0]
  SETTABLEKS R4 R3 K12 ["validateArgs"]
  LOADB R4 1
  SETTABLEKS R4 R3 K13 ["permanent"]
  RETURN R3 1
