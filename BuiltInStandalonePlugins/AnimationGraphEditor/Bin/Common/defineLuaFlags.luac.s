PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableAnimationGraphEditor"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RegisterActionsPluginLoader"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getFFlagRegisterActionsPluginLoader"]
  CALL R0 0 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableAnimationGraphEditor"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  NEWTABLE R0 4 0
  DUPCLOSURE R1 K4 [PROTO_0]
  SETTABLEKS R1 R0 K5 ["getFFlagEnableAnimationGraphEditor"]
  DUPCLOSURE R1 K6 [PROTO_1]
  SETTABLEKS R1 R0 K7 ["getFFlagRegisterActionsPluginLoader"]
  DUPCLOSURE R1 K8 [PROTO_2]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["getMigratePluginToggleToActions"]
  RETURN R0 1
