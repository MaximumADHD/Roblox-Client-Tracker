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
  GETTABLEKS R5 R2 K12 ["Styling"]
  GETTABLEKS R4 R5 K13 ["createStyleRule"]
  MOVE R5 R4
  LOADK R6 K14 [".Explorer-SearchBox"]
  DUPTABLE R7 K17 [{"BackgroundTransparency", "Size"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K15 ["BackgroundTransparency"]
  GETIMPORT R8 K20 [UDim2.fromScale]
  LOADN R9 1
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K16 ["Size"]
  NEWTABLE R8 0 8
  MOVE R9 R4
  LOADK R10 K21 [">> .Explorer-SearchBox-Corner ::UICorner"]
  DUPTABLE R11 K23 [{"CornerRadius"}]
  GETIMPORT R12 K26 [UDim.new]
  LOADN R13 0
  LOADN R14 6
  CALL R12 2 1
  SETTABLEKS R12 R11 K22 ["CornerRadius"]
  CALL R9 2 1
  MOVE R10 R4
  LOADK R11 K27 [">> .Explorer-SearchBox-SearchBar"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 2
  MOVE R14 R4
  LOADK R15 K28 [">> UIStroke"]
  DUPTABLE R16 K31 [{"Color", "Thickness"}]
  LOADK R17 K32 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R17 R16 K29 ["Color"]
  LOADK R17 K33 [1.5]
  SETTABLEKS R17 R16 K30 ["Thickness"]
  CALL R14 2 1
  MOVE R15 R4
  LOADK R16 K34 [">> TextBox"]
  DUPTABLE R17 K46 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "ClipsDescendants", "Font", "PlaceholderColor3", "Position", "TextColor3", "Text", "TextSize", "TextXAlignment"}]
  GETIMPORT R18 K48 [Vector2.new]
  LOADK R19 K49 [0.5]
  LOADK R20 K49 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K35 ["AnchorPoint"]
  LOADN R18 1
  SETTABLEKS R18 R17 K15 ["BackgroundTransparency"]
  LOADN R18 0
  SETTABLEKS R18 R17 K36 ["BorderSizePixel"]
  LOADB R18 0
  SETTABLEKS R18 R17 K37 ["ClearTextOnFocus"]
  LOADB R18 1
  SETTABLEKS R18 R17 K38 ["ClipsDescendants"]
  GETIMPORT R18 K52 [Enum.Font.SourceSans]
  SETTABLEKS R18 R17 K39 ["Font"]
  LOADK R18 K53 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R18 R17 K40 ["PlaceholderColor3"]
  GETIMPORT R18 K20 [UDim2.fromScale]
  LOADK R19 K49 [0.5]
  LOADK R20 K49 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K41 ["Position"]
  MOVE R19 R3
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  LOADNIL R18
  JUMP [+1]
  LOADK R18 K53 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R18 R17 K42 ["TextColor3"]
  LOADK R18 K54 [""]
  SETTABLEKS R18 R17 K43 ["Text"]
  MOVE R19 R3
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  LOADNIL R18
  JUMP [+1]
  LOADK R18 K55 [17.598]
  SETTABLEKS R18 R17 K44 ["TextSize"]
  GETIMPORT R18 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K45 ["TextXAlignment"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R4
  LOADK R12 K58 [">> .Explorer-SearchBox-SearchBrowser"]
  DUPTABLE R13 K17 [{"BackgroundTransparency", "Size"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K15 ["BackgroundTransparency"]
  GETIMPORT R14 K59 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 20
  CALL R14 4 1
  SETTABLEKS R14 R13 K16 ["Size"]
  NEWTABLE R14 0 1
  MOVE R15 R4
  LOADK R16 K60 [">> TextLabel"]
  DUPTABLE R17 K61 [{"BackgroundTransparency", "ClipsDescendants", "Font", "Size", "TextColor3", "TextSize", "TextXAlignment"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K15 ["BackgroundTransparency"]
  LOADB R18 1
  SETTABLEKS R18 R17 K38 ["ClipsDescendants"]
  GETIMPORT R18 K52 [Enum.Font.SourceSans]
  SETTABLEKS R18 R17 K39 ["Font"]
  GETIMPORT R18 K20 [UDim2.fromScale]
  LOADN R19 1
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K16 ["Size"]
  MOVE R19 R3
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  LOADNIL R18
  JUMP [+1]
  LOADK R18 K53 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R18 R17 K42 ["TextColor3"]
  MOVE R19 R3
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  LOADNIL R18
  JUMP [+1]
  LOADK R18 K55 [17.598]
  SETTABLEKS R18 R17 K44 ["TextSize"]
  GETIMPORT R18 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K45 ["TextXAlignment"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R4
  LOADK R13 K62 [">> .Explorer-SearchBox-BottomBorder"]
  DUPTABLE R14 K63 [{"AnchorPoint", "BorderSizePixel", "Size"}]
  GETIMPORT R15 K48 [Vector2.new]
  LOADK R16 K49 [0.5]
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K35 ["AnchorPoint"]
  LOADN R15 0
  SETTABLEKS R15 R14 K36 ["BorderSizePixel"]
  GETIMPORT R15 K59 [UDim2.new]
  LOADN R16 1
  LOADN R17 10
  LOADN R18 0
  GETTABLEKS R19 R1 K64 ["searchHeaderBottomBorderWidth"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K16 ["Size"]
  CALL R12 2 1
  MOVE R13 R4
  LOADK R14 K65 [">> .Explorer-SearchBox-Dropdown"]
  DUPTABLE R15 K67 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
  GETIMPORT R16 K48 [Vector2.new]
  LOADK R17 K49 [0.5]
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K35 ["AnchorPoint"]
  GETIMPORT R16 K69 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K66 ["AutomaticSize"]
  GETIMPORT R16 K20 [UDim2.fromScale]
  LOADK R17 K49 [0.5]
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K41 ["Position"]
  GETIMPORT R16 K59 [UDim2.new]
  LOADN R17 1
  LOADN R18 246
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K16 ["Size"]
  NEWTABLE R16 0 2
  MOVE R17 R4
  LOADK R18 K70 ["::UIStroke"]
  DUPTABLE R19 K72 [{"Color", "Transparency", "Thickness"}]
  LOADK R20 K73 ["$RDLSemanticColorComponentInputFill"]
  SETTABLEKS R20 R19 K29 ["Color"]
  LOADK R20 K74 ["$RDLSemanticColorComponentInputFillTransparency"]
  SETTABLEKS R20 R19 K71 ["Transparency"]
  LOADK R20 K33 [1.5]
  SETTABLEKS R20 R19 K30 ["Thickness"]
  CALL R17 2 1
  MOVE R18 R4
  LOADK R19 K75 [">> ScrollingFrame"]
  DUPTABLE R20 K79 [{"AnchorPoint", "AutomaticCanvasSize", "BackgroundTransparency", "BorderSizePixel", "CanvasSize", "Position", "ScrollingDirection"}]
  GETIMPORT R21 K48 [Vector2.new]
  LOADK R22 K49 [0.5]
  LOADK R23 K49 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K35 ["AnchorPoint"]
  GETIMPORT R21 K69 [Enum.AutomaticSize.Y]
  SETTABLEKS R21 R20 K76 ["AutomaticCanvasSize"]
  LOADN R21 1
  SETTABLEKS R21 R20 K15 ["BackgroundTransparency"]
  LOADN R21 0
  SETTABLEKS R21 R20 K36 ["BorderSizePixel"]
  GETIMPORT R21 K20 [UDim2.fromScale]
  LOADN R22 1
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K77 ["CanvasSize"]
  GETIMPORT R21 K20 [UDim2.fromScale]
  LOADK R22 K49 [0.5]
  LOADK R23 K49 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K41 ["Position"]
  GETIMPORT R21 K80 [Enum.ScrollingDirection.Y]
  SETTABLEKS R21 R20 K78 ["ScrollingDirection"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R4
  LOADK R15 K81 [">> .Explorer-SearchBox-DropdownHeader"]
  DUPTABLE R16 K17 [{"BackgroundTransparency", "Size"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K15 ["BackgroundTransparency"]
  GETIMPORT R17 K59 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 25
  CALL R17 4 1
  SETTABLEKS R17 R16 K16 ["Size"]
  CALL R14 2 1
  MOVE R15 R4
  LOADK R16 K82 [">> .Explorer-SearchBox-DropdownTitle"]
  DUPTABLE R17 K84 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K15 ["BackgroundTransparency"]
  GETIMPORT R18 K52 [Enum.Font.SourceSans]
  SETTABLEKS R18 R17 K39 ["Font"]
  MOVE R19 R3
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  LOADNIL R18
  JUMP [+1]
  LOADK R18 K53 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R18 R17 K42 ["TextColor3"]
  MOVE R19 R3
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  LOADNIL R18
  JUMP [+1]
  LOADK R18 K55 [17.598]
  SETTABLEKS R18 R17 K44 ["TextSize"]
  GETIMPORT R18 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K45 ["TextXAlignment"]
  GETIMPORT R18 K86 [Enum.TextYAlignment.Top]
  SETTABLEKS R18 R17 K83 ["TextYAlignment"]
  CALL R15 2 1
  MOVE R16 R4
  LOADK R17 K87 [">> .Explorer-SearchBox-DropdownItem"]
  DUPTABLE R18 K89 [{"BackgroundColor3", "Text"}]
  LOADK R19 K90 ["$RDLSemanticColorStatesHover"]
  SETTABLEKS R19 R18 K88 ["BackgroundColor3"]
  LOADK R19 K54 [""]
  SETTABLEKS R19 R18 K43 ["Text"]
  NEWTABLE R19 0 1
  MOVE R20 R4
  LOADK R21 K60 [">> TextLabel"]
  DUPTABLE R22 K91 [{"BackgroundTransparency", "TextXAlignment"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K15 ["BackgroundTransparency"]
  GETIMPORT R23 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K45 ["TextXAlignment"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1
