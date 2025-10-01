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
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleSheet"]
  NEWTABLE R4 0 15
  MOVE R5 R2
  LOADK R6 K11 ["Frame"]
  DUPTABLE R7 K13 [{"BorderSizePixel"}]
  LOADN R8 0
  SETTABLEKS R8 R7 K12 ["BorderSizePixel"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K14 ["GuiButton"]
  DUPTABLE R8 K16 [{"AutoButtonColor"}]
  LOADB R9 0
  SETTABLEKS R9 R8 K15 ["AutoButtonColor"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K17 ["TextLabel"]
  DUPTABLE R9 K22 [{"TextColor3", "Font", "TextSize", "AutomaticSize"}]
  LOADK R10 K23 ["$TextPrimary"]
  SETTABLEKS R10 R9 K18 ["TextColor3"]
  LOADK R10 K24 ["$Font"]
  SETTABLEKS R10 R9 K19 ["Font"]
  LOADK R10 K25 ["$FontSizeM"]
  SETTABLEKS R10 R9 K20 ["TextSize"]
  GETIMPORT R10 K28 [Enum.AutomaticSize.XY]
  SETTABLEKS R10 R9 K21 ["AutomaticSize"]
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K29 [".Disabled"]
  DUPTABLE R13 K31 [{"TextTransparency"}]
  LOADK R14 K32 [0.4]
  SETTABLEKS R14 R13 K30 ["TextTransparency"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K33 ["TextButton"]
  DUPTABLE R10 K34 [{"TextColor3", "Font", "TextSize"}]
  LOADK R11 K23 ["$TextPrimary"]
  SETTABLEKS R11 R10 K18 ["TextColor3"]
  LOADK R11 K24 ["$Font"]
  SETTABLEKS R11 R10 K19 ["Font"]
  LOADK R11 K25 ["$FontSizeM"]
  SETTABLEKS R11 R10 K20 ["TextSize"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K35 [".Component-Avatar"]
  DUPTABLE R11 K37 [{"Size"}]
  GETIMPORT R12 K40 [UDim2.fromOffset]
  LOADN R13 32
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K36 ["Size"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K41 ["::UICorner"]
  DUPTABLE R15 K43 [{"CornerRadius"}]
  GETIMPORT R16 K46 [UDim.new]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K42 ["CornerRadius"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K47 [".Component-Dropdown"]
  DUPTABLE R12 K49 [{"BackgroundColor3"}]
  LOADK R13 K50 ["$ForegroundContrast"]
  SETTABLEKS R13 R12 K48 ["BackgroundColor3"]
  NEWTABLE R13 0 3
  MOVE R14 R2
  LOADK R15 K51 ["::UIStroke"]
  DUPTABLE R16 K54 [{"Thickness", "Color"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K52 ["Thickness"]
  LOADK R17 K55 ["$ForegroundMain"]
  SETTABLEKS R17 R16 K53 ["Color"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K56 ["::UIPadding"]
  DUPTABLE R17 K59 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R18 K46 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K57 ["PaddingTop"]
  GETIMPORT R18 K46 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K58 ["PaddingBottom"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K41 ["::UICorner"]
  DUPTABLE R18 K43 [{"CornerRadius"}]
  GETIMPORT R19 K46 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K42 ["CornerRadius"]
  CALL R16 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K60 [".Component-DropdownItem"]
  DUPTABLE R13 K62 [{"BorderSizePixel", "BackgroundColor3", "TextColor3", "Size", "AutomaticSize", "TextXAlignment"}]
  LOADN R14 0
  SETTABLEKS R14 R13 K12 ["BorderSizePixel"]
  LOADK R14 K50 ["$ForegroundContrast"]
  SETTABLEKS R14 R13 K48 ["BackgroundColor3"]
  LOADK R14 K23 ["$TextPrimary"]
  SETTABLEKS R14 R13 K18 ["TextColor3"]
  GETIMPORT R14 K64 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K36 ["Size"]
  GETIMPORT R14 K28 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K21 ["AutomaticSize"]
  GETIMPORT R14 K66 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K61 ["TextXAlignment"]
  NEWTABLE R14 0 5
  MOVE R15 R2
  LOADK R16 K56 ["::UIPadding"]
  DUPTABLE R17 K69 [{"PaddingRight", "PaddingLeft", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R18 K46 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K67 ["PaddingRight"]
  GETIMPORT R18 K46 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K68 ["PaddingLeft"]
  GETIMPORT R18 K46 [UDim.new]
  LOADN R19 0
  LOADN R20 5
  CALL R18 2 1
  SETTABLEKS R18 R17 K57 ["PaddingTop"]
  GETIMPORT R18 K46 [UDim.new]
  LOADN R19 0
  LOADN R20 5
  CALL R18 2 1
  SETTABLEKS R18 R17 K58 ["PaddingBottom"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K70 [":hover"]
  DUPTABLE R18 K49 [{"BackgroundColor3"}]
  LOADK R19 K71 ["$SecondaryHoverBackground"]
  SETTABLEKS R19 R18 K48 ["BackgroundColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K72 [":press"]
  DUPTABLE R19 K49 [{"BackgroundColor3"}]
  LOADK R20 K73 ["$ActionActivated"]
  SETTABLEKS R20 R19 K48 ["BackgroundColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K74 [".Delete"]
  DUPTABLE R20 K75 [{"TextColor3"}]
  LOADK R21 K76 ["$ErrorMain"]
  SETTABLEKS R21 R20 K18 ["TextColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K77 [".SectionTitle"]
  DUPTABLE R21 K79 [{"Size", "FontSize", "TextColor3", "Font"}]
  GETIMPORT R22 K80 [UDim2.new]
  LOADN R23 0
  LOADN R24 200
  LOADN R25 0
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K36 ["Size"]
  LOADK R22 K81 ["$FontSizeS"]
  SETTABLEKS R22 R21 K78 ["FontSize"]
  LOADK R22 K82 ["$TextSecondary"]
  SETTABLEKS R22 R21 K18 ["TextColor3"]
  LOADK R22 K83 ["$FontBold"]
  SETTABLEKS R22 R21 K19 ["Font"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K56 ["::UIPadding"]
  DUPTABLE R25 K84 [{"PaddingLeft", "PaddingTop"}]
  GETIMPORT R26 K46 [UDim.new]
  LOADN R27 0
  LOADN R28 12
  CALL R26 2 1
  SETTABLEKS R26 R25 K68 ["PaddingLeft"]
  GETIMPORT R26 K46 [UDim.new]
  LOADN R27 0
  LOADN R28 8
  CALL R26 2 1
  SETTABLEKS R26 R25 K57 ["PaddingTop"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K85 [".Component-Divider"]
  DUPTABLE R14 K87 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R15 K80 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 1
  CALL R15 4 1
  SETTABLEKS R15 R14 K36 ["Size"]
  LOADK R15 K88 ["$SemanticColorDivider"]
  SETTABLEKS R15 R14 K48 ["BackgroundColor3"]
  LOADK R15 K89 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R15 R14 K86 ["BackgroundTransparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K90 [".MoreIcon"]
  DUPTABLE R15 K92 [{"Image", "Size"}]
  LOADK R16 K93 ["$MoreIcon"]
  SETTABLEKS R16 R15 K91 ["Image"]
  GETIMPORT R16 K40 [UDim2.fromOffset]
  LOADN R17 16
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K36 ["Size"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K94 [".CheckboxOnIcon"]
  DUPTABLE R16 K92 [{"Image", "Size"}]
  LOADK R17 K95 ["$CheckboxOn"]
  SETTABLEKS R17 R16 K91 ["Image"]
  GETIMPORT R17 K40 [UDim2.fromOffset]
  LOADN R18 16
  LOADN R19 16
  CALL R17 2 1
  SETTABLEKS R17 R16 K36 ["Size"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K96 [".CheckboxOffIcon"]
  DUPTABLE R17 K92 [{"Image", "Size"}]
  LOADK R18 K97 ["$CheckboxOff"]
  SETTABLEKS R18 R17 K91 ["Image"]
  GETIMPORT R18 K40 [UDim2.fromOffset]
  LOADN R19 16
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K36 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K98 [".ErrorIcon"]
  DUPTABLE R18 K92 [{"Image", "Size"}]
  LOADK R19 K99 ["$Error"]
  SETTABLEKS R19 R18 K91 ["Image"]
  GETIMPORT R19 K40 [UDim2.fromOffset]
  LOADN R20 16
  LOADN R21 16
  CALL R19 2 1
  SETTABLEKS R19 R18 K36 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K100 [".CloseIcon"]
  DUPTABLE R19 K92 [{"Image", "Size"}]
  LOADK R20 K101 ["$Close"]
  SETTABLEKS R20 R19 K91 ["Image"]
  GETIMPORT R20 K40 [UDim2.fromOffset]
  LOADN R21 16
  LOADN R22 16
  CALL R20 2 1
  SETTABLEKS R20 R19 K36 ["Size"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K102 [".SettingsIcon"]
  DUPTABLE R20 K92 [{"Image", "Size"}]
  LOADK R21 K103 ["$Settings"]
  SETTABLEKS R21 R20 K91 ["Image"]
  GETIMPORT R21 K40 [UDim2.fromOffset]
  LOADN R22 16
  LOADN R23 16
  CALL R21 2 1
  SETTABLEKS R21 R20 K36 ["Size"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K104 [".AddAnnotationIcon"]
  DUPTABLE R21 K92 [{"Image", "Size"}]
  LOADK R22 K105 ["$AddAnnotation"]
  SETTABLEKS R22 R21 K91 ["Image"]
  GETIMPORT R22 K40 [UDim2.fromOffset]
  LOADN R23 16
  LOADN R24 16
  CALL R22 2 1
  SETTABLEKS R22 R21 K36 ["Size"]
  CALL R19 2 -1
  SETLIST R4 R5 -1 [1]
  DUPTABLE R5 K112 [{"Font", "FontBold", "FontSizeS", "FontSizeM", "FontSizeL", "Shift100Transparency", "Shift200Transparency"}]
  GETIMPORT R6 K114 [Enum.Font.SourceSans]
  SETTABLEKS R6 R5 K19 ["Font"]
  GETIMPORT R6 K116 [Enum.Font.SourceSansBold]
  SETTABLEKS R6 R5 K106 ["FontBold"]
  LOADN R6 15
  SETTABLEKS R6 R5 K107 ["FontSizeS"]
  LOADN R6 18
  SETTABLEKS R6 R5 K108 ["FontSizeM"]
  LOADN R6 20
  SETTABLEKS R6 R5 K109 ["FontSizeL"]
  LOADK R6 K117 [0.96]
  SETTABLEKS R6 R5 K110 ["Shift100Transparency"]
  LOADK R6 K118 [0.92]
  SETTABLEKS R6 R5 K111 ["Shift200Transparency"]
  MOVE R6 R3
  LOADK R7 K2 ["PlaceAnnotations"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
