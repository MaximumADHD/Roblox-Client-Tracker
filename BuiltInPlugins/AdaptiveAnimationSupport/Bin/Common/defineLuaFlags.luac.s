PROTO_0:
  GETUPVAL R0 0
  LOADK R1 K0 ["HumanoidRigDescriptionEnabled"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableAdaptiveAnimationSupport"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
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
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["safeGetFastFlag"]
  CALL R0 1 1
  GETIMPORT R1 K7 [game]
  LOADK R3 K8 ["EnableAdaptiveAnimationSupport"]
  LOADB R4 0
  NAMECALL R1 R1 K9 ["DefineFastFlag"]
  CALL R1 3 0
  DUPTABLE R1 K13 [{"getDFFlagHumanoidRigDescriptionEnabled", "getFFlagEnableAdaptiveAnimationSupport", "getFFlagRegisterActionsPluginLoader"}]
  DUPCLOSURE R2 K14 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K10 ["getDFFlagHumanoidRigDescriptionEnabled"]
  DUPCLOSURE R2 K15 [PROTO_1]
  SETTABLEKS R2 R1 K11 ["getFFlagEnableAdaptiveAnimationSupport"]
  DUPCLOSURE R2 K16 [PROTO_2]
  SETTABLEKS R2 R1 K12 ["getFFlagRegisterActionsPluginLoader"]
  RETURN R1 1
