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
  NEWTABLE R4 0 77
  MOVE R5 R2
  LOADK R6 K11 [".StartPage-Background"]
  DUPTABLE R7 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R8 K15 ["$Background"]
  SETTABLEKS R8 R7 K12 ["BackgroundColor3"]
  LOADN R8 0
  SETTABLEKS R8 R7 K13 ["BackgroundTransparency"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K16 [".StartPage-PageBackground"]
  DUPTABLE R8 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R9 K17 ["$PageBackground"]
  SETTABLEKS R9 R8 K12 ["BackgroundColor3"]
  LOADN R9 0
  SETTABLEKS R9 R8 K13 ["BackgroundTransparency"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K18 [".StartPage-MenuBackground"]
  DUPTABLE R9 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R10 K19 ["$MenuBackground"]
  SETTABLEKS R10 R9 K12 ["BackgroundColor3"]
  LOADN R10 0
  SETTABLEKS R10 R9 K13 ["BackgroundTransparency"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K20 [".StartPage-ContextMenuBackground"]
  DUPTABLE R10 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R11 K21 ["$ContextMenuBackground"]
  SETTABLEKS R11 R10 K12 ["BackgroundColor3"]
  LOADN R11 0
  SETTABLEKS R11 R10 K13 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K22 [".StartPage-Selected"]
  DUPTABLE R11 K23 [{"BackgroundColor3"}]
  LOADK R12 K24 ["$Selected"]
  SETTABLEKS R12 R11 K12 ["BackgroundColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K25 [".StartPage-Contrast"]
  DUPTABLE R12 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R13 K26 ["$Contrast"]
  SETTABLEKS R13 R12 K12 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K13 ["BackgroundTransparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K27 [".StartPage-NoBackground"]
  DUPTABLE R13 K28 [{"BackgroundTransparency"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K13 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K29 [".StartPage-NoTextStroke"]
  DUPTABLE R14 K31 [{"TextStrokeTransparency"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K30 ["TextStrokeTransparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K32 [".StartPage-TextColor"]
  DUPTABLE R15 K34 [{"TextColor3"}]
  LOADK R16 K35 ["$TextColor"]
  SETTABLEKS R16 R15 K33 ["TextColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K36 [".StartPage-ContrastTextColor"]
  DUPTABLE R16 K34 [{"TextColor3"}]
  LOADK R17 K37 ["$ContrastTextColor"]
  SETTABLEKS R17 R16 K33 ["TextColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K38 [".StartPage-DisabledTextColor"]
  DUPTABLE R17 K34 [{"TextColor3"}]
  LOADK R18 K39 ["$Disabled"]
  SETTABLEKS R18 R17 K33 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K40 [".StartPage-ButtonBackgroundColor"]
  DUPTABLE R18 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R19 K43 [Color3.fromHex]
  LOADK R20 K44 ["#3C64FA"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K12 ["BackgroundColor3"]
  LOADN R19 0
  SETTABLEKS R19 R18 K13 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K45 [".StartPage-Font"]
  DUPTABLE R19 K48 [{"Font", "LineHeight"}]
  GETIMPORT R20 K51 [Enum.Font.BuilderSans]
  SETTABLEKS R20 R19 K46 ["Font"]
  LOADK R20 K52 [1.142]
  SETTABLEKS R20 R19 K47 ["LineHeight"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K53 [".StartPage-FontBold"]
  DUPTABLE R20 K48 [{"Font", "LineHeight"}]
  GETIMPORT R21 K55 [Enum.Font.BuilderSansBold]
  SETTABLEKS R21 R20 K46 ["Font"]
  LOADK R21 K56 [1.6]
  SETTABLEKS R21 R20 K47 ["LineHeight"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K57 [".StartPage-FontExtraBold"]
  DUPTABLE R21 K48 [{"Font", "LineHeight"}]
  GETIMPORT R22 K59 [Enum.Font.BuilderSansExtraBold]
  SETTABLEKS R22 R21 K46 ["Font"]
  LOADK R22 K56 [1.6]
  SETTABLEKS R22 R21 K47 ["LineHeight"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K60 [".StartPage-TextSizeXS"]
  DUPTABLE R22 K62 [{"TextSize"}]
  LOADK R23 K63 ["$TextSizeXS"]
  SETTABLEKS R23 R22 K61 ["TextSize"]
  CALL R20 2 1
  SETLIST R4 R5 16 [1]
  MOVE R5 R2
  LOADK R6 K64 [".StartPage-TextSize"]
  DUPTABLE R7 K62 [{"TextSize"}]
  LOADK R8 K65 ["$TextSize"]
  SETTABLEKS R8 R7 K61 ["TextSize"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K66 [".StartPage-TextSizeM"]
  DUPTABLE R8 K62 [{"TextSize"}]
  LOADK R9 K67 ["$TextSizeM"]
  SETTABLEKS R9 R8 K61 ["TextSize"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K68 [".StartPage-TextSizeL"]
  DUPTABLE R9 K62 [{"TextSize"}]
  LOADK R10 K69 ["$TextSizeL"]
  SETTABLEKS R10 R9 K61 ["TextSize"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K70 [".StartPage-IconSize"]
  DUPTABLE R10 K72 [{"Size"}]
  LOADK R11 K73 ["$IconSize"]
  SETTABLEKS R11 R10 K71 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K74 [".StartPage-IconSizeM"]
  DUPTABLE R11 K72 [{"Size"}]
  LOADK R12 K75 ["$IconSizeM"]
  SETTABLEKS R12 R11 K71 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K76 [".StartPage-RoundedCorner8 ::UICorner"]
  DUPTABLE R12 K78 [{"CornerRadius"}]
  LOADK R13 K79 ["$CornerSize8"]
  SETTABLEKS R13 R12 K77 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K80 [".StartPage-RoundedCorner12 ::UICorner"]
  DUPTABLE R13 K78 [{"CornerRadius"}]
  LOADK R14 K81 ["$CornerSize12"]
  SETTABLEKS R14 R13 K77 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K82 [".StartPage-RoundedCorner16 ::UICorner"]
  DUPTABLE R14 K78 [{"CornerRadius"}]
  LOADK R15 K83 ["$CornerSize16"]
  SETTABLEKS R15 R14 K77 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K84 [".StartPage-RoundedCorner32 ::UICorner"]
  DUPTABLE R15 K78 [{"CornerRadius"}]
  LOADK R16 K85 ["$CornerSize32"]
  SETTABLEKS R16 R15 K77 ["CornerRadius"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K86 [".StartPage-Circular ::UICorner"]
  DUPTABLE R16 K78 [{"CornerRadius"}]
  GETIMPORT R17 K89 [UDim.new]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K77 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K90 [".StartPage-SearchBar"]
  DUPTABLE R17 K93 [{"TextXAlignment", "Font", "BorderSizePixel", "BackgroundColor3"}]
  GETIMPORT R18 K95 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K91 ["TextXAlignment"]
  GETIMPORT R18 K51 [Enum.Font.BuilderSans]
  SETTABLEKS R18 R17 K46 ["Font"]
  LOADN R18 0
  SETTABLEKS R18 R17 K92 ["BorderSizePixel"]
  LOADK R18 K17 ["$PageBackground"]
  SETTABLEKS R18 R17 K12 ["BackgroundColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K96 [".StartPage-Highlight"]
  DUPTABLE R18 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R19 K43 [Color3.fromHex]
  LOADK R20 K97 ["#BBBCBE"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K12 ["BackgroundColor3"]
  LOADK R19 K98 [0.92]
  SETTABLEKS R19 R18 K13 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K99 [".StartPage-TileBorder ::UIStroke"]
  DUPTABLE R19 K103 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R20 K105 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R20 R19 K100 ["ApplyStrokeMode"]
  LOADK R20 K106 ["$HoverBorder"]
  SETTABLEKS R20 R19 K101 ["Color"]
  LOADN R20 1
  SETTABLEKS R20 R19 K102 ["Thickness"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K107 [".StartPage-PillPaddingS ::UIPadding"]
  DUPTABLE R20 K112 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R21 K89 [UDim.new]
  LOADN R22 0
  LOADN R23 10
  CALL R21 2 1
  SETTABLEKS R21 R20 K108 ["PaddingLeft"]
  GETIMPORT R21 K89 [UDim.new]
  LOADN R22 0
  LOADN R23 10
  CALL R21 2 1
  SETTABLEKS R21 R20 K109 ["PaddingRight"]
  GETIMPORT R21 K89 [UDim.new]
  LOADN R22 0
  LOADN R23 4
  CALL R21 2 1
  SETTABLEKS R21 R20 K110 ["PaddingTop"]
  GETIMPORT R21 K89 [UDim.new]
  LOADN R22 0
  LOADN R23 4
  CALL R21 2 1
  SETTABLEKS R21 R20 K111 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K113 [".StartPage-PillPadding ::UIPadding"]
  DUPTABLE R21 K112 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R22 K89 [UDim.new]
  LOADN R23 0
  LOADN R24 12
  CALL R22 2 1
  SETTABLEKS R22 R21 K108 ["PaddingLeft"]
  GETIMPORT R22 K89 [UDim.new]
  LOADN R23 0
  LOADN R24 12
  CALL R22 2 1
  SETTABLEKS R22 R21 K109 ["PaddingRight"]
  GETIMPORT R22 K89 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K110 ["PaddingTop"]
  GETIMPORT R22 K89 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K111 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K114 [".StartPage-ButtonPadding ::UIPadding"]
  DUPTABLE R22 K112 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R23 K89 [UDim.new]
  LOADN R24 0
  LOADN R25 20
  CALL R23 2 1
  SETTABLEKS R23 R22 K108 ["PaddingLeft"]
  GETIMPORT R23 K89 [UDim.new]
  LOADN R24 0
  LOADN R25 20
  CALL R23 2 1
  SETTABLEKS R23 R22 K109 ["PaddingRight"]
  GETIMPORT R23 K89 [UDim.new]
  LOADN R24 0
  LOADN R25 12
  CALL R23 2 1
  SETTABLEKS R23 R22 K110 ["PaddingTop"]
  GETIMPORT R23 K89 [UDim.new]
  LOADN R24 0
  LOADN R25 12
  CALL R23 2 1
  SETTABLEKS R23 R22 K111 ["PaddingBottom"]
  CALL R20 2 1
  SETLIST R4 R5 16 [17]
  MOVE R5 R2
  LOADK R6 K115 [".StartPage-TilePadding ::UIPadding"]
  DUPTABLE R7 K112 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R8 K89 [UDim.new]
  LOADN R9 0
  LOADN R10 12
  CALL R8 2 1
  SETTABLEKS R8 R7 K108 ["PaddingLeft"]
  GETIMPORT R8 K89 [UDim.new]
  LOADN R9 0
  LOADN R10 12
  CALL R8 2 1
  SETTABLEKS R8 R7 K109 ["PaddingRight"]
  GETIMPORT R8 K89 [UDim.new]
  LOADN R9 0
  LOADN R10 12
  CALL R8 2 1
  SETTABLEKS R8 R7 K110 ["PaddingTop"]
  GETIMPORT R8 K89 [UDim.new]
  LOADN R9 0
  LOADN R10 12
  CALL R8 2 1
  SETTABLEKS R8 R7 K111 ["PaddingBottom"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K116 [".StartPage-TablePadding ::UIPadding"]
  DUPTABLE R8 K112 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R9 K89 [UDim.new]
  LOADN R10 0
  LOADN R11 16
  CALL R9 2 1
  SETTABLEKS R9 R8 K108 ["PaddingLeft"]
  GETIMPORT R9 K89 [UDim.new]
  LOADN R10 0
  LOADN R11 16
  CALL R9 2 1
  SETTABLEKS R9 R8 K109 ["PaddingRight"]
  GETIMPORT R9 K89 [UDim.new]
  LOADN R10 0
  LOADN R11 10
  CALL R9 2 1
  SETTABLEKS R9 R8 K110 ["PaddingTop"]
  GETIMPORT R9 K89 [UDim.new]
  LOADN R10 0
  LOADN R11 10
  CALL R9 2 1
  SETTABLEKS R9 R8 K111 ["PaddingBottom"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K117 [".StartPage-DescPadding ::UIPadding"]
  DUPTABLE R9 K112 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R10 K89 [UDim.new]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K108 ["PaddingLeft"]
  GETIMPORT R10 K89 [UDim.new]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K109 ["PaddingRight"]
  GETIMPORT R10 K89 [UDim.new]
  LOADN R11 0
  LOADN R12 12
  CALL R10 2 1
  SETTABLEKS R10 R9 K110 ["PaddingTop"]
  GETIMPORT R10 K89 [UDim.new]
  LOADN R11 0
  LOADN R12 12
  CALL R10 2 1
  SETTABLEKS R10 R9 K111 ["PaddingBottom"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K118 [".StartPage-SearchRowPadding ::UIPadding"]
  DUPTABLE R10 K112 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R11 K89 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K108 ["PaddingLeft"]
  GETIMPORT R11 K89 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K109 ["PaddingRight"]
  GETIMPORT R11 K89 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K110 ["PaddingTop"]
  GETIMPORT R11 K89 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K111 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K119 [".StartPage-GamePagePadding ::UIPadding"]
  DUPTABLE R11 K112 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R12 K89 [UDim.new]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K108 ["PaddingLeft"]
  GETIMPORT R12 K89 [UDim.new]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K109 ["PaddingRight"]
  GETIMPORT R12 K89 [UDim.new]
  LOADN R13 0
  LOADN R14 17
  CALL R12 2 1
  SETTABLEKS R12 R11 K110 ["PaddingTop"]
  GETIMPORT R12 K89 [UDim.new]
  LOADN R13 0
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K111 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K120 [".StartPage-LeftPadding32 ::UIPadding"]
  DUPTABLE R12 K112 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R13 K89 [UDim.new]
  LOADN R14 0
  LOADN R15 32
  CALL R13 2 1
  SETTABLEKS R13 R12 K108 ["PaddingLeft"]
  GETIMPORT R13 K89 [UDim.new]
  LOADN R14 0
  LOADN R15 15
  CALL R13 2 1
  SETTABLEKS R13 R12 K109 ["PaddingRight"]
  GETIMPORT R13 K89 [UDim.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K110 ["PaddingTop"]
  GETIMPORT R13 K89 [UDim.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K111 ["PaddingBottom"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K121 [".StartPage-Padding32 ::UIPadding"]
  DUPTABLE R13 K112 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K89 [UDim.new]
  LOADN R15 0
  LOADN R16 32
  CALL R14 2 1
  SETTABLEKS R14 R13 K108 ["PaddingLeft"]
  GETIMPORT R14 K89 [UDim.new]
  LOADN R15 0
  LOADN R16 32
  CALL R14 2 1
  SETTABLEKS R14 R13 K109 ["PaddingRight"]
  GETIMPORT R14 K89 [UDim.new]
  LOADN R15 0
  LOADN R16 32
  CALL R14 2 1
  SETTABLEKS R14 R13 K110 ["PaddingTop"]
  GETIMPORT R14 K89 [UDim.new]
  LOADN R15 0
  LOADN R16 32
  CALL R14 2 1
  SETTABLEKS R14 R13 K111 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K122 [".StartPage-ContextMenuPadding ::UIPadding"]
  DUPTABLE R14 K112 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R15 K89 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K108 ["PaddingLeft"]
  GETIMPORT R15 K89 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K109 ["PaddingRight"]
  GETIMPORT R15 K89 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K110 ["PaddingTop"]
  GETIMPORT R15 K89 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K111 ["PaddingBottom"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K123 [".StartPage-ContextMenuRowPadding ::UIPadding"]
  DUPTABLE R15 K112 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R16 K89 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K108 ["PaddingLeft"]
  GETIMPORT R16 K89 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K109 ["PaddingRight"]
  GETIMPORT R16 K89 [UDim.new]
  LOADN R17 0
  LOADN R18 4
  CALL R16 2 1
  SETTABLEKS R16 R15 K110 ["PaddingTop"]
  GETIMPORT R16 K89 [UDim.new]
  LOADN R17 0
  LOADN R18 4
  CALL R16 2 1
  SETTABLEKS R16 R15 K111 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K124 [".StartPage-PadScrollingCarouselLeft ::UIPadding"]
  DUPTABLE R16 K125 [{"PaddingLeft"}]
  GETIMPORT R17 K89 [UDim.new]
  LOADN R18 0
  LOADN R19 2
  CALL R17 2 1
  SETTABLEKS R17 R16 K108 ["PaddingLeft"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K126 [".StartPage-Border ::UIStroke"]
  DUPTABLE R17 K128 [{"ApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R18 K105 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R18 R17 K100 ["ApplyStrokeMode"]
  LOADK R18 K129 ["$Border"]
  SETTABLEKS R18 R17 K101 ["Color"]
  LOADK R18 K130 [0.88]
  SETTABLEKS R18 R17 K127 ["Transparency"]
  LOADN R18 1
  SETTABLEKS R18 R17 K102 ["Thickness"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K131 [".StartPage-NoBorder"]
  DUPTABLE R18 K132 [{"BorderSizePixel"}]
  LOADN R19 0
  SETTABLEKS R19 R18 K92 ["BorderSizePixel"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K133 [".StartPage-BorderColor"]
  DUPTABLE R19 K134 [{"BackgroundColor3", "Transparency"}]
  LOADK R20 K129 ["$Border"]
  SETTABLEKS R20 R19 K12 ["BackgroundColor3"]
  LOADK R20 K130 [0.88]
  SETTABLEKS R20 R19 K127 ["Transparency"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K135 [".StartPage-StandardTextColor"]
  DUPTABLE R20 K34 [{"TextColor3"}]
  LOADK R21 K136 ["$Standard"]
  SETTABLEKS R21 R20 K33 ["TextColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K137 [".StartPage-StandardDarkTextColor"]
  DUPTABLE R21 K34 [{"TextColor3"}]
  LOADK R22 K138 ["$StandardDark"]
  SETTABLEKS R22 R21 K33 ["TextColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K139 [".StartPage-MutedTextColor"]
  DUPTABLE R22 K34 [{"TextColor3"}]
  LOADK R23 K140 ["$SemanticColorContentMuted"]
  SETTABLEKS R23 R22 K33 ["TextColor3"]
  CALL R20 2 1
  SETLIST R4 R5 16 [33]
  MOVE R5 R2
  LOADK R6 K141 [".StartPage-LinkTextColor"]
  DUPTABLE R7 K34 [{"TextColor3"}]
  LOADK R8 K142 ["$SemanticColorContentAction"]
  SETTABLEKS R8 R7 K33 ["TextColor3"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K143 [".StartPage-Standard"]
  DUPTABLE R8 K23 [{"BackgroundColor3"}]
  LOADK R9 K136 ["$Standard"]
  SETTABLEKS R9 R8 K12 ["BackgroundColor3"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K144 [".StartPage-StandardDarkBackground"]
  DUPTABLE R9 K23 [{"BackgroundColor3"}]
  LOADK R10 K138 ["$StandardDark"]
  SETTABLEKS R10 R9 K12 ["BackgroundColor3"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K145 [".StartPage-TileBackground"]
  DUPTABLE R10 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R11 K146 ["$TileBackground"]
  SETTABLEKS R11 R10 K12 ["BackgroundColor3"]
  LOADN R11 0
  SETTABLEKS R11 R10 K13 ["BackgroundTransparency"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K147 [":hover :: UIStroke"]
  DUPTABLE R14 K149 [{"StrokeApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R15 K105 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R15 R14 K148 ["StrokeApplyStrokeMode"]
  LOADK R15 K129 ["$Border"]
  SETTABLEKS R15 R14 K101 ["Color"]
  LOADK R15 K130 [0.88]
  SETTABLEKS R15 R14 K127 ["Transparency"]
  LOADN R15 2
  SETTABLEKS R15 R14 K102 ["Thickness"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K150 [".StartPage-PillBackground"]
  DUPTABLE R11 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R12 K151 ["$PillBackground"]
  SETTABLEKS R12 R11 K12 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K13 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K152 [".StartPage-MenuItemSelectedBackground"]
  DUPTABLE R12 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R13 K153 ["$MenuItemSelectedBackground"]
  SETTABLEKS R13 R12 K12 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K13 ["BackgroundTransparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K154 [".StartPage-ShimmerBackground"]
  DUPTABLE R13 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R14 K155 ["$ShimmerBackground"]
  SETTABLEKS R14 R13 K12 ["BackgroundColor3"]
  LOADK R14 K156 ["$ShimmerBackgroundTransparency"]
  SETTABLEKS R14 R13 K13 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K157 [".StartPage-ShimmerForeground"]
  DUPTABLE R14 K23 [{"BackgroundColor3"}]
  LOADK R15 K158 ["$ShimmerForeground"]
  SETTABLEKS R15 R14 K12 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K159 [".StartPage-ShimmerGradient"]
  DUPTABLE R15 K160 [{"Transparency"}]
  LOADK R16 K161 ["$ShimmerGradientTransparency"]
  SETTABLEKS R16 R15 K127 ["Transparency"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K162 [".StartPage-NoExperiences"]
  DUPTABLE R16 K164 [{"Image", "Size"}]
  LOADK R17 K165 ["$NoExperiences"]
  SETTABLEKS R17 R16 K163 ["Image"]
  GETIMPORT R17 K167 [UDim2.new]
  LOADN R18 0
  LOADN R19 96
  LOADN R20 0
  LOADN R21 96
  CALL R17 4 1
  SETTABLEKS R17 R16 K71 ["Size"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K168 [".StartPage-RightIcon"]
  DUPTABLE R17 K164 [{"Image", "Size"}]
  LOADK R18 K169 ["$RightChevron"]
  SETTABLEKS R18 R17 K163 ["Image"]
  LOADK R18 K75 ["$IconSizeM"]
  SETTABLEKS R18 R17 K71 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K170 [".StartPage-HomeIcon"]
  DUPTABLE R18 K164 [{"Image", "Size"}]
  LOADK R19 K171 ["$Home"]
  SETTABLEKS R19 R18 K163 ["Image"]
  LOADK R19 K75 ["$IconSizeM"]
  SETTABLEKS R19 R18 K71 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K172 [".StartPage-PlusIcon"]
  DUPTABLE R19 K164 [{"Image", "Size"}]
  LOADK R20 K173 ["$Plus"]
  SETTABLEKS R20 R19 K163 ["Image"]
  GETIMPORT R20 K167 [UDim2.new]
  LOADN R21 0
  LOADN R22 16
  LOADN R23 0
  LOADN R24 16
  CALL R20 4 1
  SETTABLEKS R20 R19 K71 ["Size"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K174 [".StartPage-GridIcon"]
  DUPTABLE R20 K164 [{"Image", "Size"}]
  LOADK R21 K175 ["$Grid"]
  SETTABLEKS R21 R20 K163 ["Image"]
  GETIMPORT R21 K167 [UDim2.new]
  LOADN R22 0
  LOADN R23 24
  LOADN R24 0
  LOADN R25 24
  CALL R21 4 1
  SETTABLEKS R21 R20 K71 ["Size"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K176 [".StartPage-ListIcon"]
  DUPTABLE R21 K164 [{"Image", "Size"}]
  LOADK R22 K177 ["$List"]
  SETTABLEKS R22 R21 K163 ["Image"]
  GETIMPORT R22 K167 [UDim2.new]
  LOADN R23 0
  LOADN R24 24
  LOADN R25 0
  LOADN R26 24
  CALL R22 4 1
  SETTABLEKS R22 R21 K71 ["Size"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K178 [".StartPage-ExperiencesIcon"]
  DUPTABLE R22 K164 [{"Image", "Size"}]
  LOADK R23 K179 ["$Experiences"]
  SETTABLEKS R23 R22 K163 ["Image"]
  LOADK R23 K75 ["$IconSizeM"]
  SETTABLEKS R23 R22 K71 ["Size"]
  CALL R20 2 1
  SETLIST R4 R5 16 [49]
  MOVE R5 R2
  LOADK R6 K180 [".StartPage-ArchiveIcon"]
  DUPTABLE R7 K164 [{"Image", "Size"}]
  LOADK R8 K181 ["$Archive"]
  SETTABLEKS R8 R7 K163 ["Image"]
  LOADK R8 K75 ["$IconSizeM"]
  SETTABLEKS R8 R7 K71 ["Size"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K182 [".StartPage-TemplatesIcon"]
  DUPTABLE R8 K164 [{"Image", "Size"}]
  LOADK R9 K183 ["$Templates"]
  SETTABLEKS R9 R8 K163 ["Image"]
  LOADK R9 K75 ["$IconSizeM"]
  SETTABLEKS R9 R8 K71 ["Size"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K184 [".StartPage-SearchIcon"]
  DUPTABLE R9 K164 [{"Image", "Size"}]
  LOADK R10 K185 ["$Search"]
  SETTABLEKS R10 R9 K163 ["Image"]
  LOADK R10 K75 ["$IconSizeM"]
  SETTABLEKS R10 R9 K71 ["Size"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K186 [".StartPage-KebabIcon"]
  DUPTABLE R10 K164 [{"Image", "Size"}]
  LOADK R11 K187 ["$Kebab"]
  SETTABLEKS R11 R10 K163 ["Image"]
  LOADK R11 K188 ["$IconSizeL"]
  SETTABLEKS R11 R10 K71 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K189 [".StartPage-CancelIcon"]
  DUPTABLE R11 K164 [{"Image", "Size"}]
  LOADK R12 K190 ["$Cancel"]
  SETTABLEKS R12 R11 K163 ["Image"]
  LOADK R12 K191 ["$IconSizeS"]
  SETTABLEKS R12 R11 K71 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K192 [".StartPage-Chevron"]
  DUPTABLE R12 K193 [{"Image"}]
  LOADK R13 K194 ["$Chevron"]
  SETTABLEKS R13 R12 K163 ["Image"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K195 [".StartPage-TeamCreateOnlineBackground"]
  DUPTABLE R13 K23 [{"BackgroundColor3"}]
  LOADK R14 K196 ["$TeamCreatePresenceOnlineColor"]
  SETTABLEKS R14 R13 K12 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K197 [".StartPage-AdditionalTCCollaboratorBackground"]
  DUPTABLE R14 K23 [{"BackgroundColor3"}]
  LOADK R15 K106 ["$HoverBorder"]
  SETTABLEKS R15 R14 K12 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K198 [".StartPage-ColumnTutorialPopup"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K199 ["::UIListLayout"]
  DUPTABLE R19 K203 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K205 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K200 ["FillDirection"]
  GETIMPORT R20 K89 [UDim.new]
  LOADN R21 0
  LOADN R22 32
  CALL R20 2 1
  SETTABLEKS R20 R19 K201 ["Padding"]
  GETIMPORT R20 K207 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K202 ["SortOrder"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K208 [".StartPage-SearchResultRowColumn"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K199 ["::UIListLayout"]
  DUPTABLE R20 K203 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K205 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K200 ["FillDirection"]
  GETIMPORT R21 K89 [UDim.new]
  LOADN R22 0
  LOADN R23 6
  CALL R21 2 1
  SETTABLEKS R21 R20 K201 ["Padding"]
  GETIMPORT R21 K207 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K202 ["SortOrder"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K209 [".StartPage-HomePageColumn"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K199 ["::UIListLayout"]
  DUPTABLE R21 K203 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K205 [Enum.FillDirection.Vertical]
  SETTABLEKS R22 R21 K200 ["FillDirection"]
  GETIMPORT R22 K89 [UDim.new]
  LOADN R23 0
  LOADN R24 16
  CALL R22 2 1
  SETTABLEKS R22 R21 K201 ["Padding"]
  GETIMPORT R22 K207 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K202 ["SortOrder"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K210 [".StartPage-PopupTextboxColumn"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K199 ["::UIListLayout"]
  DUPTABLE R22 K203 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K205 [Enum.FillDirection.Vertical]
  SETTABLEKS R23 R22 K200 ["FillDirection"]
  GETIMPORT R23 K89 [UDim.new]
  LOADN R24 0
  LOADN R25 8
  CALL R23 2 1
  SETTABLEKS R23 R22 K201 ["Padding"]
  GETIMPORT R23 K207 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K202 ["SortOrder"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K211 [".StartPage-PopupTextBoxTextButtonColumn"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K199 ["::UIListLayout"]
  DUPTABLE R23 K203 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R24 K205 [Enum.FillDirection.Vertical]
  SETTABLEKS R24 R23 K200 ["FillDirection"]
  GETIMPORT R24 K89 [UDim.new]
  LOADN R25 0
  LOADN R26 16
  CALL R24 2 1
  SETTABLEKS R24 R23 K201 ["Padding"]
  GETIMPORT R24 K207 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K202 ["SortOrder"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R4 R5 -1 [65]
  DUPTABLE R5 K224 [{"IconSizeS", "IconSize", "IconSizeM", "IconSizeL", "CornerSize8", "CornerSize12", "CornerSize16", "CornerSize32", "TextSizeXS", "TextSize", "TextSizeM", "TextSizeL", "TeamCreatePresenceOnlineColor"}]
  GETIMPORT R6 K167 [UDim2.new]
  LOADN R7 0
  LOADN R8 12
  LOADN R9 0
  LOADN R10 12
  CALL R6 4 1
  SETTABLEKS R6 R5 K212 ["IconSizeS"]
  GETIMPORT R6 K167 [UDim2.new]
  LOADN R7 0
  LOADN R8 16
  LOADN R9 0
  LOADN R10 16
  CALL R6 4 1
  SETTABLEKS R6 R5 K213 ["IconSize"]
  GETIMPORT R6 K167 [UDim2.new]
  LOADN R7 0
  LOADN R8 24
  LOADN R9 0
  LOADN R10 24
  CALL R6 4 1
  SETTABLEKS R6 R5 K214 ["IconSizeM"]
  GETIMPORT R6 K167 [UDim2.new]
  LOADN R7 0
  LOADN R8 32
  LOADN R9 0
  LOADN R10 32
  CALL R6 4 1
  SETTABLEKS R6 R5 K215 ["IconSizeL"]
  GETIMPORT R6 K89 [UDim.new]
  LOADN R7 0
  LOADN R8 8
  CALL R6 2 1
  SETTABLEKS R6 R5 K216 ["CornerSize8"]
  GETIMPORT R6 K89 [UDim.new]
  LOADN R7 0
  LOADN R8 12
  CALL R6 2 1
  SETTABLEKS R6 R5 K217 ["CornerSize12"]
  GETIMPORT R6 K89 [UDim.new]
  LOADN R7 0
  LOADN R8 16
  CALL R6 2 1
  SETTABLEKS R6 R5 K218 ["CornerSize16"]
  GETIMPORT R6 K89 [UDim.new]
  LOADN R7 0
  LOADN R8 32
  CALL R6 2 1
  SETTABLEKS R6 R5 K219 ["CornerSize32"]
  LOADN R6 12
  SETTABLEKS R6 R5 K220 ["TextSizeXS"]
  LOADN R6 16
  SETTABLEKS R6 R5 K61 ["TextSize"]
  LOADN R6 24
  SETTABLEKS R6 R5 K221 ["TextSizeM"]
  LOADN R6 40
  SETTABLEKS R6 R5 K222 ["TextSizeL"]
  GETIMPORT R6 K43 [Color3.fromHex]
  LOADK R7 K225 ["#0fb369"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K223 ["TeamCreatePresenceOnlineColor"]
  MOVE R6 R3
  LOADK R7 K2 ["StartPage"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
