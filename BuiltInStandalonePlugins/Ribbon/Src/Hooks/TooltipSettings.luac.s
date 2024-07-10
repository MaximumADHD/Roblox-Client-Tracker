PROTO_0:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["uniqueTooltipId"]
  ADDK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["uniqueTooltipId"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"showDelay", "hideDelay", "uniqueTooltipId", "disableAllTooltips"}]
  LOADN R1 1
  SETTABLEKS R1 R0 K0 ["showDelay"]
  LOADK R1 K5 [0.3]
  SETTABLEKS R1 R0 K1 ["hideDelay"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["uniqueTooltipId"]
  LOADB R1 0
  SETTABLEKS R1 R0 K3 ["disableAllTooltips"]
  DUPCLOSURE R1 K6 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["cancelShowTooltip"]
  RETURN R0 1
