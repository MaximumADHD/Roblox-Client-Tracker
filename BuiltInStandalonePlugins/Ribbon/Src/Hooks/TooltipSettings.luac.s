PROTO_0:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["uniqueTooltipId"]
  ADDK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["uniqueTooltipId"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["FixTooltipShowDelay"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  DUPTABLE R1 K8 [{"showDelay", "hideDelay", "uniqueTooltipId", "disableAllTooltips"}]
  JUMPIFNOT R0 [+2]
  LOADK R2 K9 [0.3]
  JUMP [+1]
  LOADN R2 1
  SETTABLEKS R2 R1 K4 ["showDelay"]
  LOADK R2 K9 [0.3]
  SETTABLEKS R2 R1 K5 ["hideDelay"]
  LOADN R2 0
  SETTABLEKS R2 R1 K6 ["uniqueTooltipId"]
  LOADB R2 0
  SETTABLEKS R2 R1 K7 ["disableAllTooltips"]
  DUPCLOSURE R2 K10 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K11 ["cancelShowTooltip"]
  RETURN R1 1
