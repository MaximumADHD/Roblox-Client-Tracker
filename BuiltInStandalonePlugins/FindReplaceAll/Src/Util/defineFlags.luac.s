PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ShowFullScriptNameTooltip"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["FindReplaceAllUseBuilderFont"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ShowFullScriptNameTooltip"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["FindReplaceAllUseBuilderFont"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPTABLE R0 K7 [{"getFFlagShowFullScriptNameTooltip", "getFFlagFindReplaceAllUseBuilderFont"}]
  DUPCLOSURE R1 K8 [PROTO_0]
  SETTABLEKS R1 R0 K5 ["getFFlagShowFullScriptNameTooltip"]
  DUPCLOSURE R1 K9 [PROTO_1]
  SETTABLEKS R1 R0 K6 ["getFFlagFindReplaceAllUseBuilderFont"]
  RETURN R0 1
