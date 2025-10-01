PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableQuickImporter"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+3]
  GETUPVAL R0 0
  LOADK R1 K4 ["ActionsAllowShortcutsFromLua"]
  CALL R0 1 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["safeGetFastFlag"]
  CALL R1 1 1
  GETIMPORT R2 K10 [game]
  LOADK R4 K11 ["EnableQuickImporter"]
  LOADB R5 0
  NAMECALL R2 R2 K12 ["DefineFastFlag"]
  CALL R2 3 0
  DUPCLOSURE R2 K13 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
