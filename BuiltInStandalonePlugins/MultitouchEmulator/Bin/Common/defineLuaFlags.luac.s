PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableMultitouchEmulator"]
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
  DUPTABLE R0 K2 [{"getFFlagEnableMultitouchEmulator", "getFFlagRegisterActionsPluginLoader"}]
  DUPCLOSURE R1 K3 [PROTO_0]
  SETTABLEKS R1 R0 K0 ["getFFlagEnableMultitouchEmulator"]
  DUPCLOSURE R1 K4 [PROTO_1]
  SETTABLEKS R1 R0 K1 ["getFFlagRegisterActionsPluginLoader"]
  RETURN R0 1
