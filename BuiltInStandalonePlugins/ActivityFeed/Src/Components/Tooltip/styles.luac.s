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
  GETIMPORT R7 K16 [game]
  LOADK R9 K17 ["ActivityHistoryCompactUI"]
  NAMECALL R7 R7 K18 ["GetFastFlag"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K19 [".Component-Tooltip"]
  DUPTABLE R10 K26 [{"BackgroundColor3", "BorderSizePixel", "BorderColor3", "Position", "Size", "AutomaticSize"}]
  JUMPIFNOT R7 [+2]
  LOADK R11 K27 ["$FoundationColorsShift100"]
  JUMP [+1]
  LOADK R11 K28 ["$ForegroundContrast"]
  SETTABLEKS R11 R10 K20 ["BackgroundColor3"]
  LOADN R11 1
  SETTABLEKS R11 R10 K21 ["BorderSizePixel"]
  JUMPIFNOT R7 [+2]
  LOADK R11 K29 ["$FoundationColorsShift300"]
  JUMP [+1]
  LOADK R11 K30 ["$Divider"]
  SETTABLEKS R11 R10 K22 ["BorderColor3"]
  GETIMPORT R11 K33 [UDim2.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K23 ["Position"]
  GETIMPORT R11 K33 [UDim2.new]
  LOADK R12 K34 [0.5]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K24 ["Size"]
  GETIMPORT R11 K37 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K25 ["AutomaticSize"]
  NEWTABLE R11 0 3
  MOVE R12 R2
  LOADK R13 K38 ["::UIPadding"]
  DUPTABLE R14 K43 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R15 K45 [UDim.new]
  LOADN R16 0
  MOVE R17 R4
  CALL R15 2 1
  SETTABLEKS R15 R14 K39 ["PaddingTop"]
  GETIMPORT R15 K45 [UDim.new]
  LOADN R16 0
  MOVE R17 R4
  CALL R15 2 1
  SETTABLEKS R15 R14 K40 ["PaddingBottom"]
  GETIMPORT R15 K45 [UDim.new]
  LOADN R16 0
  MOVE R17 R4
  CALL R15 2 1
  SETTABLEKS R15 R14 K41 ["PaddingLeft"]
  GETIMPORT R15 K45 [UDim.new]
  LOADN R16 0
  MOVE R17 R4
  CALL R15 2 1
  SETTABLEKS R15 R14 K42 ["PaddingRight"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K46 ["::UIListLayout"]
  DUPTABLE R15 K48 [{"Padding"}]
  GETIMPORT R16 K45 [UDim.new]
  LOADN R17 0
  MOVE R18 R4
  CALL R16 2 1
  SETTABLEKS R16 R15 K47 ["Padding"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K49 ["> TextLabel"]
  DUPTABLE R16 K56 [{"TextColor3", "TextXAlignment", "TextYAlignment", "TextSize", "TextWrapped", "LineHeight"}]
  JUMPIFNOT R7 [+2]
  LOADK R17 K57 ["$FoundationColorsContentEmphasis"]
  JUMP [+1]
  LOADK R17 K58 ["$TextPrimary"]
  SETTABLEKS R17 R16 K50 ["TextColor3"]
  GETIMPORT R17 K60 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K51 ["TextXAlignment"]
  GETIMPORT R17 K62 [Enum.TextYAlignment.Center]
  SETTABLEKS R17 R16 K52 ["TextYAlignment"]
  SETTABLEKS R5 R16 K53 ["TextSize"]
  LOADB R17 1
  SETTABLEKS R17 R16 K54 ["TextWrapped"]
  SETTABLEKS R6 R16 K55 ["LineHeight"]
  CALL R14 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 -1
  RETURN R8 -1
