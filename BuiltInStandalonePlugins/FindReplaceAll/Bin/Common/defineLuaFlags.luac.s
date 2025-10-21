PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableFindReplaceAll"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableFindReplaceAllMaxResultsSetting"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["FindReplaceAllCacheSize"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["FindReplaceAllEnableCache"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["FindReplaceKeyboardNavigation"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableFindReplaceAllMaxResultsSetting"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["FindReplaceAllEnableCache"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["FindReplaceKeyboardNavigation"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["FindReplaceAllCacheSize"]
  LOADN R3 100
  NAMECALL R0 R0 K7 ["DefineFastInt"]
  CALL R0 3 0
  DUPTABLE R0 K13 [{"getFFlagEnableFindReplaceAll", "getFFlagEnableFindReplaceAllMaxResultsSetting", "getFFlagFindReplaceAllCacheSize", "getFFlagFindReplaceAllEnableCache", "getFFlagFindReplaceKeyboardNavigation"}]
  DUPCLOSURE R1 K14 [PROTO_0]
  SETTABLEKS R1 R0 K8 ["getFFlagEnableFindReplaceAll"]
  DUPCLOSURE R1 K15 [PROTO_1]
  SETTABLEKS R1 R0 K9 ["getFFlagEnableFindReplaceAllMaxResultsSetting"]
  DUPCLOSURE R1 K16 [PROTO_2]
  SETTABLEKS R1 R0 K10 ["getFFlagFindReplaceAllCacheSize"]
  DUPCLOSURE R1 K17 [PROTO_3]
  SETTABLEKS R1 R0 K11 ["getFFlagFindReplaceAllEnableCache"]
  DUPCLOSURE R1 K18 [PROTO_4]
  SETTABLEKS R1 R0 K12 ["getFFlagFindReplaceKeyboardNavigation"]
  RETURN R0 1
