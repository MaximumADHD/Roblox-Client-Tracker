MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  MOVE R4 R3
  LOADK R5 K12 [".Explorer-SearchBox"]
  DUPTABLE R6 K15 [{"BackgroundTransparency", "Size"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K13 ["BackgroundTransparency"]
  GETIMPORT R7 K18 [UDim2.fromScale]
  LOADN R8 1
  LOADN R9 1
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Size"]
  NEWTABLE R7 0 8
  MOVE R8 R3
  LOADK R9 K19 [">> .Explorer-SearchBox-Corner ::UICorner"]
  DUPTABLE R10 K21 [{"CornerRadius"}]
  GETIMPORT R11 K24 [UDim.new]
  LOADN R12 0
  LOADN R13 6
  CALL R11 2 1
  SETTABLEKS R11 R10 K20 ["CornerRadius"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K25 [">> .Explorer-SearchBox-SearchBar"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 2
  MOVE R13 R3
  LOADK R14 K26 [">> UIStroke"]
  DUPTABLE R15 K29 [{"Color", "Thickness"}]
  LOADK R16 K30 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R16 R15 K27 ["Color"]
  LOADK R16 K31 [1.5]
  SETTABLEKS R16 R15 K28 ["Thickness"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K32 [">> TextBox"]
  DUPTABLE R16 K44 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "ClipsDescendants", "Font", "PlaceholderColor3", "Position", "TextColor3", "Text", "TextSize", "TextXAlignment"}]
  GETIMPORT R17 K46 [Vector2.new]
  LOADK R18 K47 [0.5]
  LOADK R19 K47 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K33 ["AnchorPoint"]
  LOADN R17 1
  SETTABLEKS R17 R16 K13 ["BackgroundTransparency"]
  LOADN R17 0
  SETTABLEKS R17 R16 K34 ["BorderSizePixel"]
  LOADB R17 0
  SETTABLEKS R17 R16 K35 ["ClearTextOnFocus"]
  LOADB R17 1
  SETTABLEKS R17 R16 K36 ["ClipsDescendants"]
  GETIMPORT R17 K50 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K37 ["Font"]
  LOADK R17 K51 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R17 R16 K38 ["PlaceholderColor3"]
  GETIMPORT R17 K18 [UDim2.fromScale]
  LOADK R18 K47 [0.5]
  LOADK R19 K47 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K39 ["Position"]
  LOADK R17 K51 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R17 R16 K40 ["TextColor3"]
  LOADK R17 K52 [""]
  SETTABLEKS R17 R16 K41 ["Text"]
  LOADK R17 K53 [17.598]
  SETTABLEKS R17 R16 K42 ["TextSize"]
  GETIMPORT R17 K55 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K43 ["TextXAlignment"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R3
  LOADK R11 K56 [">> .Explorer-SearchBox-SearchBrowser"]
  DUPTABLE R12 K15 [{"BackgroundTransparency", "Size"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K13 ["BackgroundTransparency"]
  GETIMPORT R13 K57 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 20
  CALL R13 4 1
  SETTABLEKS R13 R12 K14 ["Size"]
  NEWTABLE R13 0 1
  MOVE R14 R3
  LOADK R15 K58 [">> TextLabel"]
  DUPTABLE R16 K59 [{"BackgroundTransparency", "ClipsDescendants", "Font", "Size", "TextColor3", "TextSize", "TextXAlignment"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K13 ["BackgroundTransparency"]
  LOADB R17 1
  SETTABLEKS R17 R16 K36 ["ClipsDescendants"]
  GETIMPORT R17 K50 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K37 ["Font"]
  GETIMPORT R17 K18 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K14 ["Size"]
  LOADK R17 K51 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R17 R16 K40 ["TextColor3"]
  LOADK R17 K53 [17.598]
  SETTABLEKS R17 R16 K42 ["TextSize"]
  GETIMPORT R17 K55 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K43 ["TextXAlignment"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R3
  LOADK R12 K60 [">> .Explorer-SearchBox-BottomBorder"]
  DUPTABLE R13 K61 [{"AnchorPoint", "BorderSizePixel", "Size"}]
  GETIMPORT R14 K46 [Vector2.new]
  LOADK R15 K47 [0.5]
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K33 ["AnchorPoint"]
  LOADN R14 0
  SETTABLEKS R14 R13 K34 ["BorderSizePixel"]
  GETIMPORT R14 K57 [UDim2.new]
  LOADN R15 1
  LOADN R16 10
  LOADN R17 0
  GETTABLEKS R18 R1 K62 ["searchHeaderBottomBorderWidth"]
  CALL R14 4 1
  SETTABLEKS R14 R13 K14 ["Size"]
  CALL R11 2 1
  MOVE R12 R3
  LOADK R13 K63 [">> .Explorer-SearchBox-Dropdown"]
  DUPTABLE R14 K65 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
  GETIMPORT R15 K46 [Vector2.new]
  LOADK R16 K47 [0.5]
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K33 ["AnchorPoint"]
  GETIMPORT R15 K67 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K64 ["AutomaticSize"]
  GETIMPORT R15 K18 [UDim2.fromScale]
  LOADK R16 K47 [0.5]
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K39 ["Position"]
  GETIMPORT R15 K57 [UDim2.new]
  LOADN R16 1
  LOADN R17 246
  LOADN R18 0
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K14 ["Size"]
  NEWTABLE R15 0 2
  MOVE R16 R3
  LOADK R17 K68 ["::UIStroke"]
  DUPTABLE R18 K70 [{"Color", "Transparency", "Thickness"}]
  LOADK R19 K71 ["$RDLSemanticColorComponentInputFill"]
  SETTABLEKS R19 R18 K27 ["Color"]
  LOADK R19 K72 ["$RDLSemanticColorComponentInputFillTransparency"]
  SETTABLEKS R19 R18 K69 ["Transparency"]
  LOADK R19 K31 [1.5]
  SETTABLEKS R19 R18 K28 ["Thickness"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K73 [">> ScrollingFrame"]
  DUPTABLE R19 K77 [{"AnchorPoint", "AutomaticCanvasSize", "BackgroundTransparency", "BorderSizePixel", "CanvasSize", "Position", "ScrollingDirection"}]
  GETIMPORT R20 K46 [Vector2.new]
  LOADK R21 K47 [0.5]
  LOADK R22 K47 [0.5]
  CALL R20 2 1
  SETTABLEKS R20 R19 K33 ["AnchorPoint"]
  GETIMPORT R20 K67 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K74 ["AutomaticCanvasSize"]
  LOADN R20 1
  SETTABLEKS R20 R19 K13 ["BackgroundTransparency"]
  LOADN R20 0
  SETTABLEKS R20 R19 K34 ["BorderSizePixel"]
  GETIMPORT R20 K18 [UDim2.fromScale]
  LOADN R21 1
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K75 ["CanvasSize"]
  GETIMPORT R20 K18 [UDim2.fromScale]
  LOADK R21 K47 [0.5]
  LOADK R22 K47 [0.5]
  CALL R20 2 1
  SETTABLEKS R20 R19 K39 ["Position"]
  GETIMPORT R20 K78 [Enum.ScrollingDirection.Y]
  SETTABLEKS R20 R19 K76 ["ScrollingDirection"]
  CALL R17 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R3
  LOADK R14 K79 [">> .Explorer-SearchBox-DropdownHeader"]
  DUPTABLE R15 K15 [{"BackgroundTransparency", "Size"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K13 ["BackgroundTransparency"]
  GETIMPORT R16 K57 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 25
  CALL R16 4 1
  SETTABLEKS R16 R15 K14 ["Size"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K80 [">> .Explorer-SearchBox-DropdownTitle"]
  DUPTABLE R16 K82 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K13 ["BackgroundTransparency"]
  GETIMPORT R17 K50 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K37 ["Font"]
  LOADK R17 K51 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R17 R16 K40 ["TextColor3"]
  LOADK R17 K53 [17.598]
  SETTABLEKS R17 R16 K42 ["TextSize"]
  GETIMPORT R17 K55 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K43 ["TextXAlignment"]
  GETIMPORT R17 K84 [Enum.TextYAlignment.Top]
  SETTABLEKS R17 R16 K81 ["TextYAlignment"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K85 [">> .Explorer-SearchBox-DropdownItem"]
  DUPTABLE R17 K87 [{"BackgroundColor3", "Text"}]
  LOADK R18 K88 ["$RDLSemanticColorStatesHover"]
  SETTABLEKS R18 R17 K86 ["BackgroundColor3"]
  LOADK R18 K52 [""]
  SETTABLEKS R18 R17 K41 ["Text"]
  NEWTABLE R18 0 1
  MOVE R19 R3
  LOADK R20 K58 [">> TextLabel"]
  DUPTABLE R21 K89 [{"BackgroundTransparency", "TextXAlignment"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K13 ["BackgroundTransparency"]
  GETIMPORT R22 K55 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K43 ["TextXAlignment"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
