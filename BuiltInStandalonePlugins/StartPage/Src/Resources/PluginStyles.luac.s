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
  GETTABLEKS R5 R6 K13 ["getFFlagLuaStartPageQuickLoad"]
  CALL R4 1 1
  CALL R4 0 1
  NEWTABLE R5 0 76
  MOVE R6 R2
  LOADK R7 K14 [".StartPage-Background"]
  DUPTABLE R8 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R9 K18 ["$Background"]
  SETTABLEKS R9 R8 K15 ["BackgroundColor3"]
  LOADN R9 0
  SETTABLEKS R9 R8 K16 ["BackgroundTransparency"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K19 [".StartPage-PageBackground"]
  DUPTABLE R9 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R10 K20 ["$PageBackground"]
  SETTABLEKS R10 R9 K15 ["BackgroundColor3"]
  LOADN R10 0
  SETTABLEKS R10 R9 K16 ["BackgroundTransparency"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K21 [".StartPage-MenuBackground"]
  DUPTABLE R10 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R11 K22 ["$MenuBackground"]
  SETTABLEKS R11 R10 K15 ["BackgroundColor3"]
  LOADN R11 0
  SETTABLEKS R11 R10 K16 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K23 [".StartPage-ContextMenuBackground"]
  DUPTABLE R11 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R12 K24 ["$ContextMenuBackground"]
  SETTABLEKS R12 R11 K15 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K16 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K25 [".StartPage-Selected"]
  DUPTABLE R12 K26 [{"BackgroundColor3"}]
  LOADK R13 K27 ["$Selected"]
  SETTABLEKS R13 R12 K15 ["BackgroundColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K28 [".StartPage-Contrast"]
  DUPTABLE R13 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R14 K29 ["$Contrast"]
  SETTABLEKS R14 R13 K15 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K16 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K30 [".StartPage-NoTextStroke"]
  DUPTABLE R14 K32 [{"TextStrokeTransparency"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K31 ["TextStrokeTransparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K33 [".StartPage-TextColor"]
  DUPTABLE R15 K35 [{"TextColor3"}]
  LOADK R16 K36 ["$TextColor"]
  SETTABLEKS R16 R15 K34 ["TextColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K37 [".StartPage-ContrastTextColor"]
  DUPTABLE R16 K35 [{"TextColor3"}]
  LOADK R17 K38 ["$ContrastTextColor"]
  SETTABLEKS R17 R16 K34 ["TextColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K39 [".StartPage-DisabledTextColor"]
  DUPTABLE R17 K35 [{"TextColor3"}]
  LOADK R18 K40 ["$Disabled"]
  SETTABLEKS R18 R17 K34 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K41 [".StartPage-ButtonBackgroundColor"]
  DUPTABLE R18 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R19 K44 [Color3.fromHex]
  LOADK R20 K45 ["#3C64FA"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K15 ["BackgroundColor3"]
  LOADN R19 0
  SETTABLEKS R19 R18 K16 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K46 [".StartPage-Font"]
  DUPTABLE R19 K49 [{"Font", "LineHeight"}]
  GETIMPORT R20 K52 [Enum.Font.BuilderSans]
  SETTABLEKS R20 R19 K47 ["Font"]
  LOADK R20 K53 [1.142]
  SETTABLEKS R20 R19 K48 ["LineHeight"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K54 [".StartPage-FontBold"]
  DUPTABLE R20 K49 [{"Font", "LineHeight"}]
  GETIMPORT R21 K56 [Enum.Font.BuilderSansBold]
  SETTABLEKS R21 R20 K47 ["Font"]
  LOADK R21 K57 [1.6]
  SETTABLEKS R21 R20 K48 ["LineHeight"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K58 [".StartPage-FontExtraBold"]
  DUPTABLE R21 K49 [{"Font", "LineHeight"}]
  GETIMPORT R22 K60 [Enum.Font.BuilderSansExtraBold]
  SETTABLEKS R22 R21 K47 ["Font"]
  LOADK R22 K57 [1.6]
  SETTABLEKS R22 R21 K48 ["LineHeight"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K61 [".StartPage-TextSizeXS"]
  DUPTABLE R22 K63 [{"TextSize"}]
  LOADK R23 K64 ["$TextSizeXS"]
  SETTABLEKS R23 R22 K62 ["TextSize"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K65 [".StartPage-TextSize"]
  DUPTABLE R23 K63 [{"TextSize"}]
  LOADK R24 K66 ["$TextSize"]
  SETTABLEKS R24 R23 K62 ["TextSize"]
  CALL R21 2 1
  SETLIST R5 R6 16 [1]
  MOVE R6 R2
  LOADK R7 K67 [".StartPage-TextSizeM"]
  DUPTABLE R8 K63 [{"TextSize"}]
  LOADK R9 K68 ["$TextSizeM"]
  SETTABLEKS R9 R8 K62 ["TextSize"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K69 [".StartPage-TextSizeL"]
  DUPTABLE R9 K63 [{"TextSize"}]
  LOADK R10 K70 ["$TextSizeL"]
  SETTABLEKS R10 R9 K62 ["TextSize"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K71 [".StartPage-IconSize"]
  DUPTABLE R10 K73 [{"Size"}]
  LOADK R11 K74 ["$IconSize"]
  SETTABLEKS R11 R10 K72 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K75 [".StartPage-IconSizeM"]
  DUPTABLE R11 K73 [{"Size"}]
  LOADK R12 K76 ["$IconSizeM"]
  SETTABLEKS R12 R11 K72 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K77 [".StartPage-RoundedCorner8 ::UICorner"]
  DUPTABLE R12 K79 [{"CornerRadius"}]
  LOADK R13 K80 ["$CornerSize8"]
  SETTABLEKS R13 R12 K78 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K81 [".StartPage-RoundedCorner12 ::UICorner"]
  DUPTABLE R13 K79 [{"CornerRadius"}]
  LOADK R14 K82 ["$CornerSize12"]
  SETTABLEKS R14 R13 K78 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K83 [".StartPage-RoundedCorner16 ::UICorner"]
  DUPTABLE R14 K79 [{"CornerRadius"}]
  LOADK R15 K84 ["$CornerSize16"]
  SETTABLEKS R15 R14 K78 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K85 [".StartPage-RoundedCorner32 ::UICorner"]
  DUPTABLE R15 K79 [{"CornerRadius"}]
  LOADK R16 K86 ["$CornerSize32"]
  SETTABLEKS R16 R15 K78 ["CornerRadius"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K87 [".StartPage-Circular ::UICorner"]
  DUPTABLE R16 K79 [{"CornerRadius"}]
  GETIMPORT R17 K90 [UDim.new]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K78 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K91 [".StartPage-SearchBar"]
  DUPTABLE R17 K94 [{"TextXAlignment", "Font", "BorderSizePixel", "BackgroundColor3"}]
  GETIMPORT R18 K96 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K92 ["TextXAlignment"]
  GETIMPORT R18 K52 [Enum.Font.BuilderSans]
  SETTABLEKS R18 R17 K47 ["Font"]
  LOADN R18 0
  SETTABLEKS R18 R17 K93 ["BorderSizePixel"]
  LOADK R18 K20 ["$PageBackground"]
  SETTABLEKS R18 R17 K15 ["BackgroundColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K97 [".StartPage-Highlight"]
  DUPTABLE R18 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R19 K44 [Color3.fromHex]
  LOADK R20 K98 ["#BBBCBE"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K15 ["BackgroundColor3"]
  LOADK R19 K99 [0.92]
  SETTABLEKS R19 R18 K16 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K100 [".StartPage-TileBorder ::UIStroke"]
  DUPTABLE R19 K104 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R20 K106 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R20 R19 K101 ["ApplyStrokeMode"]
  LOADK R20 K107 ["$HoverBorder"]
  SETTABLEKS R20 R19 K102 ["Color"]
  LOADN R20 1
  SETTABLEKS R20 R19 K103 ["Thickness"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K108 [".StartPage-PillPaddingS ::UIPadding"]
  DUPTABLE R20 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R21 K90 [UDim.new]
  LOADN R22 0
  LOADN R23 10
  CALL R21 2 1
  SETTABLEKS R21 R20 K109 ["PaddingLeft"]
  GETIMPORT R21 K90 [UDim.new]
  LOADN R22 0
  LOADN R23 10
  CALL R21 2 1
  SETTABLEKS R21 R20 K110 ["PaddingRight"]
  GETIMPORT R21 K90 [UDim.new]
  LOADN R22 0
  LOADN R23 4
  CALL R21 2 1
  SETTABLEKS R21 R20 K111 ["PaddingTop"]
  GETIMPORT R21 K90 [UDim.new]
  LOADN R22 0
  LOADN R23 4
  CALL R21 2 1
  SETTABLEKS R21 R20 K112 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K114 [".StartPage-PillPadding ::UIPadding"]
  DUPTABLE R21 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R22 K90 [UDim.new]
  LOADN R23 0
  LOADN R24 12
  CALL R22 2 1
  SETTABLEKS R22 R21 K109 ["PaddingLeft"]
  GETIMPORT R22 K90 [UDim.new]
  LOADN R23 0
  LOADN R24 12
  CALL R22 2 1
  SETTABLEKS R22 R21 K110 ["PaddingRight"]
  GETIMPORT R22 K90 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K111 ["PaddingTop"]
  GETIMPORT R22 K90 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K112 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K115 [".StartPage-ButtonPadding ::UIPadding"]
  DUPTABLE R22 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R23 K90 [UDim.new]
  LOADN R24 0
  LOADN R25 20
  CALL R23 2 1
  SETTABLEKS R23 R22 K109 ["PaddingLeft"]
  GETIMPORT R23 K90 [UDim.new]
  LOADN R24 0
  LOADN R25 20
  CALL R23 2 1
  SETTABLEKS R23 R22 K110 ["PaddingRight"]
  GETIMPORT R23 K90 [UDim.new]
  LOADN R24 0
  LOADN R25 12
  CALL R23 2 1
  SETTABLEKS R23 R22 K111 ["PaddingTop"]
  GETIMPORT R23 K90 [UDim.new]
  LOADN R24 0
  LOADN R25 12
  CALL R23 2 1
  SETTABLEKS R23 R22 K112 ["PaddingBottom"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K116 [".StartPage-TilePadding ::UIPadding"]
  DUPTABLE R23 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R24 K90 [UDim.new]
  LOADN R25 0
  LOADN R26 12
  CALL R24 2 1
  SETTABLEKS R24 R23 K109 ["PaddingLeft"]
  GETIMPORT R24 K90 [UDim.new]
  LOADN R25 0
  LOADN R26 12
  CALL R24 2 1
  SETTABLEKS R24 R23 K110 ["PaddingRight"]
  GETIMPORT R24 K90 [UDim.new]
  LOADN R25 0
  LOADN R26 12
  CALL R24 2 1
  SETTABLEKS R24 R23 K111 ["PaddingTop"]
  GETIMPORT R24 K90 [UDim.new]
  LOADN R25 0
  LOADN R26 12
  CALL R24 2 1
  SETTABLEKS R24 R23 K112 ["PaddingBottom"]
  CALL R21 2 1
  SETLIST R5 R6 16 [17]
  MOVE R6 R2
  LOADK R7 K117 [".StartPage-TablePadding ::UIPadding"]
  DUPTABLE R8 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  JUMPIFNOT R4 [+2]
  LOADNIL R9
  JUMP [+5]
  GETIMPORT R9 K90 [UDim.new]
  LOADN R10 0
  LOADN R11 16
  CALL R9 2 1
  SETTABLEKS R9 R8 K109 ["PaddingLeft"]
  JUMPIFNOT R4 [+2]
  LOADNIL R9
  JUMP [+5]
  GETIMPORT R9 K90 [UDim.new]
  LOADN R10 0
  LOADN R11 16
  CALL R9 2 1
  SETTABLEKS R9 R8 K110 ["PaddingRight"]
  GETIMPORT R9 K90 [UDim.new]
  LOADN R10 0
  LOADN R11 10
  CALL R9 2 1
  SETTABLEKS R9 R8 K111 ["PaddingTop"]
  GETIMPORT R9 K90 [UDim.new]
  LOADN R10 0
  LOADN R11 10
  CALL R9 2 1
  SETTABLEKS R9 R8 K112 ["PaddingBottom"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K118 [".StartPage-DescPadding ::UIPadding"]
  DUPTABLE R9 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R10 K90 [UDim.new]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K109 ["PaddingLeft"]
  GETIMPORT R10 K90 [UDim.new]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K110 ["PaddingRight"]
  GETIMPORT R10 K90 [UDim.new]
  LOADN R11 0
  LOADN R12 12
  CALL R10 2 1
  SETTABLEKS R10 R9 K111 ["PaddingTop"]
  GETIMPORT R10 K90 [UDim.new]
  LOADN R11 0
  LOADN R12 12
  CALL R10 2 1
  SETTABLEKS R10 R9 K112 ["PaddingBottom"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K119 [".StartPage-SearchRowPadding ::UIPadding"]
  DUPTABLE R10 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R11 K90 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K109 ["PaddingLeft"]
  GETIMPORT R11 K90 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K110 ["PaddingRight"]
  GETIMPORT R11 K90 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K111 ["PaddingTop"]
  GETIMPORT R11 K90 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K112 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K120 [".StartPage-GamePagePadding ::UIPadding"]
  DUPTABLE R11 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R12 K90 [UDim.new]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K109 ["PaddingLeft"]
  GETIMPORT R12 K90 [UDim.new]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K110 ["PaddingRight"]
  GETIMPORT R12 K90 [UDim.new]
  LOADN R13 0
  LOADN R14 17
  CALL R12 2 1
  SETTABLEKS R12 R11 K111 ["PaddingTop"]
  GETIMPORT R12 K90 [UDim.new]
  LOADN R13 0
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K112 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K121 [".StartPage-LeftPadding32 ::UIPadding"]
  DUPTABLE R12 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R13 K90 [UDim.new]
  LOADN R14 0
  LOADN R15 32
  CALL R13 2 1
  SETTABLEKS R13 R12 K109 ["PaddingLeft"]
  GETIMPORT R13 K90 [UDim.new]
  LOADN R14 0
  LOADN R15 15
  CALL R13 2 1
  SETTABLEKS R13 R12 K110 ["PaddingRight"]
  GETIMPORT R13 K90 [UDim.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K111 ["PaddingTop"]
  GETIMPORT R13 K90 [UDim.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K112 ["PaddingBottom"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K122 [".StartPage-Padding32 ::UIPadding"]
  DUPTABLE R13 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K90 [UDim.new]
  LOADN R15 0
  LOADN R16 32
  CALL R14 2 1
  SETTABLEKS R14 R13 K109 ["PaddingLeft"]
  GETIMPORT R14 K90 [UDim.new]
  LOADN R15 0
  LOADN R16 32
  CALL R14 2 1
  SETTABLEKS R14 R13 K110 ["PaddingRight"]
  GETIMPORT R14 K90 [UDim.new]
  LOADN R15 0
  LOADN R16 32
  CALL R14 2 1
  SETTABLEKS R14 R13 K111 ["PaddingTop"]
  GETIMPORT R14 K90 [UDim.new]
  LOADN R15 0
  LOADN R16 32
  CALL R14 2 1
  SETTABLEKS R14 R13 K112 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K123 [".StartPage-ContextMenuPadding ::UIPadding"]
  DUPTABLE R14 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R15 K90 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K109 ["PaddingLeft"]
  GETIMPORT R15 K90 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K110 ["PaddingRight"]
  GETIMPORT R15 K90 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K111 ["PaddingTop"]
  GETIMPORT R15 K90 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K112 ["PaddingBottom"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K124 [".StartPage-ContextMenuRowPadding ::UIPadding"]
  DUPTABLE R15 K113 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R16 K90 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K109 ["PaddingLeft"]
  GETIMPORT R16 K90 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K110 ["PaddingRight"]
  GETIMPORT R16 K90 [UDim.new]
  LOADN R17 0
  LOADN R18 4
  CALL R16 2 1
  SETTABLEKS R16 R15 K111 ["PaddingTop"]
  GETIMPORT R16 K90 [UDim.new]
  LOADN R17 0
  LOADN R18 4
  CALL R16 2 1
  SETTABLEKS R16 R15 K112 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K125 [".StartPage-PadScrollingCarouselLeft ::UIPadding"]
  DUPTABLE R16 K126 [{"PaddingLeft"}]
  GETIMPORT R17 K90 [UDim.new]
  LOADN R18 0
  LOADN R19 2
  CALL R17 2 1
  SETTABLEKS R17 R16 K109 ["PaddingLeft"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K127 [".StartPage-Border ::UIStroke"]
  DUPTABLE R17 K129 [{"ApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R18 K106 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R18 R17 K101 ["ApplyStrokeMode"]
  LOADK R18 K130 ["$Border"]
  SETTABLEKS R18 R17 K102 ["Color"]
  LOADK R18 K131 [0.88]
  SETTABLEKS R18 R17 K128 ["Transparency"]
  LOADN R18 1
  SETTABLEKS R18 R17 K103 ["Thickness"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K132 [".StartPage-NoBorder"]
  DUPTABLE R18 K133 [{"BorderSizePixel"}]
  LOADN R19 0
  SETTABLEKS R19 R18 K93 ["BorderSizePixel"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K134 [".StartPage-BorderColor"]
  DUPTABLE R19 K135 [{"BackgroundColor3", "Transparency"}]
  LOADK R20 K130 ["$Border"]
  SETTABLEKS R20 R19 K15 ["BackgroundColor3"]
  LOADK R20 K131 [0.88]
  SETTABLEKS R20 R19 K128 ["Transparency"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K136 [".StartPage-StandardTextColor"]
  DUPTABLE R20 K35 [{"TextColor3"}]
  LOADK R21 K137 ["$Standard"]
  SETTABLEKS R21 R20 K34 ["TextColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K138 [".StartPage-StandardDarkTextColor"]
  DUPTABLE R21 K35 [{"TextColor3"}]
  LOADK R22 K139 ["$StandardDark"]
  SETTABLEKS R22 R21 K34 ["TextColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K140 [".StartPage-MutedTextColor"]
  DUPTABLE R22 K35 [{"TextColor3"}]
  LOADK R23 K141 ["$SemanticColorContentMuted"]
  SETTABLEKS R23 R22 K34 ["TextColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K142 [".StartPage-LinkTextColor"]
  DUPTABLE R23 K35 [{"TextColor3"}]
  LOADK R24 K143 ["$SemanticColorContentAction"]
  SETTABLEKS R24 R23 K34 ["TextColor3"]
  CALL R21 2 1
  SETLIST R5 R6 16 [33]
  MOVE R6 R2
  LOADK R7 K144 [".StartPage-Standard"]
  DUPTABLE R8 K26 [{"BackgroundColor3"}]
  LOADK R9 K137 ["$Standard"]
  SETTABLEKS R9 R8 K15 ["BackgroundColor3"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K145 [".StartPage-StandardDarkBackground"]
  DUPTABLE R9 K26 [{"BackgroundColor3"}]
  LOADK R10 K139 ["$StandardDark"]
  SETTABLEKS R10 R9 K15 ["BackgroundColor3"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K146 [".StartPage-TileBackground"]
  DUPTABLE R10 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R11 K147 ["$TileBackground"]
  SETTABLEKS R11 R10 K15 ["BackgroundColor3"]
  LOADN R11 0
  SETTABLEKS R11 R10 K16 ["BackgroundTransparency"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K148 [":hover :: UIStroke"]
  DUPTABLE R14 K150 [{"StrokeApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R15 K106 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R15 R14 K149 ["StrokeApplyStrokeMode"]
  LOADK R15 K130 ["$Border"]
  SETTABLEKS R15 R14 K102 ["Color"]
  LOADK R15 K131 [0.88]
  SETTABLEKS R15 R14 K128 ["Transparency"]
  LOADN R15 2
  SETTABLEKS R15 R14 K103 ["Thickness"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K151 [".StartPage-PillBackground"]
  DUPTABLE R11 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R12 K152 ["$PillBackground"]
  SETTABLEKS R12 R11 K15 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K16 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K153 [".StartPage-MenuItemSelectedBackground"]
  DUPTABLE R12 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R13 K154 ["$MenuItemSelectedBackground"]
  SETTABLEKS R13 R12 K15 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K16 ["BackgroundTransparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K155 [".StartPage-ShimmerBackground"]
  DUPTABLE R13 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R14 K156 ["$ShimmerBackground"]
  SETTABLEKS R14 R13 K15 ["BackgroundColor3"]
  LOADK R14 K157 ["$ShimmerBackgroundTransparency"]
  SETTABLEKS R14 R13 K16 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K158 [".StartPage-ShimmerForeground"]
  DUPTABLE R14 K26 [{"BackgroundColor3"}]
  LOADK R15 K159 ["$ShimmerForeground"]
  SETTABLEKS R15 R14 K15 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K160 [".StartPage-ShimmerGradient"]
  DUPTABLE R15 K161 [{"Transparency"}]
  LOADK R16 K162 ["$ShimmerGradientTransparency"]
  SETTABLEKS R16 R15 K128 ["Transparency"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K163 [".StartPage-NoExperiences"]
  DUPTABLE R16 K165 [{"Image", "Size"}]
  LOADK R17 K166 ["$NoExperiences"]
  SETTABLEKS R17 R16 K164 ["Image"]
  GETIMPORT R17 K168 [UDim2.new]
  LOADN R18 0
  LOADN R19 96
  LOADN R20 0
  LOADN R21 96
  CALL R17 4 1
  SETTABLEKS R17 R16 K72 ["Size"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K169 [".StartPage-RightIcon"]
  DUPTABLE R17 K165 [{"Image", "Size"}]
  LOADK R18 K170 ["$RightChevron"]
  SETTABLEKS R18 R17 K164 ["Image"]
  LOADK R18 K76 ["$IconSizeM"]
  SETTABLEKS R18 R17 K72 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K171 [".StartPage-HomeIcon"]
  DUPTABLE R18 K165 [{"Image", "Size"}]
  LOADK R19 K172 ["$Home"]
  SETTABLEKS R19 R18 K164 ["Image"]
  LOADK R19 K76 ["$IconSizeM"]
  SETTABLEKS R19 R18 K72 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K173 [".StartPage-PlusIcon"]
  DUPTABLE R19 K165 [{"Image", "Size"}]
  LOADK R20 K174 ["$Plus"]
  SETTABLEKS R20 R19 K164 ["Image"]
  GETIMPORT R20 K168 [UDim2.new]
  LOADN R21 0
  LOADN R22 16
  LOADN R23 0
  LOADN R24 16
  CALL R20 4 1
  SETTABLEKS R20 R19 K72 ["Size"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K175 [".StartPage-GridIcon"]
  DUPTABLE R20 K165 [{"Image", "Size"}]
  LOADK R21 K176 ["$Grid"]
  SETTABLEKS R21 R20 K164 ["Image"]
  GETIMPORT R21 K168 [UDim2.new]
  LOADN R22 0
  LOADN R23 24
  LOADN R24 0
  LOADN R25 24
  CALL R21 4 1
  SETTABLEKS R21 R20 K72 ["Size"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K177 [".StartPage-ListIcon"]
  DUPTABLE R21 K165 [{"Image", "Size"}]
  LOADK R22 K178 ["$List"]
  SETTABLEKS R22 R21 K164 ["Image"]
  GETIMPORT R22 K168 [UDim2.new]
  LOADN R23 0
  LOADN R24 24
  LOADN R25 0
  LOADN R26 24
  CALL R22 4 1
  SETTABLEKS R22 R21 K72 ["Size"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K179 [".StartPage-ExperiencesIcon"]
  DUPTABLE R22 K165 [{"Image", "Size"}]
  LOADK R23 K180 ["$Experiences"]
  SETTABLEKS R23 R22 K164 ["Image"]
  LOADK R23 K76 ["$IconSizeM"]
  SETTABLEKS R23 R22 K72 ["Size"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K181 [".StartPage-ArchiveIcon"]
  DUPTABLE R23 K165 [{"Image", "Size"}]
  LOADK R24 K182 ["$Archive"]
  SETTABLEKS R24 R23 K164 ["Image"]
  LOADK R24 K76 ["$IconSizeM"]
  SETTABLEKS R24 R23 K72 ["Size"]
  CALL R21 2 1
  SETLIST R5 R6 16 [49]
  MOVE R6 R2
  LOADK R7 K183 [".StartPage-TemplatesIcon"]
  DUPTABLE R8 K165 [{"Image", "Size"}]
  LOADK R9 K184 ["$Templates"]
  SETTABLEKS R9 R8 K164 ["Image"]
  LOADK R9 K76 ["$IconSizeM"]
  SETTABLEKS R9 R8 K72 ["Size"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K185 [".StartPage-SearchIcon"]
  DUPTABLE R9 K165 [{"Image", "Size"}]
  LOADK R10 K186 ["$Search"]
  SETTABLEKS R10 R9 K164 ["Image"]
  LOADK R10 K76 ["$IconSizeM"]
  SETTABLEKS R10 R9 K72 ["Size"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K187 [".StartPage-KebabIcon"]
  DUPTABLE R10 K165 [{"Image", "Size"}]
  LOADK R11 K188 ["$Kebab"]
  SETTABLEKS R11 R10 K164 ["Image"]
  LOADK R11 K189 ["$IconSizeL"]
  SETTABLEKS R11 R10 K72 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K190 [".StartPage-CancelIcon"]
  DUPTABLE R11 K165 [{"Image", "Size"}]
  LOADK R12 K191 ["$Cancel"]
  SETTABLEKS R12 R11 K164 ["Image"]
  LOADK R12 K192 ["$IconSizeS"]
  SETTABLEKS R12 R11 K72 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K193 [".StartPage-Chevron"]
  DUPTABLE R12 K194 [{"Image"}]
  LOADK R13 K195 ["$Chevron"]
  SETTABLEKS R13 R12 K164 ["Image"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K196 [".StartPage-TeamCreateOnlineBackground"]
  DUPTABLE R13 K26 [{"BackgroundColor3"}]
  LOADK R14 K197 ["$TeamCreatePresenceOnlineColor"]
  SETTABLEKS R14 R13 K15 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K198 [".StartPage-AdditionalTCCollaboratorBackground"]
  DUPTABLE R14 K26 [{"BackgroundColor3"}]
  LOADK R15 K107 ["$HoverBorder"]
  SETTABLEKS R15 R14 K15 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K199 [".StartPage-ColumnTutorialPopup"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K200 ["::UIListLayout"]
  DUPTABLE R19 K204 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K206 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K201 ["FillDirection"]
  GETIMPORT R20 K90 [UDim.new]
  LOADN R21 0
  LOADN R22 32
  CALL R20 2 1
  SETTABLEKS R20 R19 K202 ["Padding"]
  GETIMPORT R20 K208 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K203 ["SortOrder"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K209 [".StartPage-SearchResultRowColumn"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K200 ["::UIListLayout"]
  DUPTABLE R20 K204 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K206 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K201 ["FillDirection"]
  GETIMPORT R21 K90 [UDim.new]
  LOADN R22 0
  LOADN R23 6
  CALL R21 2 1
  SETTABLEKS R21 R20 K202 ["Padding"]
  GETIMPORT R21 K208 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K203 ["SortOrder"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K210 [".StartPage-HomePageColumn"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K200 ["::UIListLayout"]
  DUPTABLE R21 K204 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K206 [Enum.FillDirection.Vertical]
  SETTABLEKS R22 R21 K201 ["FillDirection"]
  GETIMPORT R22 K90 [UDim.new]
  LOADN R23 0
  LOADN R24 16
  CALL R22 2 1
  SETTABLEKS R22 R21 K202 ["Padding"]
  GETIMPORT R22 K208 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K203 ["SortOrder"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K211 [".StartPage-PopupTextboxColumn"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K200 ["::UIListLayout"]
  DUPTABLE R22 K204 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K206 [Enum.FillDirection.Vertical]
  SETTABLEKS R23 R22 K201 ["FillDirection"]
  GETIMPORT R23 K90 [UDim.new]
  LOADN R24 0
  LOADN R25 8
  CALL R23 2 1
  SETTABLEKS R23 R22 K202 ["Padding"]
  GETIMPORT R23 K208 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K203 ["SortOrder"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K212 [".StartPage-PopupTextBoxTextButtonColumn"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K200 ["::UIListLayout"]
  DUPTABLE R23 K204 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R24 K206 [Enum.FillDirection.Vertical]
  SETTABLEKS R24 R23 K201 ["FillDirection"]
  GETIMPORT R24 K90 [UDim.new]
  LOADN R25 0
  LOADN R26 16
  CALL R24 2 1
  SETTABLEKS R24 R23 K202 ["Padding"]
  GETIMPORT R24 K208 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K203 ["SortOrder"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R5 R6 -1 [65]
  DUPTABLE R6 K225 [{"IconSizeS", "IconSize", "IconSizeM", "IconSizeL", "CornerSize8", "CornerSize12", "CornerSize16", "CornerSize32", "TextSizeXS", "TextSize", "TextSizeM", "TextSizeL", "TeamCreatePresenceOnlineColor"}]
  GETIMPORT R7 K168 [UDim2.new]
  LOADN R8 0
  LOADN R9 12
  LOADN R10 0
  LOADN R11 12
  CALL R7 4 1
  SETTABLEKS R7 R6 K213 ["IconSizeS"]
  GETIMPORT R7 K168 [UDim2.new]
  LOADN R8 0
  LOADN R9 16
  LOADN R10 0
  LOADN R11 16
  CALL R7 4 1
  SETTABLEKS R7 R6 K214 ["IconSize"]
  GETIMPORT R7 K168 [UDim2.new]
  LOADN R8 0
  LOADN R9 24
  LOADN R10 0
  LOADN R11 24
  CALL R7 4 1
  SETTABLEKS R7 R6 K215 ["IconSizeM"]
  GETIMPORT R7 K168 [UDim2.new]
  LOADN R8 0
  LOADN R9 32
  LOADN R10 0
  LOADN R11 32
  CALL R7 4 1
  SETTABLEKS R7 R6 K216 ["IconSizeL"]
  GETIMPORT R7 K90 [UDim.new]
  LOADN R8 0
  LOADN R9 8
  CALL R7 2 1
  SETTABLEKS R7 R6 K217 ["CornerSize8"]
  GETIMPORT R7 K90 [UDim.new]
  LOADN R8 0
  LOADN R9 12
  CALL R7 2 1
  SETTABLEKS R7 R6 K218 ["CornerSize12"]
  GETIMPORT R7 K90 [UDim.new]
  LOADN R8 0
  LOADN R9 16
  CALL R7 2 1
  SETTABLEKS R7 R6 K219 ["CornerSize16"]
  GETIMPORT R7 K90 [UDim.new]
  LOADN R8 0
  LOADN R9 32
  CALL R7 2 1
  SETTABLEKS R7 R6 K220 ["CornerSize32"]
  LOADN R7 12
  SETTABLEKS R7 R6 K221 ["TextSizeXS"]
  LOADN R7 16
  SETTABLEKS R7 R6 K62 ["TextSize"]
  LOADN R7 24
  SETTABLEKS R7 R6 K222 ["TextSizeM"]
  LOADN R7 40
  SETTABLEKS R7 R6 K223 ["TextSizeL"]
  GETIMPORT R7 K44 [Color3.fromHex]
  LOADK R8 K226 ["#0fb369"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K224 ["TeamCreatePresenceOnlineColor"]
  MOVE R7 R3
  LOADK R8 K2 ["StartPage"]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
