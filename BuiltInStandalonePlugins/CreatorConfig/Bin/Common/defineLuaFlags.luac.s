PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RegisterActionsPluginLoader"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CreatorConfigOnCloseSkipActionTrigger"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CreatorConfigDmChangedListener"]
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
  GETIMPORT R1 K7 [game]
  LOADK R3 K8 ["CreatorConfigOnCloseSkipActionTrigger"]
  LOADB R4 0
  NAMECALL R1 R1 K9 ["DefineFastFlag"]
  CALL R1 3 0
  GETIMPORT R1 K7 [game]
  LOADK R3 K10 ["CreatorConfigDmChangedListener"]
  LOADB R4 0
  NAMECALL R1 R1 K9 ["DefineFastFlag"]
  CALL R1 3 0
  DUPTABLE R1 K16 [{"getFFlagEnableCreatorConfig", "getFFlagRegisterActionsPluginLoader", "getFFlagEnableCreatorConfigSystemMenu", "getFFlagOnCloseSkipActionTrigger", "getFFlagCreatorConfigDmChangedListener"}]
  MOVE R2 R0
  LOADK R3 K17 ["EnableCreatorConfig"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K11 ["getFFlagEnableCreatorConfig"]
  DUPCLOSURE R2 K18 [PROTO_0]
  SETTABLEKS R2 R1 K12 ["getFFlagRegisterActionsPluginLoader"]
  MOVE R2 R0
  LOADK R3 K19 ["EnableCreatorConfigSystemMenu"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K13 ["getFFlagEnableCreatorConfigSystemMenu"]
  DUPCLOSURE R2 K20 [PROTO_1]
  SETTABLEKS R2 R1 K14 ["getFFlagOnCloseSkipActionTrigger"]
  DUPCLOSURE R2 K21 [PROTO_2]
  SETTABLEKS R2 R1 K15 ["getFFlagCreatorConfigDmChangedListener"]
  RETURN R1 1
