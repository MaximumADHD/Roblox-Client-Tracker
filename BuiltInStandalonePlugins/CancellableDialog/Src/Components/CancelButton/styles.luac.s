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
  DUPTABLE R9 K18 [{"Font", "TextSize", "TextColor3", "TextXAlignment", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R10 K21 [Enum.Font.SourceSans]
  SETTABLEKS R10 R9 K12 ["Font"]
  LOADK R10 K22 ["$NormalTextSize"]
  SETTABLEKS R10 R9 K13 ["TextSize"]
  LOADK R10 K23 ["$TextSecondary"]
  SETTABLEKS R10 R9 K14 ["TextColor3"]
  GETIMPORT R10 K25 [Enum.TextXAlignment.Center]
  SETTABLEKS R10 R9 K15 ["TextXAlignment"]
  LOADK R10 K26 ["$NotTransparent"]
  SETTABLEKS R10 R9 K16 ["BackgroundTransparency"]
  LOADK R10 K27 ["$CancelButtonBackgroundColor"]
  SETTABLEKS R10 R9 K17 ["BackgroundColor3"]
  NEWTABLE R10 0 4
  MOVE R11 R2
  LOADK R12 K28 ["::UIPadding"]
  DUPTABLE R13 K33 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
  GETIMPORT R14 K36 [UDim.new]
  LOADN R15 0
  LOADN R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K29 ["PaddingTop"]
  GETIMPORT R14 K36 [UDim.new]
  LOADN R15 0
  LOADN R16 16
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["PaddingRight"]
  GETIMPORT R14 K36 [UDim.new]
  LOADN R15 0
  LOADN R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K31 ["PaddingBottom"]
  GETIMPORT R14 K36 [UDim.new]
  LOADN R15 0
  LOADN R16 16
  CALL R14 2 1
  SETTABLEKS R14 R13 K32 ["PaddingLeft"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K37 [".Enabled :hover"]
  DUPTABLE R14 K38 [{"BackgroundColor3"}]
  LOADK R15 K39 ["$CancelButtonHoverBackgroundColor"]
  SETTABLEKS R15 R14 K17 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K40 [".Disabled"]
  DUPTABLE R15 K38 [{"BackgroundColor3"}]
  LOADK R16 K41 ["$SecondaryHoverBackground"]
  SETTABLEKS R16 R15 K17 ["BackgroundColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K42 ["::UIStroke"]
  DUPTABLE R16 K47 [{"ApplyStrokeMode", "Thickness", "Transparency", "Color"}]
  GETIMPORT R17 K49 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R17 R16 K43 ["ApplyStrokeMode"]
  LOADK R17 K50 ["$CancelButtonBorderSizePixel"]
  SETTABLEKS R17 R16 K44 ["Thickness"]
  LOADK R17 K51 ["$CancelButtonBorderTransparency"]
  SETTABLEKS R17 R16 K45 ["Transparency"]
  LOADK R17 K52 ["$CancelButtonBorderColor3"]
  SETTABLEKS R17 R16 K46 ["Color"]
  CALL R14 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
