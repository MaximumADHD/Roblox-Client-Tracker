PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_selectionHighlightsEnabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  SETTABLEKS R1 R2 K0 ["_selectionHighlightsEnabled"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["ToggleSelectionHighlightsSignal"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Signal"]
  CALL R1 1 1
  NEWTABLE R2 4 0
  GETTABLEKS R3 R1 K9 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K10 ["ToggleSelectionHighlightsSignal"]
  LOADB R3 1
  SETTABLEKS R3 R2 K11 ["_selectionHighlightsEnabled"]
  DUPCLOSURE R3 K12 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K13 ["GetSelectionHighlightsEnabled"]
  DUPCLOSURE R3 K14 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K15 ["ToggleSelectionHighlights"]
  RETURN R2 1
