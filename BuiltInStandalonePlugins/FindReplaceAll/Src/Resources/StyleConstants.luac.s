MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FindReplaceAll"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["defineFlags"]
  CALL R1 1 1
  NEWTABLE R2 64 0
  LOADN R3 135
  SETTABLEKS R3 R2 K9 ["widgetHeaderHeight"]
  LOADN R3 32
  SETTABLEKS R3 R2 K10 ["widgetHeaderLineHeight"]
  LOADN R3 18
  SETTABLEKS R3 R2 K11 ["inputTextSize"]
  LOADN R3 16
  SETTABLEKS R3 R2 K12 ["labelTextSize"]
  LOADN R3 12
  SETTABLEKS R3 R2 K13 ["confirmationDialogTextSize"]
  LOADN R3 17
  SETTABLEKS R3 R2 K14 ["resultTextSize"]
  LOADN R3 17
  SETTABLEKS R3 R2 K15 ["lineNumberLabelTextSize"]
  LOADN R3 17
  SETTABLEKS R3 R2 K16 ["matchNumberLabelTextSize"]
  GETTABLEKS R4 R1 K17 ["getFFlagFindReplaceAllUseBuilderFont"]
  CALL R4 0 1
  JUMPIFNOT R4 [+3]
  GETIMPORT R3 K21 [Enum.Font.BuilderSans]
  JUMP [+2]
  GETIMPORT R3 K23 [Enum.Font.SourceSans]
  SETTABLEKS R3 R2 K24 ["defaultFont"]
  GETTABLEKS R4 R1 K17 ["getFFlagFindReplaceAllUseBuilderFont"]
  CALL R4 0 1
  JUMPIFNOT R4 [+3]
  GETIMPORT R3 K26 [Enum.Font.BuilderSansBold]
  JUMP [+2]
  GETIMPORT R3 K28 [Enum.Font.SourceSansBold]
  SETTABLEKS R3 R2 K29 ["defaultFontBold"]
  LOADK R3 K30 [1.26]
  SETTABLEKS R3 R2 K31 ["defaultFontScale"]
  LOADN R3 6
  SETTABLEKS R3 R2 K32 ["padding"]
  LOADN R3 8
  SETTABLEKS R3 R2 K33 ["paddingSmall"]
  LOADN R3 4
  SETTABLEKS R3 R2 K34 ["paddingXSmall"]
  LOADN R3 2
  SETTABLEKS R3 R2 K35 ["paddingXXSmall"]
  LOADK R3 K36 [0.5]
  SETTABLEKS R3 R2 K37 ["disabledTransparency"]
  LOADK R3 K38 [0.85]
  SETTABLEKS R3 R2 K39 ["hoveredTransparency"]
  LOADK R3 K40 [0.8]
  SETTABLEKS R3 R2 K41 ["pressedTransparency"]
  LOADN R3 5
  SETTABLEKS R3 R2 K42 ["cornerRadius"]
  LOADN R3 6
  SETTABLEKS R3 R2 K43 ["radiusSmall"]
  LOADN R3 8
  SETTABLEKS R3 R2 K44 ["radiusMedium"]
  LOADN R3 28
  SETTABLEKS R3 R2 K45 ["searchBarHeight"]
  GETTABLEKS R3 R2 K34 ["paddingXSmall"]
  SETTABLEKS R3 R2 K46 ["searchBarPadding"]
  GETTABLEKS R4 R2 K45 ["searchBarHeight"]
  GETTABLEKS R5 R2 K34 ["paddingXSmall"]
  ADD R3 R4 R5
  SETTABLEKS R3 R2 K47 ["minSearchHeaderHeight"]
  GETTABLEKS R3 R2 K45 ["searchBarHeight"]
  SETTABLEKS R3 R2 K48 ["iconButtonSize"]
  LOADN R3 100
  SETTABLEKS R3 R2 K49 ["findResultsMinTextWidth"]
  LOADN R3 150
  SETTABLEKS R3 R2 K50 ["findResultsMaxTextWidth"]
  LOADN R3 59
  SETTABLEKS R3 R2 K51 ["minReplaceButtonWidth"]
  LOADK R3 K52 [75.5]
  SETTABLEKS R3 R2 K53 ["minReplaceAllButtonWidth"]
  LOADN R3 210
  SETTABLEKS R3 R2 K54 ["replaceAllConfirmationLabelWidth"]
  LOADN R3 10
  SETTABLEKS R3 R2 K55 ["scrollBarThickness"]
  LOADN R3 4
  SETTABLEKS R3 R2 K56 ["minNameLabelWidth"]
  LOADN R3 12
  SETTABLEKS R3 R2 K57 ["indentWidth"]
  LOADN R3 12
  SETTABLEKS R3 R2 K58 ["iconSizeSmall"]
  LOADN R3 16
  SETTABLEKS R3 R2 K59 ["iconSize"]
  LOADN R3 16
  SETTABLEKS R3 R2 K60 ["fieldSize"]
  LOADN R3 24
  SETTABLEKS R3 R2 K61 ["resultRowHeight"]
  LOADK R3 K62 [0.16]
  SETTABLEKS R3 R2 K63 ["arrowImageTransparency"]
  LOADN R3 10
  SETTABLEKS R3 R2 K64 ["resultListScrollBarThickness"]
  LOADN R3 6
  SETTABLEKS R3 R2 K65 ["circleOffset"]
  DUPTABLE R3 K68 [{"Dark", "Light"}]
  DUPTABLE R4 K72 [{"find", "replaced", "replacement"}]
  GETIMPORT R5 K75 [Color3.fromHex]
  LOADK R6 K76 ["#473200"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K69 ["find"]
  GETIMPORT R5 K75 [Color3.fromHex]
  LOADK R6 K77 ["#720000"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K70 ["replaced"]
  GETIMPORT R5 K75 [Color3.fromHex]
  LOADK R6 K78 ["#0C3D25"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K71 ["replacement"]
  SETTABLEKS R4 R3 K66 ["Dark"]
  DUPTABLE R4 K72 [{"find", "replaced", "replacement"}]
  GETIMPORT R5 K75 [Color3.fromHex]
  LOADK R6 K79 ["#F9DE6F"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K69 ["find"]
  GETIMPORT R5 K75 [Color3.fromHex]
  LOADK R6 K80 ["#FFBEB0"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K70 ["replaced"]
  GETIMPORT R5 K75 [Color3.fromHex]
  LOADK R6 K81 ["#68F9A9"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K71 ["replacement"]
  SETTABLEKS R4 R3 K67 ["Light"]
  SETTABLEKS R3 R2 K82 ["RichTagColors"]
  RETURN R2 1
