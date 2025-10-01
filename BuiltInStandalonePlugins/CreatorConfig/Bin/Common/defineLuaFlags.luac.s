PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableCreatorConfig4"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableRibbonPluginFeature"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RegisterActionsPluginLoader"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableCreatorConfig4"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPTABLE R0 K7 [{"getFFlagEnableCreatorConfig", "getFFlagEnableRibbonPlugin", "getFFlagRegisterActionsPluginLoader"}]
  DUPCLOSURE R1 K8 [PROTO_0]
  SETTABLEKS R1 R0 K4 ["getFFlagEnableCreatorConfig"]
  DUPCLOSURE R1 K9 [PROTO_1]
  SETTABLEKS R1 R0 K5 ["getFFlagEnableRibbonPlugin"]
  DUPCLOSURE R1 K10 [PROTO_2]
  SETTABLEKS R1 R0 K6 ["getFFlagRegisterActionsPluginLoader"]
  RETURN R0 1
