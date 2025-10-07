PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableRibbonPluginFeature"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RegisterActionsPluginLoader"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["createGetSafeFFlag"]
  CALL R0 1 1
  DUPTABLE R1 K9 [{"getFFlagEnableCreatorConfig", "getFFlagEnableRibbonPlugin", "getFFlagRegisterActionsPluginLoader"}]
  MOVE R2 R0
  LOADK R3 K10 ["EnableCreatorConfig"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["getFFlagEnableCreatorConfig"]
  DUPCLOSURE R2 K11 [PROTO_0]
  SETTABLEKS R2 R1 K7 ["getFFlagEnableRibbonPlugin"]
  DUPCLOSURE R2 K12 [PROTO_1]
  SETTABLEKS R2 R1 K8 ["getFFlagRegisterActionsPluginLoader"]
  RETURN R1 1
