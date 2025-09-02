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
  GETTABLEKS R5 R1 K11 ["Styling"]
  GETTABLEKS R4 R5 K13 ["createStyleSheet"]
  NEWTABLE R5 0 15
  MOVE R6 R3
  LOADK R7 K14 ["Frame"]
  DUPTABLE R8 K16 [{"BorderSizePixel"}]
  LOADN R9 0
  SETTABLEKS R9 R8 K15 ["BorderSizePixel"]
  CALL R6 2 1
  MOVE R7 R3
  LOADK R8 K17 ["GuiButton"]
  DUPTABLE R9 K19 [{"AutoButtonColor"}]
  LOADB R10 0
  SETTABLEKS R10 R9 K18 ["AutoButtonColor"]
  CALL R7 2 1
  MOVE R8 R3
  LOADK R9 K20 ["TextLabel"]
  DUPTABLE R10 K25 [{"TextColor3", "Font", "TextSize", "AutomaticSize"}]
  LOADK R11 K26 ["$TextPrimary"]
  SETTABLEKS R11 R10 K21 ["TextColor3"]
  LOADK R11 K27 ["$Font"]
  SETTABLEKS R11 R10 K22 ["Font"]
  LOADK R11 K28 ["$FontSizeM"]
  SETTABLEKS R11 R10 K23 ["TextSize"]
  GETIMPORT R11 K31 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K24 ["AutomaticSize"]
  NEWTABLE R11 0 1
  MOVE R12 R3
  LOADK R13 K32 [".Disabled"]
  DUPTABLE R14 K34 [{"TextTransparency"}]
  LOADK R15 K35 [0.4]
  SETTABLEKS R15 R14 K33 ["TextTransparency"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R3
  LOADK R10 K36 ["TextButton"]
  DUPTABLE R11 K37 [{"TextColor3", "Font", "TextSize"}]
  LOADK R12 K26 ["$TextPrimary"]
  SETTABLEKS R12 R11 K21 ["TextColor3"]
  LOADK R12 K27 ["$Font"]
  SETTABLEKS R12 R11 K22 ["Font"]
  LOADK R12 K28 ["$FontSizeM"]
  SETTABLEKS R12 R11 K23 ["TextSize"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K38 [".Component-Avatar"]
  DUPTABLE R12 K40 [{"Size"}]
  GETIMPORT R13 K43 [UDim2.fromOffset]
  LOADN R14 32
  LOADN R15 32
  CALL R13 2 1
  SETTABLEKS R13 R12 K39 ["Size"]
  NEWTABLE R13 0 1
  MOVE R14 R3
  LOADK R15 K44 ["::UICorner"]
  DUPTABLE R16 K46 [{"CornerRadius"}]
  GETIMPORT R17 K49 [UDim.new]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K45 ["CornerRadius"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R3
  LOADK R12 K50 [".Component-Dropdown"]
  DUPTABLE R13 K52 [{"BackgroundColor3"}]
  GETTABLEKS R15 R2 K53 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R15 [+2]
  LOADK R14 K54 ["$SemanticColorSurface200"]
  JUMP [+1]
  LOADK R14 K55 ["$ForegroundContrast"]
  SETTABLEKS R14 R13 K51 ["BackgroundColor3"]
  NEWTABLE R14 0 3
  MOVE R15 R3
  LOADK R16 K56 ["::UIStroke"]
  DUPTABLE R17 K60 [{"Thickness", "Color", "Transparency"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K57 ["Thickness"]
  GETTABLEKS R19 R2 K53 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R19 [+2]
  LOADK R18 K61 ["$SemanticColorDivider"]
  JUMP [+1]
  LOADK R18 K62 ["$ForegroundMain"]
  SETTABLEKS R18 R17 K58 ["Color"]
  GETTABLEKS R19 R2 K53 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R19 [+2]
  LOADK R18 K63 ["$SemanticColorDividerTransparency"]
  JUMP [+1]
  LOADNIL R18
  SETTABLEKS R18 R17 K59 ["Transparency"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K64 ["::UIPadding"]
  DUPTABLE R18 K67 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R19 K49 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K65 ["PaddingTop"]
  GETIMPORT R19 K49 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K66 ["PaddingBottom"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K44 ["::UICorner"]
  DUPTABLE R19 K46 [{"CornerRadius"}]
  GETIMPORT R20 K49 [UDim.new]
  LOADN R21 0
  LOADN R22 4
  CALL R20 2 1
  SETTABLEKS R20 R19 K45 ["CornerRadius"]
  CALL R17 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R3
  LOADK R13 K68 [".Component-DropdownItem"]
  DUPTABLE R14 K70 [{"BorderSizePixel", "BackgroundColor3", "TextColor3", "Size", "AutomaticSize", "TextXAlignment"}]
  LOADN R15 0
  SETTABLEKS R15 R14 K15 ["BorderSizePixel"]
  GETTABLEKS R16 R2 K53 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R16 [+2]
  LOADK R15 K54 ["$SemanticColorSurface200"]
  JUMP [+1]
  LOADK R15 K55 ["$ForegroundContrast"]
  SETTABLEKS R15 R14 K51 ["BackgroundColor3"]
  LOADK R15 K26 ["$TextPrimary"]
  SETTABLEKS R15 R14 K21 ["TextColor3"]
  GETIMPORT R15 K72 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K39 ["Size"]
  GETIMPORT R15 K31 [Enum.AutomaticSize.XY]
  SETTABLEKS R15 R14 K24 ["AutomaticSize"]
  GETIMPORT R15 K74 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K69 ["TextXAlignment"]
  NEWTABLE R15 0 5
  MOVE R16 R3
  LOADK R17 K64 ["::UIPadding"]
  DUPTABLE R18 K77 [{"PaddingRight", "PaddingLeft", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R19 K49 [UDim.new]
  LOADN R20 0
  LOADN R21 10
  CALL R19 2 1
  SETTABLEKS R19 R18 K75 ["PaddingRight"]
  GETIMPORT R19 K49 [UDim.new]
  LOADN R20 0
  LOADN R21 10
  CALL R19 2 1
  SETTABLEKS R19 R18 K76 ["PaddingLeft"]
  GETIMPORT R19 K49 [UDim.new]
  LOADN R20 0
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K65 ["PaddingTop"]
  GETIMPORT R19 K49 [UDim.new]
  LOADN R20 0
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K66 ["PaddingBottom"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K78 [":hover"]
  DUPTABLE R19 K80 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R21 R2 K53 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R21 [+2]
  LOADK R20 K81 ["$SemanticColorActionSecondaryFill"]
  JUMP [+1]
  LOADK R20 K82 ["$SecondaryHoverBackground"]
  SETTABLEKS R20 R19 K51 ["BackgroundColor3"]
  GETTABLEKS R21 R2 K53 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R21 [+2]
  LOADK R20 K83 ["$SemanticColorActionSecondaryFillHoverTransparency"]
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K79 ["BackgroundTransparency"]
  CALL R17 2 1
  MOVE R18 R3
  LOADK R19 K84 [":press"]
  DUPTABLE R20 K80 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R22 R2 K53 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R22 [+2]
  LOADK R21 K81 ["$SemanticColorActionSecondaryFill"]
  JUMP [+1]
  LOADK R21 K85 ["$ActionActivated"]
  SETTABLEKS R21 R20 K51 ["BackgroundColor3"]
  GETTABLEKS R22 R2 K53 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R22 [+2]
  LOADK R21 K86 ["$SemanticColorActionSecondaryFillPressTransparency"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K79 ["BackgroundTransparency"]
  CALL R18 2 1
  MOVE R19 R3
  LOADK R20 K87 [".Delete"]
  DUPTABLE R21 K88 [{"TextColor3"}]
  LOADK R22 K89 ["$ErrorMain"]
  SETTABLEKS R22 R21 K21 ["TextColor3"]
  CALL R19 2 1
  MOVE R20 R3
  LOADK R21 K90 [".SectionTitle"]
  DUPTABLE R22 K92 [{"Size", "FontSize", "TextColor3", "Font"}]
  GETIMPORT R23 K93 [UDim2.new]
  LOADN R24 0
  LOADN R25 200
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K39 ["Size"]
  LOADK R23 K94 ["$FontSizeS"]
  SETTABLEKS R23 R22 K91 ["FontSize"]
  LOADK R23 K95 ["$TextSecondary"]
  SETTABLEKS R23 R22 K21 ["TextColor3"]
  LOADK R23 K96 ["$FontBold"]
  SETTABLEKS R23 R22 K22 ["Font"]
  NEWTABLE R23 0 1
  MOVE R24 R3
  LOADK R25 K64 ["::UIPadding"]
  DUPTABLE R26 K97 [{"PaddingLeft", "PaddingTop"}]
  GETIMPORT R27 K49 [UDim.new]
  LOADN R28 0
  LOADN R29 12
  CALL R27 2 1
  SETTABLEKS R27 R26 K76 ["PaddingLeft"]
  GETIMPORT R27 K49 [UDim.new]
  LOADN R28 0
  LOADN R29 8
  CALL R27 2 1
  SETTABLEKS R27 R26 K65 ["PaddingTop"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R3
  LOADK R14 K98 [".Component-Divider"]
  DUPTABLE R15 K99 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R16 K93 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 1
  CALL R16 4 1
  SETTABLEKS R16 R15 K39 ["Size"]
  LOADK R16 K61 ["$SemanticColorDivider"]
  SETTABLEKS R16 R15 K51 ["BackgroundColor3"]
  LOADK R16 K63 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R16 R15 K79 ["BackgroundTransparency"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K100 [".MoreIcon"]
  DUPTABLE R16 K102 [{"Image", "Size"}]
  LOADK R17 K103 ["$MoreIcon"]
  SETTABLEKS R17 R16 K101 ["Image"]
  GETIMPORT R17 K43 [UDim2.fromOffset]
  LOADN R18 16
  LOADN R19 16
  CALL R17 2 1
  SETTABLEKS R17 R16 K39 ["Size"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K104 [".CheckboxOnIcon"]
  DUPTABLE R17 K102 [{"Image", "Size"}]
  LOADK R18 K105 ["$CheckboxOn"]
  SETTABLEKS R18 R17 K101 ["Image"]
  GETIMPORT R18 K43 [UDim2.fromOffset]
  LOADN R19 16
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K39 ["Size"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K106 [".CheckboxOffIcon"]
  DUPTABLE R18 K102 [{"Image", "Size"}]
  LOADK R19 K107 ["$CheckboxOff"]
  SETTABLEKS R19 R18 K101 ["Image"]
  GETIMPORT R19 K43 [UDim2.fromOffset]
  LOADN R20 16
  LOADN R21 16
  CALL R19 2 1
  SETTABLEKS R19 R18 K39 ["Size"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K108 [".ErrorIcon"]
  DUPTABLE R19 K102 [{"Image", "Size"}]
  LOADK R20 K109 ["$Error"]
  SETTABLEKS R20 R19 K101 ["Image"]
  GETIMPORT R20 K43 [UDim2.fromOffset]
  LOADN R21 16
  LOADN R22 16
  CALL R20 2 1
  SETTABLEKS R20 R19 K39 ["Size"]
  CALL R17 2 1
  MOVE R18 R3
  LOADK R19 K110 [".CloseIcon"]
  DUPTABLE R20 K102 [{"Image", "Size"}]
  LOADK R21 K111 ["$Close"]
  SETTABLEKS R21 R20 K101 ["Image"]
  GETIMPORT R21 K43 [UDim2.fromOffset]
  LOADN R22 16
  LOADN R23 16
  CALL R21 2 1
  SETTABLEKS R21 R20 K39 ["Size"]
  CALL R18 2 1
  MOVE R19 R3
  LOADK R20 K112 [".SettingsIcon"]
  DUPTABLE R21 K102 [{"Image", "Size"}]
  LOADK R22 K113 ["$Settings"]
  SETTABLEKS R22 R21 K101 ["Image"]
  GETIMPORT R22 K43 [UDim2.fromOffset]
  LOADN R23 16
  LOADN R24 16
  CALL R22 2 1
  SETTABLEKS R22 R21 K39 ["Size"]
  CALL R19 2 1
  MOVE R20 R3
  LOADK R21 K114 [".AddAnnotationIcon"]
  DUPTABLE R22 K102 [{"Image", "Size"}]
  LOADK R23 K115 ["$AddAnnotation"]
  SETTABLEKS R23 R22 K101 ["Image"]
  GETIMPORT R23 K43 [UDim2.fromOffset]
  LOADN R24 16
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K39 ["Size"]
  CALL R20 2 -1
  SETLIST R5 R6 -1 [1]
  DUPTABLE R6 K122 [{"Font", "FontBold", "FontSizeS", "FontSizeM", "FontSizeL", "Shift100Transparency", "Shift200Transparency"}]
  GETIMPORT R7 K124 [Enum.Font.SourceSans]
  SETTABLEKS R7 R6 K22 ["Font"]
  GETIMPORT R7 K126 [Enum.Font.SourceSansBold]
  SETTABLEKS R7 R6 K116 ["FontBold"]
  LOADN R7 15
  SETTABLEKS R7 R6 K117 ["FontSizeS"]
  LOADN R7 18
  SETTABLEKS R7 R6 K118 ["FontSizeM"]
  LOADN R7 20
  SETTABLEKS R7 R6 K119 ["FontSizeL"]
  LOADK R7 K127 [0.96]
  SETTABLEKS R7 R6 K120 ["Shift100Transparency"]
  LOADK R7 K128 [0.92]
  SETTABLEKS R7 R6 K121 ["Shift200Transparency"]
  MOVE R7 R4
  LOADK R8 K2 ["PlaceAnnotations"]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
