PROTO_0:
  JUMPIFNOT R0 [+2]
  LOADK R2 K0 ["text-caption-small"]
  JUMP [+1]
  LOADK R2 K1 ["text-caption-medium"]
  DUPTABLE R3 K5 [{"tag", "size", "textStyle"}]
  LOADK R5 K6 ["text-truncate-end %*"]
  MOVE R7 R2
  NAMECALL R5 R5 K7 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  SETTABLEKS R4 R3 K2 ["tag"]
  JUMPIFNOT R0 [+2]
  GETUPVAL R4 0
  JUMP [+1]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K3 ["size"]
  DUPTABLE R4 K9 [{"Transparency"}]
  JUMPIFNOT R1 [+2]
  LOADK R5 K10 [0.5]
  JUMP [+1]
  LOADN R5 0
  SETTABLEKS R5 R4 K8 ["Transparency"]
  SETTABLEKS R4 R3 K4 ["textStyle"]
  RETURN R3 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["isSmall"]
  JUMPIFNOT R1 [+9]
  DUPTABLE R1 K3 [{"MaxSize", "MinSize"}]
  GETTABLEKS R2 R0 K4 ["smallSize"]
  SETTABLEKS R2 R1 K1 ["MaxSize"]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["MinSize"]
  RETURN R1 1
  DUPTABLE R1 K3 [{"MaxSize", "MinSize"}]
  GETTABLEKS R3 R0 K5 ["isCompact"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R0 K6 ["compactSize"]
  JUMP [+2]
  GETTABLEKS R2 R0 K7 ["defaultSize"]
  SETTABLEKS R2 R1 K1 ["MaxSize"]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["MinSize"]
  RETURN R1 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["isSmall"]
  JUMPIF R2 [+3]
  GETTABLEKS R2 R0 K1 ["isCompact"]
  JUMPIFNOT R2 [+2]
  LOADK R1 K2 ["padding-xsmall"]
  JUMP [+1]
  LOADK R1 K3 ["padding-small"]
  DUPTABLE R2 K7 [{"tag", "sizeConstraint", "stateLayer"}]
  NEWTABLE R3 2 0
  LOADK R5 K8 ["auto-xy radius-small align-y-center align-x-center row %*"]
  MOVE R7 R1
  NAMECALL R5 R5 K9 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  LOADB R5 1
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R0 K10 ["selected"]
  JUMPIFEQKB R5 TRUE [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K11 ["bg-action-standard"]
  SETTABLEKS R3 R2 K4 ["tag"]
  GETUPVAL R3 0
  DUPTABLE R4 K15 [{"isSmall", "isCompact", "smallSize", "compactSize", "defaultSize"}]
  GETTABLEKS R5 R0 K0 ["isSmall"]
  SETTABLEKS R5 R4 K0 ["isSmall"]
  GETTABLEKS R5 R0 K1 ["isCompact"]
  SETTABLEKS R5 R4 K1 ["isCompact"]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K12 ["smallSize"]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K13 ["compactSize"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K14 ["defaultSize"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["sizeConstraint"]
  DUPTABLE R3 K19 [{"affordance", "inset", "mode"}]
  GETTABLEKS R5 R0 K20 ["isSingle"]
  JUMPIFNOT R5 [+4]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K21 ["None"]
  JUMP [+3]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K22 ["Background"]
  SETTABLEKS R4 R3 K16 ["affordance"]
  LOADNIL R4
  SETTABLEKS R4 R3 K17 ["inset"]
  LOADNIL R4
  SETTABLEKS R4 R3 K18 ["mode"]
  SETTABLEKS R3 R2 K6 ["stateLayer"]
  RETURN R2 1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["isSmall"]
  JUMPIFNOT R2 [+2]
  LOADK R1 K1 ["size-400-400"]
  JUMP [+1]
  LOADK R1 K2 ["size-600-600"]
  DUPTABLE R2 K5 [{"tag", "imageStyle"}]
  LOADK R4 K6 ["align-x-center align-y-center %*"]
  MOVE R6 R1
  NAMECALL R4 R4 K7 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K3 ["tag"]
  DUPTABLE R3 K9 [{"Transparency"}]
  GETTABLEKS R5 R0 K10 ["disabled"]
  JUMPIFNOT R5 [+2]
  LOADK R4 K11 [0.5]
  JUMP [+1]
  LOADN R4 0
  SETTABLEKS R4 R3 K8 ["Transparency"]
  SETTABLEKS R3 R2 K4 ["imageStyle"]
  RETURN R2 1

PROTO_4:
  DUPTABLE R0 K5 [{"container", "actionContainer", "ribbonTool", "text", "icon"}]
  DUPTABLE R1 K9 [{"tag", "sizeConstraint", "stateLayer"}]
  LOADK R2 K10 ["auto-xy radius-small col align-y-center align-x-center"]
  SETTABLEKS R2 R1 K6 ["tag"]
  GETUPVAL R2 0
  DUPTABLE R3 K16 [{"isSmall", "isCompact", "smallSize", "compactSize", "defaultSize"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K11 ["isSmall"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K12 ["isCompact"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K13 ["smallSize"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K14 ["compactSize"]
  GETUPVAL R4 5
  SETTABLEKS R4 R3 K15 ["defaultSize"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["sizeConstraint"]
  DUPTABLE R2 K20 [{"affordance", "inset", "mode"}]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K21 ["None"]
  SETTABLEKS R3 R2 K17 ["affordance"]
  LOADNIL R3
  SETTABLEKS R3 R2 K18 ["inset"]
  LOADNIL R3
  SETTABLEKS R3 R2 K19 ["mode"]
  SETTABLEKS R2 R1 K8 ["stateLayer"]
  SETTABLEKS R1 R0 K0 ["container"]
  DUPTABLE R1 K22 [{"tag"}]
  NEWTABLE R2 2 0
  LOADB R3 1
  SETTABLEKS R3 R2 K23 ["auto-xy radius-small row align-y-center align-x-center"]
  GETUPVAL R3 7
  SETTABLEKS R3 R2 K24 ["bg-action-standard"]
  SETTABLEKS R2 R1 K6 ["tag"]
  SETTABLEKS R1 R0 K1 ["actionContainer"]
  GETUPVAL R1 8
  DUPTABLE R2 K27 [{"selected", "isCompact", "isSmall", "isSingle"}]
  GETUPVAL R4 9
  GETTABLEKS R3 R4 K25 ["selected"]
  JUMPIFNOT R3 [+4]
  GETUPVAL R5 9
  GETTABLEKS R4 R5 K26 ["isSingle"]
  NOT R3 R4
  SETTABLEKS R3 R2 K25 ["selected"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K12 ["isCompact"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K11 ["isSmall"]
  GETUPVAL R4 9
  GETTABLEKS R3 R4 K26 ["isSingle"]
  SETTABLEKS R3 R2 K26 ["isSingle"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["ribbonTool"]
  GETUPVAL R1 10
  GETUPVAL R2 2
  GETUPVAL R4 9
  GETTABLEKS R3 R4 K28 ["disabled"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K3 ["text"]
  GETUPVAL R1 11
  DUPTABLE R2 K29 [{"isSmall", "disabled"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K11 ["isSmall"]
  GETUPVAL R4 9
  GETTABLEKS R3 R4 K28 ["disabled"]
  SETTABLEKS R3 R2 K28 ["disabled"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["icon"]
  RETURN R0 1

PROTO_5:
  GETTABLEKS R3 R0 K0 ["size"]
  JUMPIFEQKS R3 K1 ["Small"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETTABLEKS R4 R1 K2 ["mode"]
  JUMPIFEQKS R4 K3 ["DensityCompact"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETTABLEKS R5 R0 K4 ["isSingle"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R5 R0 K5 ["selected"]
  JUMPIF R5 [+6]
  GETTABLEKS R5 R0 K6 ["isMenuOpen"]
  JUMPIFNOT R5 [+5]
  GETTABLEKS R5 R0 K4 ["isSingle"]
  JUMPIFNOT R5 [+2]
  LOADB R4 1
  JUMP [+1]
  LOADB R4 0
  GETUPVAL R5 0
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R4
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  NEWTABLE R7 0 6
  GETTABLEKS R8 R0 K6 ["isMenuOpen"]
  GETTABLEKS R9 R0 K4 ["isSingle"]
  MOVE R10 R3
  MOVE R11 R2
  GETTABLEKS R12 R0 K5 ["selected"]
  GETTABLEKS R13 R0 K7 ["disabled"]
  SETLIST R7 R8 6 [1]
  CALL R5 2 -1
  RETURN R5 -1

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
  GETIMPORT R6 K17 [Vector2.new]
  LOADN R7 24
  LOADN R8 24
  CALL R6 2 1
  GETIMPORT R7 K17 [Vector2.new]
  LOADN R8 32
  LOADN R9 32
  CALL R7 2 1
  GETIMPORT R8 K17 [Vector2.new]
  LOADN R9 40
  LOADN R10 40
  CALL R8 2 1
  GETIMPORT R9 K20 [UDim2.fromOffset]
  LOADN R10 48
  LOADN R11 16
  CALL R9 2 1
  GETIMPORT R10 K20 [UDim2.fromOffset]
  LOADN R11 60
  LOADN R12 16
  CALL R10 2 1
  GETIMPORT R11 K17 [Vector2.new]
  LOADN R12 36
  LOADN R13 24
  CALL R11 2 1
  GETIMPORT R12 K17 [Vector2.new]
  LOADN R13 48
  LOADN R14 48
  CALL R12 2 1
  GETIMPORT R13 K17 [Vector2.new]
  LOADN R14 60
  LOADN R15 56
  CALL R13 2 1
  DUPCLOSURE R14 K21 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R10
  DUPCLOSURE R15 K22 [PROTO_1]
  DUPCLOSURE R16 K23 [PROTO_2]
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R4
  DUPCLOSURE R17 K24 [PROTO_3]
  DUPCLOSURE R18 K25 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R17
  RETURN R18 1
