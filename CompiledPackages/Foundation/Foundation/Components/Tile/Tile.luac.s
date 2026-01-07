PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  GETUPVAL R4 1
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["createElement"]
  GETUPVAL R4 3
  GETUPVAL R5 4
  MOVE R6 R2
  DUPTABLE R7 K7 [{"tag", "stateLayer", "onStateChanged", "layout", "Size", "ref"}]
  NEWTABLE R8 4 0
  GETTABLEKS R9 R2 K8 ["isContained"]
  SETTABLEKS R9 R8 K9 ["bg-shift-200"]
  GETTABLEKS R10 R2 K8 ["isContained"]
  NOT R9 R10
  SETTABLEKS R9 R8 K10 ["gap-small"]
  LOADB R9 1
  SETTABLEKS R9 R8 K11 ["radius-medium"]
  SETTABLEKS R8 R7 K1 ["tag"]
  DUPTABLE R8 K13 [{"affordance"}]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K14 ["None"]
  SETTABLEKS R9 R8 K12 ["affordance"]
  SETTABLEKS R8 R7 K2 ["stateLayer"]
  GETTABLEKS R8 R2 K3 ["onStateChanged"]
  SETTABLEKS R8 R7 K3 ["onStateChanged"]
  DUPTABLE R8 K17 [{"FillDirection", "SortOrder"}]
  GETTABLEKS R9 R2 K15 ["FillDirection"]
  SETTABLEKS R9 R8 K15 ["FillDirection"]
  GETIMPORT R9 K20 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R9 R8 K16 ["SortOrder"]
  SETTABLEKS R8 R7 K4 ["layout"]
  GETTABLEKS R8 R2 K5 ["Size"]
  SETTABLEKS R8 R7 K5 ["Size"]
  SETTABLEKS R1 R7 K6 ["ref"]
  CALL R5 2 1
  DUPTABLE R6 K22 [{"TileContext"}]
  GETTABLEKS R8 R2 K23 ["children"]
  JUMPIFNOT R8 [+26]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K24 ["Provider"]
  DUPTABLE R9 K26 [{"value"}]
  DUPTABLE R10 K29 [{"isContained", "fillDirection", "testId"}]
  GETTABLEKS R11 R2 K8 ["isContained"]
  SETTABLEKS R11 R10 K8 ["isContained"]
  GETTABLEKS R11 R2 K15 ["FillDirection"]
  SETTABLEKS R11 R10 K27 ["fillDirection"]
  GETTABLEKS R11 R2 K28 ["testId"]
  SETTABLEKS R11 R10 K28 ["testId"]
  SETTABLEKS R10 R9 K25 ["value"]
  GETTABLEKS R10 R2 K23 ["children"]
  CALL R7 3 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K21 ["TileContext"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["View"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K11 ["Utility"]
  GETTABLEKS R6 R7 K12 ["withCommonProps"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K11 ["Utility"]
  GETTABLEKS R7 R8 K13 ["withDefaults"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K4 ["Parent"]
  GETTABLEKS R8 R9 K14 ["TileContext"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K15 ["Enums"]
  GETTABLEKS R9 R10 K16 ["StateLayerAffordance"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K15 ["Enums"]
  GETTABLEKS R10 R11 K17 ["FillBehavior"]
  CALL R9 1 1
  DUPTABLE R10 K21 [{"FillDirection", "isContained", "testId"}]
  GETIMPORT R11 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K18 ["FillDirection"]
  LOADB R11 0
  SETTABLEKS R11 R10 K19 ["isContained"]
  LOADK R11 K25 ["--foundation-tile"]
  SETTABLEKS R11 R10 K20 ["testId"]
  DUPCLOSURE R11 K26 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R7
  GETTABLEKS R12 R2 K27 ["forwardRef"]
  MOVE R13 R11
  CALL R12 1 -1
  RETURN R12 -1
