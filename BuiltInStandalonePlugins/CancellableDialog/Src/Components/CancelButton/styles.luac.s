MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CancellableDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Component-CancelButton"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K11 [">> .Cancel-Button"]
  DUPTABLE R9 K19 [{"Font", "TextSize", "TextColor3", "TextXAlignment", "BackgroundTransparency", "BackgroundColor3", "TextTransparency"}]
  GETIMPORT R10 K22 [Enum.Font.SourceSans]
  SETTABLEKS R10 R9 K12 ["Font"]
  LOADK R10 K23 ["$NormalTextSize"]
  SETTABLEKS R10 R9 K13 ["TextSize"]
  LOADK R10 K24 ["$TextContrast"]
  SETTABLEKS R10 R9 K14 ["TextColor3"]
  GETIMPORT R10 K26 [Enum.TextXAlignment.Center]
  SETTABLEKS R10 R9 K15 ["TextXAlignment"]
  LOADK R10 K27 ["$NotTransparent"]
  SETTABLEKS R10 R9 K16 ["BackgroundTransparency"]
  LOADK R10 K28 ["$Gray70"]
  SETTABLEKS R10 R9 K17 ["BackgroundColor3"]
  LOADK R10 K27 ["$NotTransparent"]
  SETTABLEKS R10 R9 K18 ["TextTransparency"]
  NEWTABLE R10 0 4
  MOVE R11 R2
  LOADK R12 K29 ["::UIPadding"]
  DUPTABLE R13 K34 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
  GETIMPORT R14 K37 [UDim.new]
  LOADN R15 0
  LOADN R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["PaddingTop"]
  GETIMPORT R14 K37 [UDim.new]
  LOADN R15 0
  LOADN R16 16
  CALL R14 2 1
  SETTABLEKS R14 R13 K31 ["PaddingRight"]
  GETIMPORT R14 K37 [UDim.new]
  LOADN R15 0
  LOADN R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K32 ["PaddingBottom"]
  GETIMPORT R14 K37 [UDim.new]
  LOADN R15 0
  LOADN R16 16
  CALL R14 2 1
  SETTABLEKS R14 R13 K33 ["PaddingLeft"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K38 [".Enabled :hover"]
  DUPTABLE R14 K39 [{"BackgroundColor3"}]
  LOADK R15 K40 ["$Gray60"]
  SETTABLEKS R15 R14 K17 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K41 [".Disabled"]
  DUPTABLE R15 K42 [{"TextTransparency"}]
  LOADK R16 K43 ["$TextDisabledTransparency"]
  SETTABLEKS R16 R15 K18 ["TextTransparency"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K44 ["::UIStroke"]
  DUPTABLE R16 K49 [{"ApplyStrokeMode", "Thickness", "Transparency", "Color"}]
  GETIMPORT R17 K51 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R17 R16 K45 ["ApplyStrokeMode"]
  LOADK R17 K52 ["$CancelButtonBorderSizePixel"]
  SETTABLEKS R17 R16 K46 ["Thickness"]
  LOADK R17 K53 ["$CancelButtonBorderTransparency"]
  SETTABLEKS R17 R16 K47 ["Transparency"]
  LOADK R17 K54 ["$CancelButtonBorderColor3"]
  SETTABLEKS R17 R16 K48 ["Color"]
  CALL R14 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
