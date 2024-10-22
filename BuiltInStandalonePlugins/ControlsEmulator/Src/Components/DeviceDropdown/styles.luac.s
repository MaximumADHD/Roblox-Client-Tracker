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
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Resources"]
  GETTABLEKS R3 R4 K9 ["StyleConstants"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  GETTABLEKS R4 R2 K12 ["deviceHeaderHeight"]
  MOVE R5 R3
  LOADK R6 K13 [".Component-DeviceDropdown"]
  DUPTABLE R7 K19 [{"Size", "Position", "BorderSizePixel", "BorderColor3", "BackgroundColor3"}]
  GETIMPORT R8 K22 [UDim2.new]
  LOADN R9 0
  LOADN R10 200
  LOADN R11 0
  SUBK R12 R4 K23 [10]
  CALL R8 4 1
  SETTABLEKS R8 R7 K14 ["Size"]
  GETIMPORT R8 K22 [UDim2.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K15 ["Position"]
  LOADN R8 1
  SETTABLEKS R8 R7 K16 ["BorderSizePixel"]
  LOADK R8 K24 ["$BackgroundDefault"]
  SETTABLEKS R8 R7 K17 ["BorderColor3"]
  LOADK R8 K25 ["$BackgroundPaper"]
  SETTABLEKS R8 R7 K18 ["BackgroundColor3"]
  NEWTABLE R8 0 6
  MOVE R9 R3
  LOADK R10 K26 ["::UICorner"]
  DUPTABLE R11 K28 [{"CornerRadius"}]
  GETIMPORT R12 K30 [UDim.new]
  LOADN R13 0
  GETTABLEKS R14 R2 K31 ["deviceSelectorCornerRadius"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K27 ["CornerRadius"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K32 [":hover"]
  DUPTABLE R12 K33 [{"BackgroundColor3"}]
  LOADK R13 K34 ["$ActionHover"]
  SETTABLEKS R13 R12 K18 ["BackgroundColor3"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K35 ["::UIPadding"]
  DUPTABLE R13 K37 [{"PaddingLeft"}]
  GETIMPORT R14 K30 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K36 ["PaddingLeft"]
  CALL R11 2 1
  MOVE R12 R3
  LOADK R13 K38 ["> #Selected"]
  DUPTABLE R14 K42 [{"TextColor3", "TextSize", "TextXAlignment"}]
  LOADK R15 K43 ["$TextPrimary"]
  SETTABLEKS R15 R14 K39 ["TextColor3"]
  GETTABLEKS R15 R2 K44 ["normalFontSize"]
  SETTABLEKS R15 R14 K40 ["TextSize"]
  GETIMPORT R15 K47 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K41 ["TextXAlignment"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K48 ["> #Menu"]
  DUPTABLE R15 K49 [{"TextColor3", "TextSize"}]
  LOADK R16 K43 ["$TextPrimary"]
  SETTABLEKS R16 R15 K39 ["TextColor3"]
  GETTABLEKS R16 R2 K44 ["normalFontSize"]
  SETTABLEKS R16 R15 K40 ["TextSize"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K50 ["> #ButtonContainer"]
  DUPTABLE R16 K51 [{"Position", "Size"}]
  GETIMPORT R17 K22 [UDim2.new]
  LOADN R18 1
  LOADN R19 240
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K15 ["Position"]
  GETIMPORT R17 K22 [UDim2.new]
  LOADN R18 0
  LOADN R19 16
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K14 ["Size"]
  NEWTABLE R17 0 1
  MOVE R18 R3
  LOADK R19 K52 ["> #OpenSelectorButton"]
  DUPTABLE R20 K55 [{"Size", "AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency"}]
  GETIMPORT R21 K22 [UDim2.new]
  LOADN R22 0
  LOADN R23 16
  LOADN R24 0
  LOADN R25 16
  CALL R21 4 1
  SETTABLEKS R21 R20 K14 ["Size"]
  GETIMPORT R21 K57 [Vector2.new]
  LOADK R22 K58 [0.5]
  LOADK R23 K58 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K53 ["AnchorPoint"]
  GETIMPORT R21 K22 [UDim2.new]
  LOADK R22 K58 [0.5]
  LOADN R23 0
  LOADK R24 K58 [0.5]
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K15 ["Position"]
  LOADN R21 0
  SETTABLEKS R21 R20 K16 ["BorderSizePixel"]
  LOADN R21 1
  SETTABLEKS R21 R20 K54 ["BackgroundTransparency"]
  NEWTABLE R21 0 2
  MOVE R22 R3
  LOADK R23 K59 [".Open"]
  DUPTABLE R24 K61 [{"Image"}]
  LOADK R25 K62 ["$DownArrow"]
  SETTABLEKS R25 R24 K60 ["Image"]
  CALL R22 2 1
  MOVE R23 R3
  LOADK R24 K63 [".Close"]
  DUPTABLE R25 K61 [{"Image"}]
  LOADK R26 K64 ["$RightArrow"]
  SETTABLEKS R26 R25 K60 ["Image"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1
