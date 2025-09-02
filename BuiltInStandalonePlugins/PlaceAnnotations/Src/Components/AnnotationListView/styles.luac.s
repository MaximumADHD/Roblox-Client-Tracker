MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Bin"]
  GETTABLEKS R4 R5 K9 ["Common"]
  GETTABLEKS R3 R4 K10 ["defineLuaFlags"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K11 ["Styling"]
  GETTABLEKS R3 R4 K12 ["createStyleRule"]
  MOVE R4 R3
  LOADK R5 K13 [".Component-AnnotationListView"]
  DUPTABLE R6 K15 [{"BackgroundColor3"}]
  GETTABLEKS R8 R2 K16 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K17 ["$SemanticColorSurface100"]
  JUMP [+1]
  LOADK R7 K18 ["$ForegroundMain"]
  SETTABLEKS R7 R6 K14 ["BackgroundColor3"]
  NEWTABLE R7 0 5
  MOVE R8 R3
  LOADK R9 K19 ["::UISizeConstraint"]
  DUPTABLE R10 K21 [{"MinSize"}]
  GETIMPORT R11 K24 [Vector2.new]
  LOADN R12 200
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K20 ["MinSize"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K25 ["> #Header"]
  DUPTABLE R11 K29 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R12 K31 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K26 ["Size"]
  GETIMPORT R12 K34 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K27 ["AutomaticSize"]
  LOADN R12 1
  SETTABLEKS R12 R11 K28 ["BackgroundTransparency"]
  NEWTABLE R12 0 2
  MOVE R13 R3
  LOADK R14 K35 ["::UIPadding"]
  DUPTABLE R15 K40 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R16 K42 [UDim.new]
  LOADN R17 0
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K36 ["PaddingTop"]
  GETIMPORT R16 K42 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K37 ["PaddingLeft"]
  GETIMPORT R16 K42 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K38 ["PaddingRight"]
  GETIMPORT R16 K42 [UDim.new]
  LOADN R17 0
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K39 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K43 ["> #ButtonGroup"]
  DUPTABLE R16 K46 [{"Position", "AnchorPoint", "BackgroundTransparency", "AutomaticSize"}]
  GETIMPORT R17 K48 [UDim2.fromScale]
  LOADN R18 1
  LOADK R19 K49 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K44 ["Position"]
  GETIMPORT R17 K24 [Vector2.new]
  LOADN R18 1
  LOADK R19 K49 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K45 ["AnchorPoint"]
  LOADN R17 1
  SETTABLEKS R17 R16 K28 ["BackgroundTransparency"]
  GETIMPORT R17 K51 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K27 ["AutomaticSize"]
  NEWTABLE R17 0 2
  MOVE R18 R3
  LOADK R19 K52 ["> #AddButton"]
  DUPTABLE R20 K54 [{"Size", "Position", "BorderSizePixel", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R21 K56 [UDim2.fromOffset]
  LOADN R22 20
  LOADN R23 20
  CALL R21 2 1
  SETTABLEKS R21 R20 K26 ["Size"]
  GETIMPORT R21 K56 [UDim2.fromOffset]
  LOADN R22 20
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K44 ["Position"]
  LOADN R21 0
  SETTABLEKS R21 R20 K53 ["BorderSizePixel"]
  LOADK R21 K57 ["$Shift200Transparency"]
  SETTABLEKS R21 R20 K28 ["BackgroundTransparency"]
  LOADK R21 K58 ["$Shift200Color"]
  SETTABLEKS R21 R20 K14 ["BackgroundColor3"]
  NEWTABLE R21 0 4
  MOVE R22 R3
  LOADK R23 K35 ["::UIPadding"]
  DUPTABLE R24 K40 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R25 K42 [UDim.new]
  LOADN R26 0
  LOADN R27 2
  CALL R25 2 1
  SETTABLEKS R25 R24 K36 ["PaddingTop"]
  GETIMPORT R25 K42 [UDim.new]
  LOADN R26 0
  LOADN R27 2
  CALL R25 2 1
  SETTABLEKS R25 R24 K37 ["PaddingLeft"]
  GETIMPORT R25 K42 [UDim.new]
  LOADN R26 0
  LOADN R27 2
  CALL R25 2 1
  SETTABLEKS R25 R24 K38 ["PaddingRight"]
  GETIMPORT R25 K42 [UDim.new]
  LOADN R26 0
  LOADN R27 2
  CALL R25 2 1
  SETTABLEKS R25 R24 K39 ["PaddingBottom"]
  CALL R22 2 1
  MOVE R23 R3
  LOADK R24 K59 ["::UICorner"]
  DUPTABLE R25 K61 [{"CornerRadius"}]
  GETIMPORT R26 K42 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K60 ["CornerRadius"]
  CALL R23 2 1
  MOVE R24 R3
  LOADK R25 K62 [":hover"]
  DUPTABLE R26 K63 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K58 ["$Shift200Color"]
  SETTABLEKS R27 R26 K14 ["BackgroundColor3"]
  LOADK R27 K64 ["$Shift100Transparency"]
  SETTABLEKS R27 R26 K28 ["BackgroundTransparency"]
  CALL R24 2 1
  MOVE R25 R3
  LOADK R26 K65 [":press"]
  DUPTABLE R27 K63 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K58 ["$Shift200Color"]
  SETTABLEKS R28 R27 K14 ["BackgroundColor3"]
  LOADK R28 K57 ["$Shift200Transparency"]
  SETTABLEKS R28 R27 K28 ["BackgroundTransparency"]
  CALL R25 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R3
  LOADK R20 K66 ["> #SettingsWrapper"]
  DUPTABLE R21 K67 [{"Size", "Position", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
  GETIMPORT R22 K56 [UDim2.fromOffset]
  LOADN R23 20
  LOADN R24 20
  CALL R22 2 1
  SETTABLEKS R22 R21 K26 ["Size"]
  GETIMPORT R22 K56 [UDim2.fromOffset]
  LOADN R23 46
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K44 ["Position"]
  LOADK R22 K57 ["$Shift200Transparency"]
  SETTABLEKS R22 R21 K28 ["BackgroundTransparency"]
  LOADN R22 0
  SETTABLEKS R22 R21 K53 ["BorderSizePixel"]
  LOADK R22 K58 ["$Shift200Color"]
  SETTABLEKS R22 R21 K14 ["BackgroundColor3"]
  NEWTABLE R22 0 4
  MOVE R23 R3
  LOADK R24 K59 ["::UICorner"]
  DUPTABLE R25 K61 [{"CornerRadius"}]
  GETIMPORT R26 K42 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K60 ["CornerRadius"]
  CALL R23 2 1
  MOVE R24 R3
  LOADK R25 K68 ["> .Dropdown"]
  DUPTABLE R26 K69 [{"BackgroundTransparency", "AnchorPoint", "Position"}]
  LOADN R27 1
  SETTABLEKS R27 R26 K28 ["BackgroundTransparency"]
  GETIMPORT R27 K24 [Vector2.new]
  LOADK R28 K49 [0.5]
  LOADK R29 K49 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K45 ["AnchorPoint"]
  GETIMPORT R27 K31 [UDim2.new]
  LOADK R28 K49 [0.5]
  LOADK R29 K70 [-0.5]
  LOADK R30 K49 [0.5]
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K44 ["Position"]
  CALL R24 2 1
  MOVE R25 R3
  LOADK R26 K62 [":hover"]
  DUPTABLE R27 K63 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K58 ["$Shift200Color"]
  SETTABLEKS R28 R27 K14 ["BackgroundColor3"]
  LOADK R28 K64 ["$Shift100Transparency"]
  SETTABLEKS R28 R27 K28 ["BackgroundTransparency"]
  CALL R25 2 1
  MOVE R26 R3
  LOADK R27 K65 [":press"]
  DUPTABLE R28 K63 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R29 K58 ["$Shift200Color"]
  SETTABLEKS R29 R28 K14 ["BackgroundColor3"]
  LOADK R29 K57 ["$Shift200Transparency"]
  SETTABLEKS R29 R28 K28 ["BackgroundTransparency"]
  CALL R26 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R3
  LOADK R11 K71 ["> #AnnotationList"]
  DUPTABLE R12 K72 [{"BackgroundTransparency", "Size"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K28 ["BackgroundTransparency"]
  GETIMPORT R13 K48 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K26 ["Size"]
  NEWTABLE R13 0 2
  MOVE R14 R3
  LOADK R15 K73 ["::UIFlexItem"]
  DUPTABLE R16 K75 [{"FlexMode"}]
  GETIMPORT R17 K78 [Enum.UIFlexMode.Grow]
  SETTABLEKS R17 R16 K74 ["FlexMode"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K79 [">> ScrollingFrame"]
  DUPTABLE R17 K82 [{"ScrollBarThickness", "ScrollBarImageColor3"}]
  LOADN R18 8
  SETTABLEKS R18 R17 K80 ["ScrollBarThickness"]
  LOADK R18 K83 ["$BackgroundDefault"]
  SETTABLEKS R18 R17 K81 ["ScrollBarImageColor3"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R3
  LOADK R12 K84 [">> #EmptyState"]
  DUPTABLE R13 K85 [{"Size"}]
  GETIMPORT R14 K48 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K26 ["Size"]
  NEWTABLE R14 0 5
  MOVE R15 R3
  LOADK R16 K73 ["::UIFlexItem"]
  DUPTABLE R17 K75 [{"FlexMode"}]
  GETIMPORT R18 K78 [Enum.UIFlexMode.Grow]
  SETTABLEKS R18 R17 K74 ["FlexMode"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K86 ["> #AnnotationIcon"]
  DUPTABLE R18 K89 [{"Image", "ImageTransparency", "Size"}]
  LOADK R19 K90 ["$AnnotationLarge"]
  SETTABLEKS R19 R18 K87 ["Image"]
  LOADK R19 K91 [0.4]
  SETTABLEKS R19 R18 K88 ["ImageTransparency"]
  GETIMPORT R19 K56 [UDim2.fromOffset]
  LOADN R20 40
  LOADN R21 40
  CALL R19 2 1
  SETTABLEKS R19 R18 K26 ["Size"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K92 ["> #NoCommentsYet"]
  DUPTABLE R19 K94 [{"Font", "Size"}]
  LOADK R20 K95 ["$FontBold"]
  SETTABLEKS R20 R19 K93 ["Font"]
  GETIMPORT R20 K31 [UDim2.new]
  LOADN R21 1
  LOADN R22 216
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K26 ["Size"]
  CALL R17 2 1
  MOVE R18 R3
  LOADK R19 K96 ["> #ToAdd"]
  DUPTABLE R20 K100 [{"TextTransparency", "TextSize", "TextWrapped", "AutomaticSize", "Size"}]
  LOADK R21 K91 [0.4]
  SETTABLEKS R21 R20 K97 ["TextTransparency"]
  LOADK R21 K101 ["$FontSizeS"]
  SETTABLEKS R21 R20 K98 ["TextSize"]
  LOADB R21 1
  SETTABLEKS R21 R20 K99 ["TextWrapped"]
  GETIMPORT R21 K34 [Enum.AutomaticSize.Y]
  SETTABLEKS R21 R20 K27 ["AutomaticSize"]
  GETIMPORT R21 K31 [UDim2.new]
  LOADN R22 1
  LOADN R23 216
  LOADN R24 0
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K26 ["Size"]
  CALL R18 2 1
  MOVE R19 R3
  LOADK R20 K102 ["> TextButton"]
  DUPTABLE R21 K104 [{"TextColor3", "TextSize", "Font", "AutomaticSize", "BackgroundColor3"}]
  LOADK R22 K105 ["$SemanticColorContentStaticLight"]
  SETTABLEKS R22 R21 K103 ["TextColor3"]
  LOADK R22 K106 ["$FontSizeM"]
  SETTABLEKS R22 R21 K98 ["TextSize"]
  LOADK R22 K95 ["$FontBold"]
  SETTABLEKS R22 R21 K93 ["Font"]
  GETIMPORT R22 K51 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K27 ["AutomaticSize"]
  LOADK R22 K107 ["$EmptyStateButtonFill"]
  SETTABLEKS R22 R21 K14 ["BackgroundColor3"]
  NEWTABLE R22 0 4
  MOVE R23 R3
  LOADK R24 K59 ["::UICorner"]
  DUPTABLE R25 K61 [{"CornerRadius"}]
  GETIMPORT R26 K42 [UDim.new]
  LOADK R27 K108 [0.3]
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K60 ["CornerRadius"]
  CALL R23 2 1
  MOVE R24 R3
  LOADK R25 K62 [":hover"]
  DUPTABLE R26 K15 [{"BackgroundColor3"}]
  LOADK R27 K109 ["$EmptyStateButtonHovered"]
  SETTABLEKS R27 R26 K14 ["BackgroundColor3"]
  CALL R24 2 1
  MOVE R25 R3
  LOADK R26 K65 [":press"]
  DUPTABLE R27 K15 [{"BackgroundColor3"}]
  LOADK R28 K110 ["$EmptyStateButtonSelected"]
  SETTABLEKS R28 R27 K14 ["BackgroundColor3"]
  CALL R25 2 1
  MOVE R26 R3
  LOADK R27 K35 ["::UIPadding"]
  DUPTABLE R28 K40 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R29 K42 [UDim.new]
  LOADN R30 0
  LOADN R31 4
  CALL R29 2 1
  SETTABLEKS R29 R28 K36 ["PaddingTop"]
  GETIMPORT R29 K42 [UDim.new]
  LOADN R30 0
  LOADN R31 10
  CALL R29 2 1
  SETTABLEKS R29 R28 K37 ["PaddingLeft"]
  GETIMPORT R29 K42 [UDim.new]
  LOADN R30 0
  LOADN R31 10
  CALL R29 2 1
  SETTABLEKS R29 R28 K38 ["PaddingRight"]
  GETIMPORT R29 K42 [UDim.new]
  LOADN R30 0
  LOADN R31 4
  CALL R29 2 1
  SETTABLEKS R29 R28 K39 ["PaddingBottom"]
  CALL R26 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R3
  LOADK R13 K111 ["> #ErrorWrapper >> #ErrorAlert"]
  DUPTABLE R14 K15 [{"BackgroundColor3"}]
  LOADK R15 K112 ["$BackgroundPaper"]
  SETTABLEKS R15 R14 K14 ["BackgroundColor3"]
  NEWTABLE R15 0 1
  MOVE R16 R3
  LOADK R17 K113 [">> TextButton"]
  DUPTABLE R18 K114 [{"AutomaticSize", "BackgroundColor3", "TextColor3", "TextSize", "Font", "BackgroundTransparency"}]
  GETIMPORT R19 K51 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K27 ["AutomaticSize"]
  LOADK R19 K107 ["$EmptyStateButtonFill"]
  SETTABLEKS R19 R18 K14 ["BackgroundColor3"]
  LOADK R19 K105 ["$SemanticColorContentStaticLight"]
  SETTABLEKS R19 R18 K103 ["TextColor3"]
  LOADK R19 K101 ["$FontSizeS"]
  SETTABLEKS R19 R18 K98 ["TextSize"]
  LOADK R19 K95 ["$FontBold"]
  SETTABLEKS R19 R18 K93 ["Font"]
  LOADN R19 0
  SETTABLEKS R19 R18 K28 ["BackgroundTransparency"]
  NEWTABLE R19 0 4
  MOVE R20 R3
  LOADK R21 K59 ["::UICorner"]
  DUPTABLE R22 K61 [{"CornerRadius"}]
  GETIMPORT R23 K42 [UDim.new]
  LOADN R24 0
  LOADN R25 4
  CALL R23 2 1
  SETTABLEKS R23 R22 K60 ["CornerRadius"]
  CALL R20 2 1
  MOVE R21 R3
  LOADK R22 K35 ["::UIPadding"]
  DUPTABLE R23 K40 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R24 K42 [UDim.new]
  LOADN R25 0
  LOADN R26 4
  CALL R24 2 1
  SETTABLEKS R24 R23 K36 ["PaddingTop"]
  GETIMPORT R24 K42 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K37 ["PaddingLeft"]
  GETIMPORT R24 K42 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K38 ["PaddingRight"]
  GETIMPORT R24 K42 [UDim.new]
  LOADN R25 0
  LOADN R26 4
  CALL R24 2 1
  SETTABLEKS R24 R23 K39 ["PaddingBottom"]
  CALL R21 2 1
  MOVE R22 R3
  LOADK R23 K62 [":hover"]
  DUPTABLE R24 K15 [{"BackgroundColor3"}]
  LOADK R25 K109 ["$EmptyStateButtonHovered"]
  SETTABLEKS R25 R24 K14 ["BackgroundColor3"]
  CALL R22 2 1
  MOVE R23 R3
  LOADK R24 K65 [":press"]
  DUPTABLE R25 K15 [{"BackgroundColor3"}]
  LOADK R26 K110 ["$EmptyStateButtonSelected"]
  SETTABLEKS R26 R25 K14 ["BackgroundColor3"]
  CALL R23 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
