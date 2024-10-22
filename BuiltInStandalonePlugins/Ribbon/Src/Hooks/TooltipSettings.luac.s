PROTO_0:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["uniqueTooltipId"]
  ADDK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["uniqueTooltipId"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFFlagDevFrameworkRibbonHooks"]
  CALL R1 1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+14]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R5 R2 K11 ["UI"]
  GETTABLEKS R4 R5 K12 ["Hooks"]
  GETTABLEKS R3 R4 K13 ["TooltipSettings"]
  RETURN R3 1
  GETIMPORT R2 K15 [game]
  LOADK R4 K16 ["FixTooltipShowDelay"]
  NAMECALL R2 R2 K17 ["GetFastFlag"]
  CALL R2 2 1
  DUPTABLE R3 K22 [{"showDelay", "hideDelay", "uniqueTooltipId", "disableAllTooltips"}]
  JUMPIFNOT R2 [+2]
  LOADK R4 K23 [0.3]
  JUMP [+1]
  LOADN R4 1
  SETTABLEKS R4 R3 K18 ["showDelay"]
  LOADK R4 K23 [0.3]
  SETTABLEKS R4 R3 K19 ["hideDelay"]
  LOADN R4 0
  SETTABLEKS R4 R3 K20 ["uniqueTooltipId"]
  LOADB R4 0
  SETTABLEKS R4 R3 K21 ["disableAllTooltips"]
  DUPCLOSURE R4 K24 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K25 ["cancelShowTooltip"]
  RETURN R3 1
