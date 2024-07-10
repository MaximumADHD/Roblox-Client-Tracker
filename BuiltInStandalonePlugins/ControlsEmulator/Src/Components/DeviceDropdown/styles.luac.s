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
  SUBK R5 R4 K13 [6]
  MOVE R6 R3
  LOADK R7 K14 [".Component-DeviceDropdown"]
  DUPTABLE R8 K19 [{"Size", "BackgroundColor3", "BorderSizePixel", "BorderColor3"}]
  GETIMPORT R9 K22 [UDim2.new]
  LOADN R10 0
  LOADN R11 200
  LOADN R12 0
  GETTABLEKS R13 R2 K12 ["deviceHeaderHeight"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K15 ["Size"]
  LOADK R9 K23 ["$BackgroundPaper"]
  SETTABLEKS R9 R8 K16 ["BackgroundColor3"]
  LOADN R9 1
  SETTABLEKS R9 R8 K17 ["BorderSizePixel"]
  LOADK R9 K24 ["$ForegroundMain"]
  SETTABLEKS R9 R8 K18 ["BorderColor3"]
  NEWTABLE R9 0 5
  MOVE R10 R3
  LOADK R11 K25 ["::UICorner"]
  DUPTABLE R12 K27 [{"CornerRadius"}]
  GETIMPORT R13 K29 [UDim.new]
  LOADN R14 0
  GETTABLEKS R15 R2 K30 ["deviceSelectorCornerRadius"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K26 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K31 [":hover"]
  DUPTABLE R13 K32 [{"BackgroundColor3"}]
  LOADK R14 K33 ["$ActionHover"]
  SETTABLEKS R14 R13 K16 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R3
  LOADK R13 K34 ["::UIPadding"]
  DUPTABLE R14 K39 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R15 K29 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K35 ["PaddingLeft"]
  GETIMPORT R15 K29 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K36 ["PaddingRight"]
  GETIMPORT R15 K29 [UDim.new]
  LOADN R16 0
  LOADN R17 3
  CALL R15 2 1
  SETTABLEKS R15 R14 K37 ["PaddingTop"]
  GETIMPORT R15 K29 [UDim.new]
  LOADN R16 0
  LOADN R17 3
  CALL R15 2 1
  SETTABLEKS R15 R14 K38 ["PaddingBottom"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K40 ["> #Selected"]
  DUPTABLE R15 K44 [{"TextColor3", "TextSize", "TextXAlignment"}]
  LOADK R16 K45 ["$TextPrimary"]
  SETTABLEKS R16 R15 K41 ["TextColor3"]
  GETTABLEKS R16 R2 K46 ["detailFontSize"]
  SETTABLEKS R16 R15 K42 ["TextSize"]
  GETIMPORT R16 K49 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K43 ["TextXAlignment"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K50 ["> #ButtonContainer"]
  DUPTABLE R16 K52 [{"Position", "Size"}]
  GETIMPORT R17 K22 [UDim2.new]
  LOADN R18 1
  MINUS R19 R5
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K51 ["Position"]
  GETIMPORT R17 K22 [UDim2.new]
  LOADN R18 0
  MOVE R19 R5
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K15 ["Size"]
  NEWTABLE R17 0 1
  MOVE R18 R3
  LOADK R19 K53 ["> #OpenSelectorButton"]
  DUPTABLE R20 K56 [{"Size", "AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency"}]
  GETIMPORT R21 K22 [UDim2.new]
  LOADN R22 0
  LOADN R23 16
  LOADN R24 0
  LOADN R25 16
  CALL R21 4 1
  SETTABLEKS R21 R20 K15 ["Size"]
  GETIMPORT R21 K58 [Vector2.new]
  LOADK R22 K59 [0.5]
  LOADK R23 K59 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K54 ["AnchorPoint"]
  GETIMPORT R21 K22 [UDim2.new]
  LOADK R22 K59 [0.5]
  LOADN R23 0
  LOADK R24 K59 [0.5]
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K51 ["Position"]
  LOADN R21 0
  SETTABLEKS R21 R20 K17 ["BorderSizePixel"]
  LOADN R21 1
  SETTABLEKS R21 R20 K55 ["BackgroundTransparency"]
  NEWTABLE R21 0 2
  MOVE R22 R3
  LOADK R23 K60 [".Open"]
  DUPTABLE R24 K62 [{"Image"}]
  LOADK R25 K63 ["$RightArrow"]
  SETTABLEKS R25 R24 K61 ["Image"]
  CALL R22 2 1
  MOVE R23 R3
  LOADK R24 K64 [".Close"]
  DUPTABLE R25 K62 [{"Image"}]
  LOADK R26 K65 ["$DownArrow"]
  SETTABLEKS R26 R25 K61 ["Image"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 -1
  RETURN R6 -1
