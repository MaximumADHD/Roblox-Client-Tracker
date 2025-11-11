PROTO_0:
  DUPTABLE R1 K1 [{"Transparency"}]
  JUMPIFNOT R0 [+2]
  LOADK R2 K2 [0.5]
  JUMP [+1]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["Transparency"]
  RETURN R1 1

PROTO_1:
  JUMPIF R0 [+3]
  JUMPIF R1 [+2]
  LOADK R2 K0 ["size-400-400"]
  JUMP [+1]
  LOADK R2 K1 ["size-300-400"]
  DUPTABLE R3 K3 [{"tag"}]
  LOADK R5 K4 ["row align-x-center align-y-center %*"]
  MOVE R7 R2
  NAMECALL R5 R5 K5 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  SETTABLEKS R4 R3 K2 ["tag"]
  RETURN R3 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["isCompact"]
  JUMPIFNOT R2 [+2]
  LOADK R1 K1 ["padding-y-small"]
  JUMP [+6]
  GETTABLEKS R2 R0 K2 ["isSmall"]
  JUMPIFNOT R2 [+2]
  LOADK R1 K3 ["padding-y-xsmall"]
  JUMP [+1]
  LOADK R1 K4 ["padding-y-medium"]
  DUPTABLE R2 K7 [{"tag", "stateLayer"}]
  NEWTABLE R3 4 0
  LOADK R5 K8 ["auto-xy radius-small align-y-center align-x-center row %*"]
  MOVE R7 R1
  NAMECALL R5 R5 K9 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  LOADB R5 1
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R0 K10 ["selected"]
  JUMPIFNOT R5 [+2]
  LOADB R4 1
  JUMP [+1]
  LOADB R4 0
  SETTABLEKS R4 R3 K11 ["bg-action-standard"]
  GETTABLEKS R5 R0 K0 ["isCompact"]
  JUMPIF R5 [+5]
  GETTABLEKS R5 R0 K2 ["isSmall"]
  JUMPIF R5 [+2]
  LOADB R4 1
  JUMP [+1]
  LOADB R4 0
  SETTABLEKS R4 R3 K12 ["padding-x-xxsmall"]
  SETTABLEKS R3 R2 K5 ["tag"]
  DUPTABLE R3 K16 [{"affordance", "inset", "mode"}]
  GETTABLEKS R5 R0 K17 ["isSingle"]
  JUMPIFNOT R5 [+4]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K18 ["None"]
  JUMP [+3]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K19 ["Background"]
  SETTABLEKS R4 R3 K13 ["affordance"]
  LOADNIL R4
  SETTABLEKS R4 R3 K14 ["inset"]
  LOADNIL R4
  SETTABLEKS R4 R3 K15 ["mode"]
  SETTABLEKS R3 R2 K6 ["stateLayer"]
  RETURN R2 1

PROTO_3:
  DUPTABLE R0 K3 [{"arrowContainer", "arrow", "arrowIconStyle"}]
  GETUPVAL R1 0
  DUPTABLE R2 K8 [{"selected", "isCompact", "isSmall", "isSingle"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["selected"]
  JUMPIFNOT R4 [+6]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["isSingle"]
  JUMPIF R4 [+2]
  LOADB R3 1
  JUMP [+1]
  LOADB R3 0
  SETTABLEKS R3 R2 K4 ["selected"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K5 ["isCompact"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K6 ["isSmall"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["isSingle"]
  SETTABLEKS R3 R2 K7 ["isSingle"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["arrowContainer"]
  GETUPVAL R2 2
  GETUPVAL R3 3
  JUMPIF R2 [+3]
  JUMPIF R3 [+2]
  LOADK R4 K9 ["size-400-400"]
  JUMP [+1]
  LOADK R4 K10 ["size-300-400"]
  DUPTABLE R1 K12 [{"tag"}]
  LOADK R6 K13 ["row align-x-center align-y-center %*"]
  MOVE R8 R4
  NAMECALL R6 R6 K14 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R1 K11 ["tag"]
  SETTABLEKS R1 R0 K1 ["arrow"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K15 ["isDropdownEnabled"]
  NOT R2 R3
  DUPTABLE R1 K17 [{"Transparency"}]
  JUMPIFNOT R2 [+2]
  LOADK R3 K18 [0.5]
  JUMP [+1]
  LOADN R3 0
  SETTABLEKS R3 R1 K16 ["Transparency"]
  SETTABLEKS R1 R0 K2 ["arrowIconStyle"]
  RETURN R0 1

PROTO_4:
  GETTABLEKS R3 R0 K0 ["size"]
  JUMPIFEQKS R3 K1 ["Small"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETTABLEKS R4 R1 K2 ["mode"]
  JUMPIFEQKS R4 K3 ["DensityCompact"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R4 0
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R2
  NEWTABLE R6 0 5
  GETTABLEKS R7 R0 K4 ["isSingle"]
  MOVE R8 R3
  MOVE R9 R2
  GETTABLEKS R10 R0 K5 ["selected"]
  GETTABLEKS R11 R0 K6 ["isDropdownEnabled"]
  SETLIST R6 R7 5 [1]
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useMemo"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Foundation"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["Enums"]
  GETTABLEKS R4 R5 K11 ["StateLayerAffordance"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Contexts"]
  GETTABLEKS R6 R7 K14 ["Density"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_0]
  DUPCLOSURE R7 K16 [PROTO_1]
  DUPCLOSURE R8 K17 [PROTO_2]
  CAPTURE VAL R4
  DUPCLOSURE R9 K18 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R8
  RETURN R9 1
