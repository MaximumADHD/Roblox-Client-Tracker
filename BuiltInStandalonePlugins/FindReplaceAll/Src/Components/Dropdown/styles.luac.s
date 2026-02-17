MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FindReplaceAll"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Resources"]
  GETTABLEKS R3 R4 K10 ["StyleConstants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["defineFlags"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K13 ["Styling"]
  GETTABLEKS R4 R5 K14 ["createStyleRule"]
  MOVE R5 R4
  LOADK R6 K15 [".FindReplaceAll-Dropdown"]
  DUPTABLE R7 K18 [{"AnchorPoint", "Position"}]
  GETIMPORT R8 K21 [Vector2.new]
  LOADK R9 K22 [0.5]
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K16 ["AnchorPoint"]
  GETIMPORT R8 K25 [UDim2.fromScale]
  LOADK R9 K22 [0.5]
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K17 ["Position"]
  NEWTABLE R8 0 7
  MOVE R9 R4
  LOADK R10 K26 ["::UIPadding"]
  DUPTABLE R11 K31 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R12 K33 [UDim.new]
  LOADN R13 0
  LOADN R14 4
  CALL R12 2 1
  SETTABLEKS R12 R11 K27 ["PaddingLeft"]
  GETIMPORT R12 K33 [UDim.new]
  LOADN R13 0
  LOADN R14 4
  CALL R12 2 1
  SETTABLEKS R12 R11 K28 ["PaddingRight"]
  GETIMPORT R12 K33 [UDim.new]
  LOADN R13 0
  LOADN R14 8
  CALL R12 2 1
  SETTABLEKS R12 R11 K29 ["PaddingTop"]
  GETIMPORT R12 K33 [UDim.new]
  LOADN R13 0
  LOADN R14 8
  CALL R12 2 1
  SETTABLEKS R12 R11 K30 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R4
  LOADK R11 K34 ["::UIStroke"]
  DUPTABLE R12 K38 [{"Color", "Transparency", "Thickness"}]
  LOADK R13 K39 ["$SemanticColorComponentInputFill"]
  SETTABLEKS R13 R12 K35 ["Color"]
  LOADK R13 K40 ["$SemanticColorComponentInputFillTransparency"]
  SETTABLEKS R13 R12 K36 ["Transparency"]
  LOADK R13 K41 [1.5]
  SETTABLEKS R13 R12 K37 ["Thickness"]
  CALL R10 2 1
  MOVE R11 R4
  LOADK R12 K42 ["::UICorner"]
  DUPTABLE R13 K44 [{"CornerRadius"}]
  GETIMPORT R14 K33 [UDim.new]
  LOADN R15 0
  GETTABLEKS R16 R2 K45 ["radiusSmall"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K43 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R4
  LOADK R13 K46 [">> ScrollingFrame"]
  DUPTABLE R14 K54 [{"AnchorPoint", "AutomaticCanvasSize", "BackgroundTransparency", "BorderSizePixel", "CanvasSize", "Position", "ScrollBarImageColor3", "ScrollBarImageTransparency", "ScrollingDirection"}]
  GETIMPORT R15 K21 [Vector2.new]
  LOADK R16 K22 [0.5]
  LOADK R17 K22 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K16 ["AnchorPoint"]
  GETIMPORT R15 K58 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K47 ["AutomaticCanvasSize"]
  LOADN R15 1
  SETTABLEKS R15 R14 K48 ["BackgroundTransparency"]
  LOADN R15 0
  SETTABLEKS R15 R14 K49 ["BorderSizePixel"]
  GETIMPORT R15 K25 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K50 ["CanvasSize"]
  GETIMPORT R15 K25 [UDim2.fromScale]
  LOADK R16 K22 [0.5]
  LOADK R17 K22 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K17 ["Position"]
  LOADK R15 K59 ["$SemanticColorActionSecondary"]
  SETTABLEKS R15 R14 K51 ["ScrollBarImageColor3"]
  LOADK R15 K60 ["$SemanticColorActionSecondaryTransparency"]
  SETTABLEKS R15 R14 K52 ["ScrollBarImageTransparency"]
  GETIMPORT R15 K61 [Enum.ScrollingDirection.Y]
  SETTABLEKS R15 R14 K53 ["ScrollingDirection"]
  CALL R12 2 1
  MOVE R13 R4
  LOADK R14 K62 [">> .FindReplaceAll-DropdownHeader"]
  DUPTABLE R15 K64 [{"BackgroundTransparency", "Size"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K48 ["BackgroundTransparency"]
  GETIMPORT R16 K65 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 25
  CALL R16 4 1
  SETTABLEKS R16 R15 K63 ["Size"]
  CALL R13 2 1
  MOVE R14 R4
  LOADK R15 K66 [">> .FindReplaceAll-DropdownTitle"]
  DUPTABLE R16 K72 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K48 ["BackgroundTransparency"]
  GETTABLEKS R17 R2 K73 ["defaultFont"]
  SETTABLEKS R17 R16 K67 ["Font"]
  LOADK R17 K74 ["$SemanticColorContentMuted"]
  SETTABLEKS R17 R16 K68 ["TextColor3"]
  GETTABLEKS R18 R3 K75 ["getFFlagFindReplaceAllUseBuilderFont"]
  CALL R18 0 1
  JUMPIFNOT R18 [+5]
  LOADN R18 12
  GETTABLEKS R19 R2 K76 ["defaultFontScale"]
  MUL R17 R18 R19
  JUMP [+1]
  LOADK R17 K77 [17.598]
  SETTABLEKS R17 R16 K69 ["TextSize"]
  GETIMPORT R17 K79 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K70 ["TextXAlignment"]
  GETIMPORT R17 K81 [Enum.TextYAlignment.Top]
  SETTABLEKS R17 R16 K71 ["TextYAlignment"]
  CALL R14 2 1
  MOVE R15 R4
  LOADK R16 K82 [">> .FindReplaceAll-DropdownItem"]
  DUPTABLE R17 K85 [{"BackgroundColor3", "Text"}]
  LOADK R18 K86 ["$SemanticColorStatesHover"]
  SETTABLEKS R18 R17 K83 ["BackgroundColor3"]
  LOADK R18 K87 [""]
  SETTABLEKS R18 R17 K84 ["Text"]
  NEWTABLE R18 0 2
  MOVE R19 R4
  LOADK R20 K88 [">> TextLabel"]
  DUPTABLE R21 K89 [{"BackgroundTransparency", "TextXAlignment"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K48 ["BackgroundTransparency"]
  GETIMPORT R22 K79 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K70 ["TextXAlignment"]
  CALL R19 2 1
  MOVE R20 R4
  LOADK R21 K42 ["::UICorner"]
  DUPTABLE R22 K44 [{"CornerRadius"}]
  GETIMPORT R23 K33 [UDim.new]
  LOADN R24 0
  GETTABLEKS R25 R2 K90 ["radiusMedium"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K43 ["CornerRadius"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1
