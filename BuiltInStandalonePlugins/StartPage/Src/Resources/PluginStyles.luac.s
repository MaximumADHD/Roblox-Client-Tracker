MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
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
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["SharedFlags"]
  GETTABLEKS R5 R6 K13 ["getFFlagLuaStartPageNotFoundImageUpdate"]
  CALL R4 1 1
  CALL R4 0 1
  NEWTABLE R5 0 37
  MOVE R6 R2
  LOADK R7 K14 [".StartPage-PageBackground"]
  DUPTABLE R8 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R9 K18 ["$PageBackground"]
  SETTABLEKS R9 R8 K15 ["BackgroundColor3"]
  LOADN R9 0
  SETTABLEKS R9 R8 K16 ["BackgroundTransparency"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K19 [".StartPage-ContextMenuBackground"]
  DUPTABLE R9 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R10 K20 ["$ContextMenuBackground"]
  SETTABLEKS R10 R9 K15 ["BackgroundColor3"]
  LOADN R10 0
  SETTABLEKS R10 R9 K16 ["BackgroundTransparency"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K21 [".StartPage-Selected"]
  DUPTABLE R10 K22 [{"BackgroundColor3"}]
  LOADK R11 K23 ["$Selected"]
  SETTABLEKS R11 R10 K15 ["BackgroundColor3"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K24 [".StartPage-Contrast"]
  DUPTABLE R11 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R12 K25 ["$Contrast"]
  SETTABLEKS R12 R11 K15 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K16 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K26 [".StartPage-TextColor"]
  DUPTABLE R12 K28 [{"TextColor3"}]
  LOADK R13 K29 ["$TextColor"]
  SETTABLEKS R13 R12 K27 ["TextColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K30 [".StartPage-Font"]
  DUPTABLE R13 K33 [{"Font", "LineHeight"}]
  GETIMPORT R14 K36 [Enum.Font.BuilderSans]
  SETTABLEKS R14 R13 K31 ["Font"]
  LOADK R14 K37 [1.142]
  SETTABLEKS R14 R13 K32 ["LineHeight"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K38 [".StartPage-FontBold"]
  DUPTABLE R14 K33 [{"Font", "LineHeight"}]
  GETIMPORT R15 K40 [Enum.Font.BuilderSansBold]
  SETTABLEKS R15 R14 K31 ["Font"]
  LOADK R15 K41 [1.6]
  SETTABLEKS R15 R14 K32 ["LineHeight"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K42 [".StartPage-TextSize"]
  DUPTABLE R15 K44 [{"TextSize"}]
  LOADK R16 K45 ["$TextSize"]
  SETTABLEKS R16 R15 K43 ["TextSize"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K46 [".StartPage-IconSizeM"]
  DUPTABLE R16 K48 [{"Size"}]
  LOADK R17 K49 ["$IconSizeM"]
  SETTABLEKS R17 R16 K47 ["Size"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K50 [".StartPage-RoundedCorner8 ::UICorner"]
  DUPTABLE R17 K52 [{"CornerRadius"}]
  LOADK R18 K53 ["$CornerSize8"]
  SETTABLEKS R18 R17 K51 ["CornerRadius"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K54 [".StartPage-Circular ::UICorner"]
  DUPTABLE R18 K52 [{"CornerRadius"}]
  GETIMPORT R19 K57 [UDim.new]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K51 ["CornerRadius"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K58 [".StartPage-PillPaddingS ::UIPadding"]
  DUPTABLE R19 K63 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R20 K57 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K59 ["PaddingLeft"]
  GETIMPORT R20 K57 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["PaddingRight"]
  GETIMPORT R20 K57 [UDim.new]
  LOADN R21 0
  LOADN R22 4
  CALL R20 2 1
  SETTABLEKS R20 R19 K61 ["PaddingTop"]
  GETIMPORT R20 K57 [UDim.new]
  LOADN R21 0
  LOADN R22 4
  CALL R20 2 1
  SETTABLEKS R20 R19 K62 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K64 [".StartPage-TilePadding ::UIPadding"]
  DUPTABLE R20 K63 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R21 K57 [UDim.new]
  LOADN R22 0
  LOADN R23 12
  CALL R21 2 1
  SETTABLEKS R21 R20 K59 ["PaddingLeft"]
  GETIMPORT R21 K57 [UDim.new]
  LOADN R22 0
  LOADN R23 12
  CALL R21 2 1
  SETTABLEKS R21 R20 K60 ["PaddingRight"]
  GETIMPORT R21 K57 [UDim.new]
  LOADN R22 0
  LOADN R23 12
  CALL R21 2 1
  SETTABLEKS R21 R20 K61 ["PaddingTop"]
  GETIMPORT R21 K57 [UDim.new]
  LOADN R22 0
  LOADN R23 12
  CALL R21 2 1
  SETTABLEKS R21 R20 K62 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K65 [".StartPage-TablePadding ::UIPadding"]
  DUPTABLE R21 K66 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R22 K57 [UDim.new]
  LOADN R23 0
  LOADN R24 10
  CALL R22 2 1
  SETTABLEKS R22 R21 K61 ["PaddingTop"]
  GETIMPORT R22 K57 [UDim.new]
  LOADN R23 0
  LOADN R24 10
  CALL R22 2 1
  SETTABLEKS R22 R21 K62 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K67 [".StartPage-DescPadding ::UIPadding"]
  DUPTABLE R22 K63 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R23 K57 [UDim.new]
  LOADN R24 0
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K59 ["PaddingLeft"]
  GETIMPORT R23 K57 [UDim.new]
  LOADN R24 0
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K60 ["PaddingRight"]
  GETIMPORT R23 K57 [UDim.new]
  LOADN R24 0
  LOADN R25 12
  CALL R23 2 1
  SETTABLEKS R23 R22 K61 ["PaddingTop"]
  GETIMPORT R23 K57 [UDim.new]
  LOADN R24 0
  LOADN R25 12
  CALL R23 2 1
  SETTABLEKS R23 R22 K62 ["PaddingBottom"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K68 [".StartPage-ContextMenuPadding ::UIPadding"]
  DUPTABLE R23 K63 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R24 K57 [UDim.new]
  LOADN R25 0
  LOADN R26 8
  CALL R24 2 1
  SETTABLEKS R24 R23 K59 ["PaddingLeft"]
  GETIMPORT R24 K57 [UDim.new]
  LOADN R25 0
  LOADN R26 8
  CALL R24 2 1
  SETTABLEKS R24 R23 K60 ["PaddingRight"]
  GETIMPORT R24 K57 [UDim.new]
  LOADN R25 0
  LOADN R26 8
  CALL R24 2 1
  SETTABLEKS R24 R23 K61 ["PaddingTop"]
  GETIMPORT R24 K57 [UDim.new]
  LOADN R25 0
  LOADN R26 8
  CALL R24 2 1
  SETTABLEKS R24 R23 K62 ["PaddingBottom"]
  CALL R21 2 1
  SETLIST R5 R6 16 [1]
  MOVE R6 R2
  LOADK R7 K69 [".StartPage-ContextMenuRowPadding ::UIPadding"]
  DUPTABLE R8 K63 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R9 K57 [UDim.new]
  LOADN R10 0
  LOADN R11 8
  CALL R9 2 1
  SETTABLEKS R9 R8 K59 ["PaddingLeft"]
  GETIMPORT R9 K57 [UDim.new]
  LOADN R10 0
  LOADN R11 8
  CALL R9 2 1
  SETTABLEKS R9 R8 K60 ["PaddingRight"]
  GETIMPORT R9 K57 [UDim.new]
  LOADN R10 0
  LOADN R11 4
  CALL R9 2 1
  SETTABLEKS R9 R8 K61 ["PaddingTop"]
  GETIMPORT R9 K57 [UDim.new]
  LOADN R10 0
  LOADN R11 4
  CALL R9 2 1
  SETTABLEKS R9 R8 K62 ["PaddingBottom"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K70 [".StartPage-PadScrollingCarouselLeft ::UIPadding"]
  DUPTABLE R9 K71 [{"PaddingLeft"}]
  GETIMPORT R10 K57 [UDim.new]
  LOADN R11 0
  LOADN R12 2
  CALL R10 2 1
  SETTABLEKS R10 R9 K59 ["PaddingLeft"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K72 [".StartPage-Anchor-Bottom-Right"]
  DUPTABLE R10 K74 [{"AnchorPoint"}]
  GETIMPORT R11 K76 [Vector2.new]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K73 ["AnchorPoint"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K77 [".StartPage-NoBorder"]
  DUPTABLE R11 K79 [{"BorderSizePixel"}]
  LOADN R12 0
  SETTABLEKS R12 R11 K78 ["BorderSizePixel"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K80 [".StartPage-StandardDarkTextColor"]
  DUPTABLE R12 K28 [{"TextColor3"}]
  LOADK R13 K81 ["$StandardDark"]
  SETTABLEKS R13 R12 K27 ["TextColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K82 [".StartPage-MutedTextColor"]
  DUPTABLE R13 K28 [{"TextColor3"}]
  LOADK R14 K83 ["$SemanticColorContentMuted"]
  SETTABLEKS R14 R13 K27 ["TextColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K84 [".StartPage-Standard"]
  DUPTABLE R14 K22 [{"BackgroundColor3"}]
  LOADK R15 K85 ["$Standard"]
  SETTABLEKS R15 R14 K15 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K86 [".StartPage-StandardDarkBackground"]
  DUPTABLE R15 K22 [{"BackgroundColor3"}]
  LOADK R16 K81 ["$StandardDark"]
  SETTABLEKS R16 R15 K15 ["BackgroundColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K87 [".StartPage-TileBackground"]
  DUPTABLE R16 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R17 K88 ["$TileBackground"]
  SETTABLEKS R17 R16 K15 ["BackgroundColor3"]
  LOADN R17 0
  SETTABLEKS R17 R16 K16 ["BackgroundTransparency"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K89 [":hover :: UIStroke"]
  DUPTABLE R20 K94 [{"StrokeApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R21 K97 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R21 R20 K90 ["StrokeApplyStrokeMode"]
  LOADK R21 K98 ["$Border"]
  SETTABLEKS R21 R20 K91 ["Color"]
  LOADK R21 K99 [0.88]
  SETTABLEKS R21 R20 K92 ["Transparency"]
  LOADN R21 2
  SETTABLEKS R21 R20 K93 ["Thickness"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K100 [".StartPage-PillBackground"]
  DUPTABLE R17 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R18 K101 ["$PillBackground"]
  SETTABLEKS R18 R17 K15 ["BackgroundColor3"]
  LOADN R18 0
  SETTABLEKS R18 R17 K16 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K102 [".StartPage-ShimmerBackground"]
  DUPTABLE R18 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K103 ["$ShimmerBackground"]
  SETTABLEKS R19 R18 K15 ["BackgroundColor3"]
  LOADK R19 K104 ["$ShimmerBackgroundTransparency"]
  SETTABLEKS R19 R18 K16 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K105 [".StartPage-ShimmerForeground"]
  DUPTABLE R19 K22 [{"BackgroundColor3"}]
  LOADK R20 K106 ["$ShimmerForeground"]
  SETTABLEKS R20 R19 K15 ["BackgroundColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K107 [".StartPage-ShimmerGradient"]
  DUPTABLE R20 K108 [{"Transparency"}]
  LOADK R21 K109 ["$ShimmerGradientTransparency"]
  SETTABLEKS R21 R20 K92 ["Transparency"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K110 [".StartPage-NoExperiences"]
  DUPTABLE R21 K112 [{"Image", "Size"}]
  LOADK R22 K113 ["$NoExperiences"]
  SETTABLEKS R22 R21 K111 ["Image"]
  JUMPIFNOT R4 [+8]
  GETIMPORT R22 K115 [UDim2.new]
  LOADN R23 0
  LOADN R24 64
  LOADN R25 0
  LOADN R26 180
  CALL R22 4 1
  JUMP [+7]
  GETIMPORT R22 K115 [UDim2.new]
  LOADN R23 0
  LOADN R24 96
  LOADN R25 0
  LOADN R26 96
  CALL R22 4 1
  SETTABLEKS R22 R21 K47 ["Size"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K116 [".StartPage-RightIcon"]
  DUPTABLE R22 K112 [{"Image", "Size"}]
  LOADK R23 K117 ["$RightChevron"]
  SETTABLEKS R23 R22 K111 ["Image"]
  LOADK R23 K49 ["$IconSizeM"]
  SETTABLEKS R23 R22 K47 ["Size"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K118 [".StartPage-KebabIcon"]
  DUPTABLE R23 K112 [{"Image", "Size"}]
  LOADK R24 K119 ["$Kebab"]
  SETTABLEKS R24 R23 K111 ["Image"]
  LOADK R24 K120 ["$IconSizeL"]
  SETTABLEKS R24 R23 K47 ["Size"]
  CALL R21 2 1
  SETLIST R5 R6 16 [17]
  MOVE R6 R2
  LOADK R7 K121 [".StartPage-CancelIcon"]
  DUPTABLE R8 K112 [{"Image", "Size"}]
  LOADK R9 K122 ["$Cancel"]
  SETTABLEKS R9 R8 K111 ["Image"]
  LOADK R9 K123 ["$IconSizeS"]
  SETTABLEKS R9 R8 K47 ["Size"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K124 [".StartPage-BlackCancelIcon"]
  DUPTABLE R9 K126 [{"Image", "ImageColor3", "Size"}]
  LOADK R10 K122 ["$Cancel"]
  SETTABLEKS R10 R9 K111 ["Image"]
  LOADK R10 K127 ["$BlackColor"]
  SETTABLEKS R10 R9 K125 ["ImageColor3"]
  LOADK R10 K123 ["$IconSizeS"]
  SETTABLEKS R10 R9 K47 ["Size"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K128 [".StartPage-CancelWhiteIcon"]
  DUPTABLE R10 K112 [{"Image", "Size"}]
  LOADK R11 K129 ["$CancelWhite"]
  SETTABLEKS R11 R10 K111 ["Image"]
  LOADK R11 K123 ["$IconSizeS"]
  SETTABLEKS R11 R10 K47 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K130 [".StartPage-TeamCreateOnlineBackground"]
  DUPTABLE R11 K22 [{"BackgroundColor3"}]
  LOADK R12 K131 ["$TeamCreatePresenceOnlineColor"]
  SETTABLEKS R12 R11 K15 ["BackgroundColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K132 [".StartPage-SearchResultRowColumn"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K133 ["::UIListLayout"]
  DUPTABLE R16 K137 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R17 K139 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K134 ["FillDirection"]
  GETIMPORT R17 K57 [UDim.new]
  LOADN R18 0
  LOADN R19 6
  CALL R17 2 1
  SETTABLEKS R17 R16 K135 ["Padding"]
  GETIMPORT R17 K141 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K136 ["SortOrder"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R5 R6 -1 [33]
  DUPTABLE R6 K148 [{"IconSizeS", "IconSizeM", "IconSizeL", "CornerSize8", "TextSize", "TeamCreatePresenceOnlineColor", "BlackColor"}]
  GETIMPORT R7 K115 [UDim2.new]
  LOADN R8 0
  LOADN R9 12
  LOADN R10 0
  LOADN R11 12
  CALL R7 4 1
  SETTABLEKS R7 R6 K142 ["IconSizeS"]
  GETIMPORT R7 K115 [UDim2.new]
  LOADN R8 0
  LOADN R9 24
  LOADN R10 0
  LOADN R11 24
  CALL R7 4 1
  SETTABLEKS R7 R6 K143 ["IconSizeM"]
  GETIMPORT R7 K115 [UDim2.new]
  LOADN R8 0
  LOADN R9 32
  LOADN R10 0
  LOADN R11 32
  CALL R7 4 1
  SETTABLEKS R7 R6 K144 ["IconSizeL"]
  GETIMPORT R7 K57 [UDim.new]
  LOADN R8 0
  LOADN R9 8
  CALL R7 2 1
  SETTABLEKS R7 R6 K145 ["CornerSize8"]
  LOADN R7 16
  SETTABLEKS R7 R6 K43 ["TextSize"]
  GETIMPORT R7 K151 [Color3.fromHex]
  LOADK R8 K152 ["#0fb369"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K146 ["TeamCreatePresenceOnlineColor"]
  GETIMPORT R7 K151 [Color3.fromHex]
  LOADK R8 K153 ["#000000"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K147 ["BlackColor"]
  MOVE R7 R3
  LOADK R8 K2 ["StartPage"]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
