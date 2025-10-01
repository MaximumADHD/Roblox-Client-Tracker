MAIN:
  PREPVARARGS 0
  NEWTABLE R0 64 0
  LOADN R1 135
  SETTABLEKS R1 R0 K0 ["widgetHeaderHeight"]
  LOADN R1 32
  SETTABLEKS R1 R0 K1 ["widgetHeaderLineHeight"]
  LOADN R1 18
  SETTABLEKS R1 R0 K2 ["inputTextSize"]
  LOADN R1 16
  SETTABLEKS R1 R0 K3 ["labelTextSize"]
  LOADN R1 12
  SETTABLEKS R1 R0 K4 ["confirmationDialogTextSize"]
  LOADN R1 17
  SETTABLEKS R1 R0 K5 ["resultTextSize"]
  LOADN R1 17
  SETTABLEKS R1 R0 K6 ["lineNumberLabelTextSize"]
  LOADN R1 17
  SETTABLEKS R1 R0 K7 ["matchNumberLabelTextSize"]
  GETIMPORT R1 K11 [Enum.Font.SourceSans]
  SETTABLEKS R1 R0 K12 ["defaultFont"]
  GETIMPORT R1 K14 [Enum.Font.SourceSansBold]
  SETTABLEKS R1 R0 K15 ["defaultFontBold"]
  LOADN R1 6
  SETTABLEKS R1 R0 K16 ["padding"]
  LOADN R1 8
  SETTABLEKS R1 R0 K17 ["paddingSmall"]
  LOADN R1 4
  SETTABLEKS R1 R0 K18 ["paddingXSmall"]
  LOADN R1 2
  SETTABLEKS R1 R0 K19 ["paddingXXSmall"]
  LOADK R1 K20 [0.5]
  SETTABLEKS R1 R0 K21 ["disabledTransparency"]
  LOADK R1 K22 [0.85]
  SETTABLEKS R1 R0 K23 ["hoveredTransparency"]
  LOADK R1 K24 [0.8]
  SETTABLEKS R1 R0 K25 ["pressedTransparency"]
  LOADN R1 5
  SETTABLEKS R1 R0 K26 ["cornerRadius"]
  LOADN R1 6
  SETTABLEKS R1 R0 K27 ["radiusSmall"]
  LOADN R1 8
  SETTABLEKS R1 R0 K28 ["radiusMedium"]
  LOADN R1 28
  SETTABLEKS R1 R0 K29 ["searchBarHeight"]
  GETTABLEKS R1 R0 K18 ["paddingXSmall"]
  SETTABLEKS R1 R0 K30 ["searchBarPadding"]
  GETTABLEKS R2 R0 K29 ["searchBarHeight"]
  GETTABLEKS R3 R0 K18 ["paddingXSmall"]
  ADD R1 R2 R3
  SETTABLEKS R1 R0 K31 ["minSearchHeaderHeight"]
  GETTABLEKS R1 R0 K29 ["searchBarHeight"]
  SETTABLEKS R1 R0 K32 ["iconButtonSize"]
  LOADN R1 100
  SETTABLEKS R1 R0 K33 ["findResultsMinTextWidth"]
  LOADN R1 150
  SETTABLEKS R1 R0 K34 ["findResultsMaxTextWidth"]
  LOADN R1 59
  SETTABLEKS R1 R0 K35 ["minReplaceButtonWidth"]
  LOADK R1 K36 [75.5]
  SETTABLEKS R1 R0 K37 ["minReplaceAllButtonWidth"]
  LOADN R1 210
  SETTABLEKS R1 R0 K38 ["replaceAllConfirmationLabelWidth"]
  LOADN R1 10
  SETTABLEKS R1 R0 K39 ["scrollBarThickness"]
  LOADN R1 4
  SETTABLEKS R1 R0 K40 ["minNameLabelWidth"]
  LOADN R1 12
  SETTABLEKS R1 R0 K41 ["indentWidth"]
  LOADN R1 12
  SETTABLEKS R1 R0 K42 ["iconSizeSmall"]
  LOADN R1 16
  SETTABLEKS R1 R0 K43 ["iconSize"]
  LOADN R1 16
  SETTABLEKS R1 R0 K44 ["fieldSize"]
  LOADN R1 24
  SETTABLEKS R1 R0 K45 ["resultRowHeight"]
  LOADK R1 K46 [0.16]
  SETTABLEKS R1 R0 K47 ["arrowImageTransparency"]
  LOADN R1 10
  SETTABLEKS R1 R0 K48 ["resultListScrollBarThickness"]
  LOADN R1 6
  SETTABLEKS R1 R0 K49 ["circleOffset"]
  DUPTABLE R1 K52 [{"Dark", "Light"}]
  DUPTABLE R2 K56 [{"find", "replaced", "replacement"}]
  GETIMPORT R3 K59 [Color3.fromHex]
  LOADK R4 K60 ["#473200"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K53 ["find"]
  GETIMPORT R3 K59 [Color3.fromHex]
  LOADK R4 K61 ["#720000"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K54 ["replaced"]
  GETIMPORT R3 K59 [Color3.fromHex]
  LOADK R4 K62 ["#0C3D25"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K55 ["replacement"]
  SETTABLEKS R2 R1 K50 ["Dark"]
  DUPTABLE R2 K56 [{"find", "replaced", "replacement"}]
  GETIMPORT R3 K59 [Color3.fromHex]
  LOADK R4 K63 ["#F9DE6F"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K53 ["find"]
  GETIMPORT R3 K59 [Color3.fromHex]
  LOADK R4 K64 ["#FFBEB0"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K54 ["replaced"]
  GETIMPORT R3 K59 [Color3.fromHex]
  LOADK R4 K65 ["#68F9A9"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K55 ["replacement"]
  SETTABLEKS R2 R1 K51 ["Light"]
  SETTABLEKS R1 R0 K66 ["RichTagColors"]
  RETURN R0 1
