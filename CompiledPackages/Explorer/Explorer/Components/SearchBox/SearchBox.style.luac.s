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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Flags"]
  GETTABLEKS R4 R5 K11 ["getFFlagExplorerFixBlurryTextHopefully"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Flags"]
  GETTABLEKS R5 R6 K12 ["getFFlagExplorerUseBuilderSans"]
  CALL R4 1 1
  GETTABLEKS R6 R2 K13 ["Styling"]
  GETTABLEKS R5 R6 K14 ["createStyleRule"]
  MOVE R6 R5
  LOADK R7 K15 [".Explorer-SearchBox"]
  DUPTABLE R8 K18 [{"BackgroundTransparency", "Size"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K16 ["BackgroundTransparency"]
  GETIMPORT R9 K21 [UDim2.fromScale]
  LOADN R10 1
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["Size"]
  NEWTABLE R9 0 8
  MOVE R10 R5
  LOADK R11 K22 [">> .Explorer-SearchBox-Corner ::UICorner"]
  DUPTABLE R12 K24 [{"CornerRadius"}]
  GETIMPORT R13 K27 [UDim.new]
  LOADN R14 0
  LOADN R15 6
  CALL R13 2 1
  SETTABLEKS R13 R12 K23 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R5
  LOADK R12 K28 [">> .Explorer-SearchBox-SearchBar"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 2
  MOVE R15 R5
  LOADK R16 K29 [">> UIStroke"]
  DUPTABLE R17 K32 [{"Color", "Thickness"}]
  LOADK R18 K33 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R18 R17 K30 ["Color"]
  LOADK R18 K34 [1.5]
  SETTABLEKS R18 R17 K31 ["Thickness"]
  CALL R15 2 1
  MOVE R16 R5
  LOADK R17 K35 [">> TextBox"]
  DUPTABLE R18 K47 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "ClipsDescendants", "Font", "PlaceholderColor3", "Position", "TextColor3", "Text", "TextSize", "TextXAlignment"}]
  GETIMPORT R19 K49 [Vector2.new]
  LOADK R20 K50 [0.5]
  LOADK R21 K50 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K36 ["AnchorPoint"]
  LOADN R19 1
  SETTABLEKS R19 R18 K16 ["BackgroundTransparency"]
  LOADN R19 0
  SETTABLEKS R19 R18 K37 ["BorderSizePixel"]
  LOADB R19 0
  SETTABLEKS R19 R18 K38 ["ClearTextOnFocus"]
  LOADB R19 1
  SETTABLEKS R19 R18 K39 ["ClipsDescendants"]
  MOVE R20 R4
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADNIL R19
  JUMP [+2]
  GETIMPORT R19 K53 [Enum.Font.SourceSans]
  SETTABLEKS R19 R18 K40 ["Font"]
  LOADK R19 K54 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R19 R18 K41 ["PlaceholderColor3"]
  GETIMPORT R19 K21 [UDim2.fromScale]
  LOADK R20 K50 [0.5]
  LOADK R21 K50 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K42 ["Position"]
  MOVE R20 R3
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADNIL R19
  JUMP [+1]
  LOADK R19 K54 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R19 R18 K43 ["TextColor3"]
  LOADK R19 K55 [""]
  SETTABLEKS R19 R18 K44 ["Text"]
  MOVE R20 R3
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADNIL R19
  JUMP [+1]
  LOADK R19 K56 [17.598]
  SETTABLEKS R19 R18 K45 ["TextSize"]
  GETIMPORT R19 K58 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K46 ["TextXAlignment"]
  CALL R16 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R5
  LOADK R13 K59 [">> .Explorer-SearchBox-SearchBrowser"]
  DUPTABLE R14 K18 [{"BackgroundTransparency", "Size"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K16 ["BackgroundTransparency"]
  GETIMPORT R15 K60 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 20
  CALL R15 4 1
  SETTABLEKS R15 R14 K17 ["Size"]
  NEWTABLE R15 0 1
  MOVE R16 R5
  LOADK R17 K61 [">> TextLabel"]
  DUPTABLE R18 K62 [{"BackgroundTransparency", "ClipsDescendants", "Font", "Size", "TextColor3", "TextSize", "TextXAlignment"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K16 ["BackgroundTransparency"]
  LOADB R19 1
  SETTABLEKS R19 R18 K39 ["ClipsDescendants"]
  MOVE R20 R4
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADNIL R19
  JUMP [+2]
  GETIMPORT R19 K53 [Enum.Font.SourceSans]
  SETTABLEKS R19 R18 K40 ["Font"]
  GETIMPORT R19 K21 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K17 ["Size"]
  MOVE R20 R3
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADNIL R19
  JUMP [+1]
  LOADK R19 K54 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R19 R18 K43 ["TextColor3"]
  MOVE R20 R3
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADNIL R19
  JUMP [+1]
  LOADK R19 K56 [17.598]
  SETTABLEKS R19 R18 K45 ["TextSize"]
  GETIMPORT R19 K58 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K46 ["TextXAlignment"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R5
  LOADK R14 K63 [">> .Explorer-SearchBox-BottomBorder"]
  DUPTABLE R15 K64 [{"AnchorPoint", "BorderSizePixel", "Size"}]
  GETIMPORT R16 K49 [Vector2.new]
  LOADK R17 K50 [0.5]
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K36 ["AnchorPoint"]
  LOADN R16 0
  SETTABLEKS R16 R15 K37 ["BorderSizePixel"]
  GETIMPORT R16 K60 [UDim2.new]
  LOADN R17 1
  LOADN R18 10
  LOADN R19 0
  GETTABLEKS R20 R1 K65 ["searchHeaderBottomBorderWidth"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K17 ["Size"]
  CALL R13 2 1
  MOVE R14 R5
  LOADK R15 K66 [">> .Explorer-SearchBox-Dropdown"]
  DUPTABLE R16 K68 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
  GETIMPORT R17 K49 [Vector2.new]
  LOADK R18 K50 [0.5]
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K36 ["AnchorPoint"]
  GETIMPORT R17 K70 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K67 ["AutomaticSize"]
  GETIMPORT R17 K21 [UDim2.fromScale]
  LOADK R18 K50 [0.5]
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K42 ["Position"]
  GETIMPORT R17 K60 [UDim2.new]
  LOADN R18 1
  LOADN R19 246
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K17 ["Size"]
  NEWTABLE R17 0 2
  MOVE R18 R5
  LOADK R19 K71 ["::UIStroke"]
  DUPTABLE R20 K73 [{"Color", "Transparency", "Thickness"}]
  LOADK R21 K74 ["$RDLSemanticColorComponentInputFill"]
  SETTABLEKS R21 R20 K30 ["Color"]
  LOADK R21 K75 ["$RDLSemanticColorComponentInputFillTransparency"]
  SETTABLEKS R21 R20 K72 ["Transparency"]
  LOADK R21 K34 [1.5]
  SETTABLEKS R21 R20 K31 ["Thickness"]
  CALL R18 2 1
  MOVE R19 R5
  LOADK R20 K76 [">> ScrollingFrame"]
  DUPTABLE R21 K80 [{"AnchorPoint", "AutomaticCanvasSize", "BackgroundTransparency", "BorderSizePixel", "CanvasSize", "Position", "ScrollingDirection"}]
  GETIMPORT R22 K49 [Vector2.new]
  LOADK R23 K50 [0.5]
  LOADK R24 K50 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K36 ["AnchorPoint"]
  GETIMPORT R22 K70 [Enum.AutomaticSize.Y]
  SETTABLEKS R22 R21 K77 ["AutomaticCanvasSize"]
  LOADN R22 1
  SETTABLEKS R22 R21 K16 ["BackgroundTransparency"]
  LOADN R22 0
  SETTABLEKS R22 R21 K37 ["BorderSizePixel"]
  GETIMPORT R22 K21 [UDim2.fromScale]
  LOADN R23 1
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K78 ["CanvasSize"]
  GETIMPORT R22 K21 [UDim2.fromScale]
  LOADK R23 K50 [0.5]
  LOADK R24 K50 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K42 ["Position"]
  GETIMPORT R22 K81 [Enum.ScrollingDirection.Y]
  SETTABLEKS R22 R21 K79 ["ScrollingDirection"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R5
  LOADK R16 K82 [">> .Explorer-SearchBox-DropdownHeader"]
  DUPTABLE R17 K18 [{"BackgroundTransparency", "Size"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K16 ["BackgroundTransparency"]
  GETIMPORT R18 K60 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 25
  CALL R18 4 1
  SETTABLEKS R18 R17 K17 ["Size"]
  CALL R15 2 1
  MOVE R16 R5
  LOADK R17 K83 [">> .Explorer-SearchBox-DropdownTitle"]
  DUPTABLE R18 K85 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K16 ["BackgroundTransparency"]
  MOVE R20 R4
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADNIL R19
  JUMP [+2]
  GETIMPORT R19 K53 [Enum.Font.SourceSans]
  SETTABLEKS R19 R18 K40 ["Font"]
  MOVE R20 R3
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADNIL R19
  JUMP [+1]
  LOADK R19 K54 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R19 R18 K43 ["TextColor3"]
  MOVE R20 R3
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADNIL R19
  JUMP [+1]
  LOADK R19 K56 [17.598]
  SETTABLEKS R19 R18 K45 ["TextSize"]
  GETIMPORT R19 K58 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K46 ["TextXAlignment"]
  GETIMPORT R19 K87 [Enum.TextYAlignment.Top]
  SETTABLEKS R19 R18 K84 ["TextYAlignment"]
  CALL R16 2 1
  MOVE R17 R5
  LOADK R18 K88 [">> .Explorer-SearchBox-DropdownItem"]
  DUPTABLE R19 K90 [{"BackgroundColor3", "Text"}]
  LOADK R20 K91 ["$RDLSemanticColorStatesHover"]
  SETTABLEKS R20 R19 K89 ["BackgroundColor3"]
  LOADK R20 K55 [""]
  SETTABLEKS R20 R19 K44 ["Text"]
  NEWTABLE R20 0 1
  MOVE R21 R5
  LOADK R22 K61 [">> TextLabel"]
  DUPTABLE R23 K92 [{"BackgroundTransparency", "TextXAlignment"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K16 ["BackgroundTransparency"]
  GETIMPORT R24 K58 [Enum.TextXAlignment.Left]
  SETTABLEKS R24 R23 K46 ["TextXAlignment"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 -1
  RETURN R6 -1
