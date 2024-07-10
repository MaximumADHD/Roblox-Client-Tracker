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
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleSheet"]
  NEWTABLE R4 0 4
  MOVE R5 R2
  LOADK R6 K11 ["TextLabel, TextButton"]
  DUPTABLE R7 K15 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R8 K18 [Enum.Font.SourceSans]
  SETTABLEKS R8 R7 K12 ["Font"]
  LOADK R8 K19 ["$NormalTextSize"]
  SETTABLEKS R8 R7 K13 ["TextSize"]
  LOADK R8 K20 ["$TextContrast"]
  SETTABLEKS R8 R7 K14 ["TextColor3"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K21 ["TextButton"]
  DUPTABLE R8 K25 [{"TextXAlignment", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R9 K27 [Enum.TextXAlignment.Center]
  SETTABLEKS R9 R8 K22 ["TextXAlignment"]
  LOADK R9 K28 ["$CancelButtonBackgroundColor"]
  SETTABLEKS R9 R8 K23 ["BackgroundColor3"]
  LOADK R9 K29 ["$NotTransparent"]
  SETTABLEKS R9 R8 K24 ["BackgroundTransparency"]
  NEWTABLE R9 0 3
  MOVE R10 R2
  LOADK R11 K30 ["::UIPadding"]
  DUPTABLE R12 K35 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
  GETIMPORT R13 K38 [UDim.new]
  LOADN R14 0
  LOADN R15 4
  CALL R13 2 1
  SETTABLEKS R13 R12 K31 ["PaddingTop"]
  GETIMPORT R13 K38 [UDim.new]
  LOADN R14 0
  LOADN R15 16
  CALL R13 2 1
  SETTABLEKS R13 R12 K32 ["PaddingRight"]
  GETIMPORT R13 K38 [UDim.new]
  LOADN R14 0
  LOADN R15 4
  CALL R13 2 1
  SETTABLEKS R13 R12 K33 ["PaddingBottom"]
  GETIMPORT R13 K38 [UDim.new]
  LOADN R14 0
  LOADN R15 16
  CALL R13 2 1
  SETTABLEKS R13 R12 K34 ["PaddingLeft"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K39 [".Enabled :hover"]
  DUPTABLE R13 K40 [{"BackgroundColor3"}]
  LOADK R14 K41 ["$CancelButtonHoverBackgroundColor"]
  SETTABLEKS R14 R13 K23 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K42 [".Disabled"]
  DUPTABLE R14 K40 [{"BackgroundColor3"}]
  LOADK R15 K43 ["$SecondaryHoverBackground"]
  SETTABLEKS R15 R14 K23 ["BackgroundColor3"]
  CALL R12 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K44 ["TextLabel"]
  DUPTABLE R9 K45 [{"BackgroundTransparency", "TextXAlignment"}]
  LOADK R10 K46 ["$Transparent"]
  SETTABLEKS R10 R9 K24 ["BackgroundTransparency"]
  GETIMPORT R10 K48 [Enum.TextXAlignment.Left]
  SETTABLEKS R10 R9 K22 ["TextXAlignment"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K49 ["Frame"]
  DUPTABLE R10 K50 [{"BackgroundTransparency"}]
  LOADK R11 K46 ["$Transparent"]
  SETTABLEKS R11 R10 K24 ["BackgroundTransparency"]
  CALL R8 2 -1
  SETLIST R4 R5 -1 [1]
  DUPTABLE R5 K54 [{"NormalTextSize", "NotTransparent", "Transparent"}]
  LOADN R6 16
  SETTABLEKS R6 R5 K51 ["NormalTextSize"]
  LOADN R6 0
  SETTABLEKS R6 R5 K52 ["NotTransparent"]
  LOADN R6 1
  SETTABLEKS R6 R5 K53 ["Transparent"]
  MOVE R6 R3
  LOADK R7 K2 ["CancellableDialog"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
