MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["StyleTips"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["defaultPadding"]
  GETTABLEKS R5 R3 K13 ["detailFontSize"]
  DIVRK R6 R14 K5 ["Packages"]
  MOVE R7 R2
  LOADK R8 K15 [".Component-Tooltip"]
  DUPTABLE R9 K22 [{"BackgroundColor3", "BorderSizePixel", "BorderColor3", "Position", "Size", "AutomaticSize"}]
  LOADK R10 K23 ["$ForegroundContrast"]
  SETTABLEKS R10 R9 K16 ["BackgroundColor3"]
  LOADN R10 1
  SETTABLEKS R10 R9 K17 ["BorderSizePixel"]
  LOADK R10 K24 ["$Divider"]
  SETTABLEKS R10 R9 K18 ["BorderColor3"]
  GETIMPORT R10 K27 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K19 ["Position"]
  GETIMPORT R10 K27 [UDim2.new]
  LOADK R11 K28 [0.5]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K20 ["Size"]
  GETIMPORT R10 K31 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K21 ["AutomaticSize"]
  NEWTABLE R10 0 3
  MOVE R11 R2
  LOADK R12 K32 ["::UIPadding"]
  DUPTABLE R13 K37 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R14 K39 [UDim.new]
  LOADN R15 0
  MOVE R16 R4
  CALL R14 2 1
  SETTABLEKS R14 R13 K33 ["PaddingTop"]
  GETIMPORT R14 K39 [UDim.new]
  LOADN R15 0
  MOVE R16 R4
  CALL R14 2 1
  SETTABLEKS R14 R13 K34 ["PaddingBottom"]
  GETIMPORT R14 K39 [UDim.new]
  LOADN R15 0
  MOVE R16 R4
  CALL R14 2 1
  SETTABLEKS R14 R13 K35 ["PaddingLeft"]
  GETIMPORT R14 K39 [UDim.new]
  LOADN R15 0
  MOVE R16 R4
  CALL R14 2 1
  SETTABLEKS R14 R13 K36 ["PaddingRight"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K40 ["::UIListLayout"]
  DUPTABLE R14 K42 [{"Padding"}]
  GETIMPORT R15 K39 [UDim.new]
  LOADN R16 0
  MOVE R17 R4
  CALL R15 2 1
  SETTABLEKS R15 R14 K41 ["Padding"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K43 ["> TextLabel"]
  DUPTABLE R15 K50 [{"TextColor3", "TextXAlignment", "TextYAlignment", "TextSize", "TextWrapped", "LineHeight"}]
  LOADK R16 K51 ["$TextPrimary"]
  SETTABLEKS R16 R15 K44 ["TextColor3"]
  GETIMPORT R16 K53 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K45 ["TextXAlignment"]
  GETIMPORT R16 K55 [Enum.TextYAlignment.Center]
  SETTABLEKS R16 R15 K46 ["TextYAlignment"]
  SETTABLEKS R5 R15 K47 ["TextSize"]
  LOADB R16 1
  SETTABLEKS R16 R15 K48 ["TextWrapped"]
  SETTABLEKS R6 R15 K49 ["LineHeight"]
  CALL R13 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  RETURN R7 -1
