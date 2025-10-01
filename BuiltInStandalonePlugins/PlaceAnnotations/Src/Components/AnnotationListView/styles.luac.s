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
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Component-AnnotationListView"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 5
  MOVE R7 R2
  LOADK R8 K11 ["::UISizeConstraint"]
  DUPTABLE R9 K13 [{"MinSize"}]
  GETIMPORT R10 K16 [Vector2.new]
  LOADN R11 200
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["MinSize"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K17 ["> #Header"]
  DUPTABLE R10 K21 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R11 K23 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K18 ["Size"]
  GETIMPORT R11 K26 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K19 ["AutomaticSize"]
  LOADN R11 1
  SETTABLEKS R11 R10 K20 ["BackgroundTransparency"]
  NEWTABLE R11 0 2
  MOVE R12 R2
  LOADK R13 K27 ["::UIPadding"]
  DUPTABLE R14 K32 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R15 K34 [UDim.new]
  LOADN R16 0
  LOADN R17 16
  CALL R15 2 1
  SETTABLEKS R15 R14 K28 ["PaddingTop"]
  GETIMPORT R15 K34 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K29 ["PaddingLeft"]
  GETIMPORT R15 K34 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K30 ["PaddingRight"]
  GETIMPORT R15 K34 [UDim.new]
  LOADN R16 0
  LOADN R17 16
  CALL R15 2 1
  SETTABLEKS R15 R14 K31 ["PaddingBottom"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K35 ["> #ButtonGroup"]
  DUPTABLE R15 K38 [{"Position", "AnchorPoint", "BackgroundTransparency", "AutomaticSize"}]
  GETIMPORT R16 K40 [UDim2.fromScale]
  LOADN R17 1
  LOADK R18 K41 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K36 ["Position"]
  GETIMPORT R16 K16 [Vector2.new]
  LOADN R17 1
  LOADK R18 K41 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K37 ["AnchorPoint"]
  LOADN R16 1
  SETTABLEKS R16 R15 K20 ["BackgroundTransparency"]
  GETIMPORT R16 K43 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K19 ["AutomaticSize"]
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K44 ["> #AddButton"]
  DUPTABLE R19 K47 [{"Size", "Position", "BorderSizePixel", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R20 K49 [UDim2.fromOffset]
  LOADN R21 20
  LOADN R22 20
  CALL R20 2 1
  SETTABLEKS R20 R19 K18 ["Size"]
  GETIMPORT R20 K49 [UDim2.fromOffset]
  LOADN R21 20
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K36 ["Position"]
  LOADN R20 0
  SETTABLEKS R20 R19 K45 ["BorderSizePixel"]
  LOADK R20 K50 ["$Shift200Transparency"]
  SETTABLEKS R20 R19 K20 ["BackgroundTransparency"]
  LOADK R20 K51 ["$Shift200Color"]
  SETTABLEKS R20 R19 K46 ["BackgroundColor3"]
  NEWTABLE R20 0 4
  MOVE R21 R2
  LOADK R22 K27 ["::UIPadding"]
  DUPTABLE R23 K32 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R24 K34 [UDim.new]
  LOADN R25 0
  LOADN R26 2
  CALL R24 2 1
  SETTABLEKS R24 R23 K28 ["PaddingTop"]
  GETIMPORT R24 K34 [UDim.new]
  LOADN R25 0
  LOADN R26 2
  CALL R24 2 1
  SETTABLEKS R24 R23 K29 ["PaddingLeft"]
  GETIMPORT R24 K34 [UDim.new]
  LOADN R25 0
  LOADN R26 2
  CALL R24 2 1
  SETTABLEKS R24 R23 K30 ["PaddingRight"]
  GETIMPORT R24 K34 [UDim.new]
  LOADN R25 0
  LOADN R26 2
  CALL R24 2 1
  SETTABLEKS R24 R23 K31 ["PaddingBottom"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K52 ["::UICorner"]
  DUPTABLE R24 K54 [{"CornerRadius"}]
  GETIMPORT R25 K34 [UDim.new]
  LOADN R26 0
  LOADN R27 4
  CALL R25 2 1
  SETTABLEKS R25 R24 K53 ["CornerRadius"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K55 [":hover"]
  DUPTABLE R25 K56 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R26 K51 ["$Shift200Color"]
  SETTABLEKS R26 R25 K46 ["BackgroundColor3"]
  LOADK R26 K57 ["$Shift100Transparency"]
  SETTABLEKS R26 R25 K20 ["BackgroundTransparency"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K58 [":press"]
  DUPTABLE R26 K56 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K51 ["$Shift200Color"]
  SETTABLEKS R27 R26 K46 ["BackgroundColor3"]
  LOADK R27 K50 ["$Shift200Transparency"]
  SETTABLEKS R27 R26 K20 ["BackgroundTransparency"]
  CALL R24 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K59 ["> #SettingsWrapper"]
  DUPTABLE R20 K60 [{"Size", "Position", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
  GETIMPORT R21 K49 [UDim2.fromOffset]
  LOADN R22 20
  LOADN R23 20
  CALL R21 2 1
  SETTABLEKS R21 R20 K18 ["Size"]
  GETIMPORT R21 K49 [UDim2.fromOffset]
  LOADN R22 46
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K36 ["Position"]
  LOADK R21 K50 ["$Shift200Transparency"]
  SETTABLEKS R21 R20 K20 ["BackgroundTransparency"]
  LOADN R21 0
  SETTABLEKS R21 R20 K45 ["BorderSizePixel"]
  LOADK R21 K51 ["$Shift200Color"]
  SETTABLEKS R21 R20 K46 ["BackgroundColor3"]
  NEWTABLE R21 0 4
  MOVE R22 R2
  LOADK R23 K52 ["::UICorner"]
  DUPTABLE R24 K54 [{"CornerRadius"}]
  GETIMPORT R25 K34 [UDim.new]
  LOADN R26 0
  LOADN R27 4
  CALL R25 2 1
  SETTABLEKS R25 R24 K53 ["CornerRadius"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K61 ["> .Dropdown"]
  DUPTABLE R25 K62 [{"BackgroundTransparency", "AnchorPoint", "Position"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K20 ["BackgroundTransparency"]
  GETIMPORT R26 K16 [Vector2.new]
  LOADK R27 K41 [0.5]
  LOADK R28 K41 [0.5]
  CALL R26 2 1
  SETTABLEKS R26 R25 K37 ["AnchorPoint"]
  GETIMPORT R26 K23 [UDim2.new]
  LOADK R27 K41 [0.5]
  LOADK R28 K63 [-0.5]
  LOADK R29 K41 [0.5]
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K36 ["Position"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K55 [":hover"]
  DUPTABLE R26 K56 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K51 ["$Shift200Color"]
  SETTABLEKS R27 R26 K46 ["BackgroundColor3"]
  LOADK R27 K57 ["$Shift100Transparency"]
  SETTABLEKS R27 R26 K20 ["BackgroundTransparency"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K58 [":press"]
  DUPTABLE R27 K56 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K51 ["$Shift200Color"]
  SETTABLEKS R28 R27 K46 ["BackgroundColor3"]
  LOADK R28 K50 ["$Shift200Transparency"]
  SETTABLEKS R28 R27 K20 ["BackgroundTransparency"]
  CALL R25 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K64 ["> #AnnotationList"]
  DUPTABLE R11 K65 [{"BackgroundTransparency", "Size"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K20 ["BackgroundTransparency"]
  GETIMPORT R12 K40 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K18 ["Size"]
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K66 ["::UIFlexItem"]
  DUPTABLE R15 K68 [{"FlexMode"}]
  GETIMPORT R16 K71 [Enum.UIFlexMode.Grow]
  SETTABLEKS R16 R15 K67 ["FlexMode"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K72 [">> ScrollingFrame"]
  DUPTABLE R16 K75 [{"ScrollBarThickness", "ScrollBarImageColor3"}]
  LOADN R17 8
  SETTABLEKS R17 R16 K73 ["ScrollBarThickness"]
  LOADK R17 K76 ["$BackgroundDefault"]
  SETTABLEKS R17 R16 K74 ["ScrollBarImageColor3"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K77 [">> #EmptyState"]
  DUPTABLE R12 K78 [{"Size"}]
  GETIMPORT R13 K40 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["Size"]
  NEWTABLE R13 0 5
  MOVE R14 R2
  LOADK R15 K66 ["::UIFlexItem"]
  DUPTABLE R16 K68 [{"FlexMode"}]
  GETIMPORT R17 K71 [Enum.UIFlexMode.Grow]
  SETTABLEKS R17 R16 K67 ["FlexMode"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K79 ["> #AnnotationIcon"]
  DUPTABLE R17 K82 [{"Image", "ImageTransparency", "Size"}]
  LOADK R18 K83 ["$AnnotationLarge"]
  SETTABLEKS R18 R17 K80 ["Image"]
  LOADK R18 K84 [0.4]
  SETTABLEKS R18 R17 K81 ["ImageTransparency"]
  GETIMPORT R18 K49 [UDim2.fromOffset]
  LOADN R19 40
  LOADN R20 40
  CALL R18 2 1
  SETTABLEKS R18 R17 K18 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K85 ["> #NoCommentsYet"]
  DUPTABLE R18 K87 [{"Font", "Size"}]
  LOADK R19 K88 ["$FontBold"]
  SETTABLEKS R19 R18 K86 ["Font"]
  GETIMPORT R19 K23 [UDim2.new]
  LOADN R20 1
  LOADN R21 216
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K18 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K89 ["> #ToAdd"]
  DUPTABLE R19 K93 [{"TextTransparency", "TextSize", "TextWrapped", "AutomaticSize", "Size"}]
  LOADK R20 K84 [0.4]
  SETTABLEKS R20 R19 K90 ["TextTransparency"]
  LOADK R20 K94 ["$FontSizeS"]
  SETTABLEKS R20 R19 K91 ["TextSize"]
  LOADB R20 1
  SETTABLEKS R20 R19 K92 ["TextWrapped"]
  GETIMPORT R20 K26 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K19 ["AutomaticSize"]
  GETIMPORT R20 K23 [UDim2.new]
  LOADN R21 1
  LOADN R22 216
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K18 ["Size"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K95 ["> TextButton"]
  DUPTABLE R20 K97 [{"TextColor3", "TextSize", "Font", "AutomaticSize", "BackgroundColor3"}]
  LOADK R21 K98 ["$SemanticColorContentStaticLight"]
  SETTABLEKS R21 R20 K96 ["TextColor3"]
  LOADK R21 K99 ["$FontSizeM"]
  SETTABLEKS R21 R20 K91 ["TextSize"]
  LOADK R21 K88 ["$FontBold"]
  SETTABLEKS R21 R20 K86 ["Font"]
  GETIMPORT R21 K43 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K19 ["AutomaticSize"]
  LOADK R21 K100 ["$EmptyStateButtonFill"]
  SETTABLEKS R21 R20 K46 ["BackgroundColor3"]
  NEWTABLE R21 0 4
  MOVE R22 R2
  LOADK R23 K52 ["::UICorner"]
  DUPTABLE R24 K54 [{"CornerRadius"}]
  GETIMPORT R25 K34 [UDim.new]
  LOADK R26 K101 [0.3]
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K53 ["CornerRadius"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K55 [":hover"]
  DUPTABLE R25 K102 [{"BackgroundColor3"}]
  LOADK R26 K103 ["$EmptyStateButtonHovered"]
  SETTABLEKS R26 R25 K46 ["BackgroundColor3"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K58 [":press"]
  DUPTABLE R26 K102 [{"BackgroundColor3"}]
  LOADK R27 K104 ["$EmptyStateButtonSelected"]
  SETTABLEKS R27 R26 K46 ["BackgroundColor3"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K27 ["::UIPadding"]
  DUPTABLE R27 K32 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R28 K34 [UDim.new]
  LOADN R29 0
  LOADN R30 4
  CALL R28 2 1
  SETTABLEKS R28 R27 K28 ["PaddingTop"]
  GETIMPORT R28 K34 [UDim.new]
  LOADN R29 0
  LOADN R30 10
  CALL R28 2 1
  SETTABLEKS R28 R27 K29 ["PaddingLeft"]
  GETIMPORT R28 K34 [UDim.new]
  LOADN R29 0
  LOADN R30 10
  CALL R28 2 1
  SETTABLEKS R28 R27 K30 ["PaddingRight"]
  GETIMPORT R28 K34 [UDim.new]
  LOADN R29 0
  LOADN R30 4
  CALL R28 2 1
  SETTABLEKS R28 R27 K31 ["PaddingBottom"]
  CALL R25 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K105 ["> #ErrorWrapper >> #ErrorAlert"]
  DUPTABLE R13 K102 [{"BackgroundColor3"}]
  LOADK R14 K106 ["$BackgroundPaper"]
  SETTABLEKS R14 R13 K46 ["BackgroundColor3"]
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K107 [">> TextButton"]
  DUPTABLE R17 K108 [{"AutomaticSize", "BackgroundColor3", "TextColor3", "TextSize", "Font", "BackgroundTransparency"}]
  GETIMPORT R18 K43 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K19 ["AutomaticSize"]
  LOADK R18 K100 ["$EmptyStateButtonFill"]
  SETTABLEKS R18 R17 K46 ["BackgroundColor3"]
  LOADK R18 K98 ["$SemanticColorContentStaticLight"]
  SETTABLEKS R18 R17 K96 ["TextColor3"]
  LOADK R18 K94 ["$FontSizeS"]
  SETTABLEKS R18 R17 K91 ["TextSize"]
  LOADK R18 K88 ["$FontBold"]
  SETTABLEKS R18 R17 K86 ["Font"]
  LOADN R18 0
  SETTABLEKS R18 R17 K20 ["BackgroundTransparency"]
  NEWTABLE R18 0 4
  MOVE R19 R2
  LOADK R20 K52 ["::UICorner"]
  DUPTABLE R21 K54 [{"CornerRadius"}]
  GETIMPORT R22 K34 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K53 ["CornerRadius"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K27 ["::UIPadding"]
  DUPTABLE R22 K32 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R23 K34 [UDim.new]
  LOADN R24 0
  LOADN R25 4
  CALL R23 2 1
  SETTABLEKS R23 R22 K28 ["PaddingTop"]
  GETIMPORT R23 K34 [UDim.new]
  LOADN R24 0
  LOADN R25 10
  CALL R23 2 1
  SETTABLEKS R23 R22 K29 ["PaddingLeft"]
  GETIMPORT R23 K34 [UDim.new]
  LOADN R24 0
  LOADN R25 10
  CALL R23 2 1
  SETTABLEKS R23 R22 K30 ["PaddingRight"]
  GETIMPORT R23 K34 [UDim.new]
  LOADN R24 0
  LOADN R25 4
  CALL R23 2 1
  SETTABLEKS R23 R22 K31 ["PaddingBottom"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K55 [":hover"]
  DUPTABLE R23 K102 [{"BackgroundColor3"}]
  LOADK R24 K103 ["$EmptyStateButtonHovered"]
  SETTABLEKS R24 R23 K46 ["BackgroundColor3"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K58 [":press"]
  DUPTABLE R24 K102 [{"BackgroundColor3"}]
  LOADK R25 K104 ["$EmptyStateButtonSelected"]
  SETTABLEKS R25 R24 K46 ["BackgroundColor3"]
  CALL R22 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
