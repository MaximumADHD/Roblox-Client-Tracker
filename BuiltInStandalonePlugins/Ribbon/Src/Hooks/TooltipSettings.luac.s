PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["panel"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["panel"]
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["Enabled"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["cancelShowTooltip"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["uniqueTooltipId"]
  ADDK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["uniqueTooltipId"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TooltipShowDelay"]
  LOADN R3 44
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["TooltipHideDelay"]
  LOADN R4 44
  NAMECALL R1 R1 K3 ["DefineFastInt"]
  CALL R1 3 1
  DUPTABLE R2 K10 [{"showDelay", "hideDelay", "uniqueTooltipId", "disableAllTooltips", "panel"}]
  DIVK R3 R0 K11 [1000]
  SETTABLEKS R3 R2 K5 ["showDelay"]
  DIVK R3 R1 K11 [1000]
  SETTABLEKS R3 R2 K6 ["hideDelay"]
  LOADN R3 0
  SETTABLEKS R3 R2 K7 ["uniqueTooltipId"]
  LOADB R3 0
  SETTABLEKS R3 R2 K8 ["disableAllTooltips"]
  LOADNIL R3
  SETTABLEKS R3 R2 K9 ["panel"]
  DUPCLOSURE R3 K12 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K13 ["closeTooltips"]
  DUPCLOSURE R3 K14 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K15 ["cancelShowTooltip"]
  RETURN R2 1
