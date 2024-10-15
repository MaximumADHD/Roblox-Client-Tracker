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
  NEWTABLE R5 0 10
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
  DUPTABLE R10 K24 [{"TextColor3", "Font", "TextSize"}]
  LOADK R11 K25 ["$TextPrimary"]
  SETTABLEKS R11 R10 K21 ["TextColor3"]
  LOADK R11 K26 ["$Font"]
  SETTABLEKS R11 R10 K22 ["Font"]
  LOADK R11 K27 ["$FontSizeM"]
  SETTABLEKS R11 R10 K23 ["TextSize"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K28 ["TextButton"]
  DUPTABLE R11 K24 [{"TextColor3", "Font", "TextSize"}]
  LOADK R12 K25 ["$TextPrimary"]
  SETTABLEKS R12 R11 K21 ["TextColor3"]
  LOADK R12 K26 ["$Font"]
  SETTABLEKS R12 R11 K22 ["Font"]
  LOADK R12 K27 ["$FontSizeM"]
  SETTABLEKS R12 R11 K23 ["TextSize"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K29 [".Component-TextInput"]
  DUPTABLE R12 K40 [{"Size", "TextColor3", "TextSize", "LineHeight", "BackgroundColor3", "BackgroundTransparency", "TextXAlignment", "TextWrapped", "AutomaticSize", "TextScaled", "ClearTextOnFocus", "MultiLine", "Font"}]
  GETIMPORT R13 K43 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 36
  CALL R13 4 1
  SETTABLEKS R13 R12 K30 ["Size"]
  LOADK R13 K25 ["$TextPrimary"]
  SETTABLEKS R13 R12 K21 ["TextColor3"]
  LOADK R13 K27 ["$FontSizeM"]
  SETTABLEKS R13 R12 K23 ["TextSize"]
  LOADK R13 K44 [1.5]
  SETTABLEKS R13 R12 K31 ["LineHeight"]
  GETTABLEKS R14 R2 K45 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R14 [+2]
  LOADK R13 K46 ["$SemanticColorComponentInputFill"]
  JUMP [+1]
  LOADK R13 K47 ["$ForegroundContrast"]
  SETTABLEKS R13 R12 K32 ["BackgroundColor3"]
  GETTABLEKS R14 R2 K45 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R14 [+2]
  LOADK R13 K48 ["$SemanticColorComponentInputFillTransparency"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K33 ["BackgroundTransparency"]
  GETIMPORT R13 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K34 ["TextXAlignment"]
  LOADB R13 1
  SETTABLEKS R13 R12 K35 ["TextWrapped"]
  GETIMPORT R13 K53 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K36 ["AutomaticSize"]
  LOADB R13 0
  SETTABLEKS R13 R12 K37 ["TextScaled"]
  LOADB R13 0
  SETTABLEKS R13 R12 K38 ["ClearTextOnFocus"]
  LOADB R13 1
  SETTABLEKS R13 R12 K39 ["MultiLine"]
  LOADK R13 K26 ["$Font"]
  SETTABLEKS R13 R12 K22 ["Font"]
  NEWTABLE R13 0 2
  MOVE R14 R3
  LOADK R15 K54 ["::UICorner"]
  DUPTABLE R16 K56 [{"CornerRadius"}]
  LOADN R17 18
  SETTABLEKS R17 R16 K55 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K57 ["::UIPadding"]
  DUPTABLE R17 K62 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R18 K64 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K58 ["PaddingTop"]
  GETIMPORT R18 K64 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K59 ["PaddingLeft"]
  GETIMPORT R18 K64 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K60 ["PaddingBottom"]
  GETIMPORT R18 K64 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K61 ["PaddingRight"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R3
  LOADK R12 K65 [".Component-Avatar"]
  DUPTABLE R13 K66 [{"Size"}]
  GETIMPORT R14 K68 [UDim2.fromOffset]
  LOADN R15 32
  LOADN R16 32
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["Size"]
  NEWTABLE R14 0 1
  MOVE R15 R3
  LOADK R16 K54 ["::UICorner"]
  DUPTABLE R17 K56 [{"CornerRadius"}]
  GETIMPORT R18 K64 [UDim.new]
  LOADN R19 1
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K55 ["CornerRadius"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R3
  LOADK R13 K69 [".Component-Dropdown"]
  DUPTABLE R14 K70 [{"AutomaticSize", "BackgroundColor3"}]
  GETIMPORT R15 K53 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K36 ["AutomaticSize"]
  GETTABLEKS R16 R2 K45 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R16 [+2]
  LOADK R15 K71 ["$SemanticColorSurface200"]
  JUMP [+1]
  LOADK R15 K47 ["$ForegroundContrast"]
  SETTABLEKS R15 R14 K32 ["BackgroundColor3"]
  NEWTABLE R15 0 3
  MOVE R16 R3
  LOADK R17 K72 ["::UIStroke"]
  DUPTABLE R18 K76 [{"Thickness", "Color", "Transparency"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K73 ["Thickness"]
  GETTABLEKS R20 R2 K45 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R20 [+2]
  LOADK R19 K77 ["$SemanticColorDivider"]
  JUMP [+1]
  LOADK R19 K78 ["$ForegroundMain"]
  SETTABLEKS R19 R18 K74 ["Color"]
  GETTABLEKS R20 R2 K45 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R20 [+2]
  LOADK R19 K79 ["$SemanticColorDividerTransparency"]
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K75 ["Transparency"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K57 ["::UIPadding"]
  DUPTABLE R19 K80 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R20 K64 [UDim.new]
  LOADN R21 0
  LOADN R22 4
  CALL R20 2 1
  SETTABLEKS R20 R19 K58 ["PaddingTop"]
  GETIMPORT R20 K64 [UDim.new]
  LOADN R21 0
  LOADN R22 4
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R3
  LOADK R19 K54 ["::UICorner"]
  DUPTABLE R20 K56 [{"CornerRadius"}]
  GETIMPORT R21 K64 [UDim.new]
  LOADN R22 0
  LOADN R23 8
  CALL R21 2 1
  SETTABLEKS R21 R20 K55 ["CornerRadius"]
  CALL R18 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R3
  LOADK R14 K81 [".Component-DropdownItem"]
  DUPTABLE R15 K82 [{"BorderSizePixel", "BackgroundColor3", "BackgroundTransparency", "TextColor3", "Size", "AutomaticSize", "TextXAlignment"}]
  LOADN R16 0
  SETTABLEKS R16 R15 K15 ["BorderSizePixel"]
  GETTABLEKS R17 R2 K45 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R17 [+2]
  LOADNIL R16
  JUMP [+1]
  LOADK R16 K83 ["$SecondaryMain"]
  SETTABLEKS R16 R15 K32 ["BackgroundColor3"]
  GETTABLEKS R17 R2 K45 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R17 [+2]
  LOADN R16 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K33 ["BackgroundTransparency"]
  LOADK R16 K25 ["$TextPrimary"]
  SETTABLEKS R16 R15 K21 ["TextColor3"]
  GETIMPORT R16 K85 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K30 ["Size"]
  GETIMPORT R16 K87 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K36 ["AutomaticSize"]
  GETIMPORT R16 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K34 ["TextXAlignment"]
  NEWTABLE R16 0 4
  MOVE R17 R3
  LOADK R18 K57 ["::UIPadding"]
  DUPTABLE R19 K88 [{"PaddingRight", "PaddingLeft", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R20 K64 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K61 ["PaddingRight"]
  GETIMPORT R20 K64 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K59 ["PaddingLeft"]
  GETIMPORT R20 K64 [UDim.new]
  LOADN R21 0
  LOADN R22 5
  CALL R20 2 1
  SETTABLEKS R20 R19 K58 ["PaddingTop"]
  GETIMPORT R20 K64 [UDim.new]
  LOADN R21 0
  LOADN R22 5
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R3
  LOADK R19 K89 [":hover"]
  DUPTABLE R20 K90 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R22 R2 K45 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R22 [+2]
  LOADK R21 K91 ["$SemanticColorActionSecondaryFill"]
  JUMP [+1]
  LOADK R21 K92 ["$SecondaryHoverBackground"]
  SETTABLEKS R21 R20 K32 ["BackgroundColor3"]
  GETTABLEKS R22 R2 K45 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R22 [+2]
  LOADK R21 K93 ["$SemanticColorActionSecondaryFillHoverTransparency"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K33 ["BackgroundTransparency"]
  CALL R18 2 1
  MOVE R19 R3
  LOADK R20 K94 [":pressed"]
  DUPTABLE R21 K90 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R23 R2 K45 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R23 [+2]
  LOADK R22 K91 ["$SemanticColorActionSecondaryFill"]
  JUMP [+1]
  LOADK R22 K95 ["$ActionActivated"]
  SETTABLEKS R22 R21 K32 ["BackgroundColor3"]
  GETTABLEKS R23 R2 K45 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R23 [+2]
  LOADK R22 K96 ["$SemanticColorActionSecondaryFillPressTransparency"]
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K33 ["BackgroundTransparency"]
  CALL R19 2 1
  MOVE R20 R3
  LOADK R21 K97 [".Delete"]
  DUPTABLE R22 K98 [{"TextColor3"}]
  LOADK R23 K99 ["$ErrorMain"]
  SETTABLEKS R23 R22 K21 ["TextColor3"]
  CALL R20 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R3
  LOADK R15 K100 [".Component-Divider"]
  DUPTABLE R16 K101 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R17 K43 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 1
  CALL R17 4 1
  SETTABLEKS R17 R16 K30 ["Size"]
  GETTABLEKS R18 R2 K45 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R18 [+2]
  LOADK R17 K77 ["$SemanticColorDivider"]
  JUMP [+1]
  LOADK R17 K102 ["$TextDisabled"]
  SETTABLEKS R17 R16 K32 ["BackgroundColor3"]
  GETTABLEKS R18 R2 K45 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R18 [+2]
  LOADK R17 K79 ["$SemanticColorDividerTransparency"]
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K33 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K103 [".MoreIcon"]
  DUPTABLE R17 K105 [{"Image"}]
  LOADK R18 K106 ["$MoreIcon"]
  SETTABLEKS R18 R17 K104 ["Image"]
  CALL R15 2 -1
  SETLIST R5 R6 -1 [1]
  DUPTABLE R6 K111 [{"Font", "FontBold", "FontSizeS", "FontSizeM", "FontSizeL"}]
  GETIMPORT R7 K113 [Enum.Font.SourceSans]
  SETTABLEKS R7 R6 K22 ["Font"]
  GETIMPORT R7 K115 [Enum.Font.SourceSansBold]
  SETTABLEKS R7 R6 K107 ["FontBold"]
  LOADN R7 15
  SETTABLEKS R7 R6 K108 ["FontSizeS"]
  LOADN R7 18
  SETTABLEKS R7 R6 K109 ["FontSizeM"]
  LOADN R7 20
  SETTABLEKS R7 R6 K110 ["FontSizeL"]
  MOVE R7 R4
  LOADK R8 K2 ["PlaceAnnotations"]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
