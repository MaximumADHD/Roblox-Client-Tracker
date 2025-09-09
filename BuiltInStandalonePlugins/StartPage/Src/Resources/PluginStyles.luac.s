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
  GETTABLEKS R5 R6 K13 ["getFFlagLuaStartPageStudioTestTemplates"]
  CALL R4 1 1
  CALL R4 0 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["SharedFlags"]
  GETTABLEKS R6 R7 K14 ["getFFlagLuaStartPageNotFoundImageUpdate"]
  CALL R5 1 1
  CALL R5 0 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K15 ["Util"]
  GETTABLEKS R8 R9 K16 ["Services"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K17 ["StudioService"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K11 ["Src"]
  GETTABLEKS R10 R11 K15 ["Util"]
  GETTABLEKS R9 R10 K16 ["Services"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K18 ["StudioUserService"]
  NEWTABLE R8 0 92
  MOVE R9 R2
  LOADK R10 K19 [".StartPage-Background"]
  DUPTABLE R11 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R12 K23 ["$Background"]
  SETTABLEKS R12 R11 K20 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K21 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K24 [".StartPage-PageBackground"]
  DUPTABLE R12 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R13 K25 ["$PageBackground"]
  SETTABLEKS R13 R12 K20 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K21 ["BackgroundTransparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K26 [".StartPage-MenuBackground"]
  DUPTABLE R13 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R14 K27 ["$MenuBackground"]
  SETTABLEKS R14 R13 K20 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K21 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K28 [".StartPage-ContextMenuBackground"]
  DUPTABLE R14 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R15 K29 ["$ContextMenuBackground"]
  SETTABLEKS R15 R14 K20 ["BackgroundColor3"]
  LOADN R15 0
  SETTABLEKS R15 R14 K21 ["BackgroundTransparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K30 [".StartPage-AlertBackground"]
  DUPTABLE R15 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R16 K31 ["$AlertColor"]
  SETTABLEKS R16 R15 K20 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K21 ["BackgroundTransparency"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K32 [".StartPage-AlertBadgeBackground"]
  DUPTABLE R16 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R17 K33 ["$AlertBadgeColor"]
  SETTABLEKS R17 R16 K20 ["BackgroundColor3"]
  LOADK R17 K34 [0.78]
  SETTABLEKS R17 R16 K21 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K35 [".StartPage-Selected"]
  DUPTABLE R17 K36 [{"BackgroundColor3"}]
  LOADK R18 K37 ["$Selected"]
  SETTABLEKS R18 R17 K20 ["BackgroundColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K38 [".StartPage-Contrast"]
  DUPTABLE R18 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K39 ["$Contrast"]
  SETTABLEKS R19 R18 K20 ["BackgroundColor3"]
  LOADN R19 0
  SETTABLEKS R19 R18 K21 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K40 [".StartPage-NoTextStroke"]
  DUPTABLE R19 K42 [{"TextStrokeTransparency"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K41 ["TextStrokeTransparency"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K43 [".StartPage-TextColor"]
  DUPTABLE R20 K45 [{"TextColor3"}]
  LOADK R21 K46 ["$TextColor"]
  SETTABLEKS R21 R20 K44 ["TextColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K47 [".StartPage-WhiteTextColor"]
  DUPTABLE R21 K45 [{"TextColor3"}]
  LOADK R22 K48 ["$WhiteColor"]
  SETTABLEKS R22 R21 K44 ["TextColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K49 [".StartPage-BlackTextColor"]
  DUPTABLE R22 K45 [{"TextColor3"}]
  LOADK R23 K50 ["$BlackColor"]
  SETTABLEKS R23 R22 K44 ["TextColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K51 [".StartPage-ContrastTextColor"]
  DUPTABLE R23 K45 [{"TextColor3"}]
  LOADK R24 K52 ["$ContrastTextColor"]
  SETTABLEKS R24 R23 K44 ["TextColor3"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K53 [".StartPage-DisabledTextColor"]
  DUPTABLE R24 K45 [{"TextColor3"}]
  LOADK R25 K54 ["$Disabled"]
  SETTABLEKS R25 R24 K44 ["TextColor3"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K55 [".StartPage-ButtonBackgroundColor"]
  DUPTABLE R25 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R26 K58 [Color3.fromHex]
  LOADK R27 K59 ["#3C64FA"]
  CALL R26 1 1
  SETTABLEKS R26 R25 K20 ["BackgroundColor3"]
  LOADN R26 0
  SETTABLEKS R26 R25 K21 ["BackgroundTransparency"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K60 [".StartPage-Font"]
  DUPTABLE R26 K63 [{"Font", "LineHeight"}]
  GETIMPORT R27 K66 [Enum.Font.BuilderSans]
  SETTABLEKS R27 R26 K61 ["Font"]
  LOADK R27 K67 [1.142]
  SETTABLEKS R27 R26 K62 ["LineHeight"]
  CALL R24 2 1
  SETLIST R8 R9 16 [1]
  MOVE R9 R2
  LOADK R10 K68 [".StartPage-FontBold"]
  DUPTABLE R11 K63 [{"Font", "LineHeight"}]
  GETIMPORT R12 K70 [Enum.Font.BuilderSansBold]
  SETTABLEKS R12 R11 K61 ["Font"]
  LOADK R12 K71 [1.6]
  SETTABLEKS R12 R11 K62 ["LineHeight"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K72 [".StartPage-FontExtraBold"]
  DUPTABLE R12 K63 [{"Font", "LineHeight"}]
  GETIMPORT R13 K74 [Enum.Font.BuilderSansExtraBold]
  SETTABLEKS R13 R12 K61 ["Font"]
  LOADK R13 K71 [1.6]
  SETTABLEKS R13 R12 K62 ["LineHeight"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K75 [".StartPage-TextSizeXS"]
  DUPTABLE R13 K77 [{"TextSize"}]
  LOADK R14 K78 ["$TextSizeXS"]
  SETTABLEKS R14 R13 K76 ["TextSize"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K79 [".StartPage-TextSize"]
  DUPTABLE R14 K77 [{"TextSize"}]
  LOADK R15 K80 ["$TextSize"]
  SETTABLEKS R15 R14 K76 ["TextSize"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K81 [".StartPage-TextSizeM"]
  DUPTABLE R15 K77 [{"TextSize"}]
  LOADK R16 K82 ["$TextSizeM"]
  SETTABLEKS R16 R15 K76 ["TextSize"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K83 [".StartPage-TextSizeL"]
  DUPTABLE R16 K77 [{"TextSize"}]
  LOADK R17 K84 ["$TextSizeL"]
  SETTABLEKS R17 R16 K76 ["TextSize"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K85 [".StartPage-IconSize"]
  DUPTABLE R17 K87 [{"Size"}]
  LOADK R18 K88 ["$IconSize"]
  SETTABLEKS R18 R17 K86 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K89 [".StartPage-IconSizeM"]
  DUPTABLE R18 K87 [{"Size"}]
  LOADK R19 K90 ["$IconSizeM"]
  SETTABLEKS R19 R18 K86 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K91 [".StartPage-RoundedCorner4 ::UICorner"]
  DUPTABLE R19 K93 [{"CornerRadius"}]
  LOADK R20 K94 ["$CornerSize4"]
  SETTABLEKS R20 R19 K92 ["CornerRadius"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K95 [".StartPage-RoundedCorner8 ::UICorner"]
  DUPTABLE R20 K93 [{"CornerRadius"}]
  LOADK R21 K96 ["$CornerSize8"]
  SETTABLEKS R21 R20 K92 ["CornerRadius"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K97 [".StartPage-RoundedCorner12 ::UICorner"]
  DUPTABLE R21 K93 [{"CornerRadius"}]
  LOADK R22 K98 ["$CornerSize12"]
  SETTABLEKS R22 R21 K92 ["CornerRadius"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K99 [".StartPage-RoundedCorner16 ::UICorner"]
  DUPTABLE R22 K93 [{"CornerRadius"}]
  LOADK R23 K100 ["$CornerSize16"]
  SETTABLEKS R23 R22 K92 ["CornerRadius"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K101 [".StartPage-RoundedCorner32 ::UICorner"]
  DUPTABLE R23 K93 [{"CornerRadius"}]
  LOADK R24 K102 ["$CornerSize32"]
  SETTABLEKS R24 R23 K92 ["CornerRadius"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K103 [".StartPage-Circular ::UICorner"]
  DUPTABLE R24 K93 [{"CornerRadius"}]
  GETIMPORT R25 K106 [UDim.new]
  LOADN R26 1
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K92 ["CornerRadius"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K107 [".StartPage-SearchBar"]
  DUPTABLE R25 K110 [{"TextXAlignment", "Font", "BorderSizePixel", "BackgroundColor3"}]
  GETIMPORT R26 K112 [Enum.TextXAlignment.Left]
  SETTABLEKS R26 R25 K108 ["TextXAlignment"]
  GETIMPORT R26 K66 [Enum.Font.BuilderSans]
  SETTABLEKS R26 R25 K61 ["Font"]
  LOADN R26 0
  SETTABLEKS R26 R25 K109 ["BorderSizePixel"]
  LOADK R26 K25 ["$PageBackground"]
  SETTABLEKS R26 R25 K20 ["BackgroundColor3"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K113 [".StartPage-Highlight"]
  DUPTABLE R26 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R27 K58 [Color3.fromHex]
  LOADK R28 K114 ["#BBBCBE"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K20 ["BackgroundColor3"]
  LOADK R27 K115 [0.92]
  SETTABLEKS R27 R26 K21 ["BackgroundTransparency"]
  CALL R24 2 1
  SETLIST R8 R9 16 [17]
  MOVE R9 R2
  LOADK R10 K116 [".StartPage-TileBorder ::UIStroke"]
  DUPTABLE R11 K120 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R12 K122 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R12 R11 K117 ["ApplyStrokeMode"]
  LOADK R12 K123 ["$HoverBorder"]
  SETTABLEKS R12 R11 K118 ["Color"]
  LOADN R12 1
  SETTABLEKS R12 R11 K119 ["Thickness"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K124 [".StartPage-ViewPolicy ::UIPadding"]
  DUPTABLE R12 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R13 K106 [UDim.new]
  LOADN R14 0
  LOADN R15 12
  CALL R13 2 1
  SETTABLEKS R13 R12 K125 ["PaddingLeft"]
  GETIMPORT R13 K106 [UDim.new]
  LOADN R14 0
  LOADN R15 12
  CALL R13 2 1
  SETTABLEKS R13 R12 K126 ["PaddingRight"]
  GETIMPORT R13 K106 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K127 ["PaddingTop"]
  GETIMPORT R13 K106 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K128 ["PaddingBottom"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K130 [".StartPage-PillPaddingS ::UIPadding"]
  DUPTABLE R13 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K106 [UDim.new]
  LOADN R15 0
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K125 ["PaddingLeft"]
  GETIMPORT R14 K106 [UDim.new]
  LOADN R15 0
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K126 ["PaddingRight"]
  GETIMPORT R14 K106 [UDim.new]
  LOADN R15 0
  LOADN R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K127 ["PaddingTop"]
  GETIMPORT R14 K106 [UDim.new]
  LOADN R15 0
  LOADN R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K128 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K131 [".StartPage-PillPadding ::UIPadding"]
  DUPTABLE R14 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R15 K106 [UDim.new]
  LOADN R16 0
  LOADN R17 12
  CALL R15 2 1
  SETTABLEKS R15 R14 K125 ["PaddingLeft"]
  GETIMPORT R15 K106 [UDim.new]
  LOADN R16 0
  LOADN R17 12
  CALL R15 2 1
  SETTABLEKS R15 R14 K126 ["PaddingRight"]
  GETIMPORT R15 K106 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K127 ["PaddingTop"]
  GETIMPORT R15 K106 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K128 ["PaddingBottom"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K132 [".StartPage-ButtonPadding ::UIPadding"]
  DUPTABLE R15 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R16 K106 [UDim.new]
  LOADN R17 0
  LOADN R18 20
  CALL R16 2 1
  SETTABLEKS R16 R15 K125 ["PaddingLeft"]
  GETIMPORT R16 K106 [UDim.new]
  LOADN R17 0
  LOADN R18 20
  CALL R16 2 1
  SETTABLEKS R16 R15 K126 ["PaddingRight"]
  GETIMPORT R16 K106 [UDim.new]
  LOADN R17 0
  LOADN R18 12
  CALL R16 2 1
  SETTABLEKS R16 R15 K127 ["PaddingTop"]
  GETIMPORT R16 K106 [UDim.new]
  LOADN R17 0
  LOADN R18 12
  CALL R16 2 1
  SETTABLEKS R16 R15 K128 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K133 [".StartPage-TilePadding ::UIPadding"]
  DUPTABLE R16 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R17 K106 [UDim.new]
  LOADN R18 0
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K125 ["PaddingLeft"]
  GETIMPORT R17 K106 [UDim.new]
  LOADN R18 0
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K126 ["PaddingRight"]
  GETIMPORT R17 K106 [UDim.new]
  LOADN R18 0
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K127 ["PaddingTop"]
  GETIMPORT R17 K106 [UDim.new]
  LOADN R18 0
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K128 ["PaddingBottom"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K134 [".StartPage-TablePadding ::UIPadding"]
  DUPTABLE R17 K135 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R18 K106 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K127 ["PaddingTop"]
  GETIMPORT R18 K106 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K128 ["PaddingBottom"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K136 [".StartPage-DescPadding ::UIPadding"]
  DUPTABLE R18 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R19 K106 [UDim.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K125 ["PaddingLeft"]
  GETIMPORT R19 K106 [UDim.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K126 ["PaddingRight"]
  GETIMPORT R19 K106 [UDim.new]
  LOADN R20 0
  LOADN R21 12
  CALL R19 2 1
  SETTABLEKS R19 R18 K127 ["PaddingTop"]
  GETIMPORT R19 K106 [UDim.new]
  LOADN R20 0
  LOADN R21 12
  CALL R19 2 1
  SETTABLEKS R19 R18 K128 ["PaddingBottom"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K137 [".StartPage-SearchRowPadding ::UIPadding"]
  DUPTABLE R19 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R20 K106 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K125 ["PaddingLeft"]
  GETIMPORT R20 K106 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K126 ["PaddingRight"]
  GETIMPORT R20 K106 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K127 ["PaddingTop"]
  GETIMPORT R20 K106 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K128 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K138 [".StartPage-GamePagePadding ::UIPadding"]
  DUPTABLE R20 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R21 K106 [UDim.new]
  LOADN R22 0
  LOADN R23 32
  CALL R21 2 1
  SETTABLEKS R21 R20 K125 ["PaddingLeft"]
  GETIMPORT R21 K106 [UDim.new]
  LOADN R22 0
  LOADN R23 32
  CALL R21 2 1
  SETTABLEKS R21 R20 K126 ["PaddingRight"]
  GETIMPORT R21 K106 [UDim.new]
  LOADN R22 0
  LOADN R23 17
  CALL R21 2 1
  SETTABLEKS R21 R20 K127 ["PaddingTop"]
  GETIMPORT R21 K106 [UDim.new]
  LOADN R22 0
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K128 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K139 [".StartPage-AlertPadding ::UIPadding"]
  DUPTABLE R21 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R22 K106 [UDim.new]
  LOADN R23 0
  LOADN R24 32
  CALL R22 2 1
  SETTABLEKS R22 R21 K125 ["PaddingLeft"]
  GETIMPORT R22 K106 [UDim.new]
  LOADN R23 0
  LOADN R24 15
  CALL R22 2 1
  SETTABLEKS R22 R21 K126 ["PaddingRight"]
  GETIMPORT R22 K106 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K127 ["PaddingTop"]
  GETIMPORT R22 K106 [UDim.new]
  LOADN R23 0
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K128 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K140 [".StartPage-LeftPadding32 ::UIPadding"]
  DUPTABLE R22 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R23 K106 [UDim.new]
  LOADN R24 0
  LOADN R25 32
  CALL R23 2 1
  SETTABLEKS R23 R22 K125 ["PaddingLeft"]
  GETIMPORT R23 K106 [UDim.new]
  LOADN R24 0
  LOADN R25 15
  CALL R23 2 1
  SETTABLEKS R23 R22 K126 ["PaddingRight"]
  GETIMPORT R23 K106 [UDim.new]
  LOADN R24 0
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K127 ["PaddingTop"]
  GETIMPORT R23 K106 [UDim.new]
  LOADN R24 0
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K128 ["PaddingBottom"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K141 [".StartPage-PaddingX8 ::UIPadding"]
  DUPTABLE R23 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R24 K106 [UDim.new]
  LOADN R25 0
  LOADN R26 8
  CALL R24 2 1
  SETTABLEKS R24 R23 K125 ["PaddingLeft"]
  GETIMPORT R24 K106 [UDim.new]
  LOADN R25 0
  LOADN R26 8
  CALL R24 2 1
  SETTABLEKS R24 R23 K126 ["PaddingRight"]
  GETIMPORT R24 K106 [UDim.new]
  LOADN R25 0
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K127 ["PaddingTop"]
  GETIMPORT R24 K106 [UDim.new]
  LOADN R25 0
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K128 ["PaddingBottom"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K142 [".StartPage-PaddingY8 ::UIPadding"]
  DUPTABLE R24 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R25 K106 [UDim.new]
  LOADN R26 0
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K125 ["PaddingLeft"]
  GETIMPORT R25 K106 [UDim.new]
  LOADN R26 0
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K126 ["PaddingRight"]
  GETIMPORT R25 K106 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K127 ["PaddingTop"]
  GETIMPORT R25 K106 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K128 ["PaddingBottom"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K143 [".StartPage-Padding16 ::UIPadding"]
  DUPTABLE R25 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R26 K106 [UDim.new]
  LOADN R27 0
  LOADN R28 16
  CALL R26 2 1
  SETTABLEKS R26 R25 K125 ["PaddingLeft"]
  GETIMPORT R26 K106 [UDim.new]
  LOADN R27 0
  LOADN R28 16
  CALL R26 2 1
  SETTABLEKS R26 R25 K126 ["PaddingRight"]
  GETIMPORT R26 K106 [UDim.new]
  LOADN R27 0
  LOADN R28 16
  CALL R26 2 1
  SETTABLEKS R26 R25 K127 ["PaddingTop"]
  GETIMPORT R26 K106 [UDim.new]
  LOADN R27 0
  LOADN R28 16
  CALL R26 2 1
  SETTABLEKS R26 R25 K128 ["PaddingBottom"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K144 [".StartPage-Padding24 ::UIPadding"]
  DUPTABLE R26 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R27 K106 [UDim.new]
  LOADN R28 0
  LOADN R29 24
  CALL R27 2 1
  SETTABLEKS R27 R26 K125 ["PaddingLeft"]
  GETIMPORT R27 K106 [UDim.new]
  LOADN R28 0
  LOADN R29 24
  CALL R27 2 1
  SETTABLEKS R27 R26 K126 ["PaddingRight"]
  GETIMPORT R27 K106 [UDim.new]
  LOADN R28 0
  LOADN R29 24
  CALL R27 2 1
  SETTABLEKS R27 R26 K127 ["PaddingTop"]
  GETIMPORT R27 K106 [UDim.new]
  LOADN R28 0
  LOADN R29 24
  CALL R27 2 1
  SETTABLEKS R27 R26 K128 ["PaddingBottom"]
  CALL R24 2 1
  SETLIST R8 R9 16 [33]
  MOVE R9 R2
  LOADK R10 K145 [".StartPage-Padding32 ::UIPadding"]
  DUPTABLE R11 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R12 K106 [UDim.new]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K125 ["PaddingLeft"]
  GETIMPORT R12 K106 [UDim.new]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K126 ["PaddingRight"]
  GETIMPORT R12 K106 [UDim.new]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K127 ["PaddingTop"]
  GETIMPORT R12 K106 [UDim.new]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K128 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K146 [".StartPage-ContextMenuPadding ::UIPadding"]
  DUPTABLE R12 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R13 K106 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K125 ["PaddingLeft"]
  GETIMPORT R13 K106 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K126 ["PaddingRight"]
  GETIMPORT R13 K106 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K127 ["PaddingTop"]
  GETIMPORT R13 K106 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K128 ["PaddingBottom"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K147 [".StartPage-ContextMenuRowPadding ::UIPadding"]
  DUPTABLE R13 K129 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K106 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K125 ["PaddingLeft"]
  GETIMPORT R14 K106 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K126 ["PaddingRight"]
  GETIMPORT R14 K106 [UDim.new]
  LOADN R15 0
  LOADN R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K127 ["PaddingTop"]
  GETIMPORT R14 K106 [UDim.new]
  LOADN R15 0
  LOADN R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K128 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K148 [".StartPage-PadScrollingCarouselLeft ::UIPadding"]
  DUPTABLE R14 K149 [{"PaddingLeft"}]
  GETIMPORT R15 K106 [UDim.new]
  LOADN R16 0
  LOADN R17 2
  CALL R15 2 1
  SETTABLEKS R15 R14 K125 ["PaddingLeft"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K150 [".StartPage-Anchor-Bottom-Right"]
  DUPTABLE R15 K152 [{"AnchorPoint"}]
  GETIMPORT R16 K154 [Vector2.new]
  LOADN R17 1
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K151 ["AnchorPoint"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K155 [".StartPage-Border ::UIStroke"]
  DUPTABLE R16 K157 [{"ApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R17 K122 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R17 R16 K117 ["ApplyStrokeMode"]
  LOADK R17 K158 ["$Border"]
  SETTABLEKS R17 R16 K118 ["Color"]
  LOADK R17 K159 [0.88]
  SETTABLEKS R17 R16 K156 ["Transparency"]
  LOADN R17 1
  SETTABLEKS R17 R16 K119 ["Thickness"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K160 [".StartPage-NoBorder"]
  DUPTABLE R17 K161 [{"BorderSizePixel"}]
  LOADN R18 0
  SETTABLEKS R18 R17 K109 ["BorderSizePixel"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K162 [".StartPage-BorderColor"]
  DUPTABLE R18 K163 [{"BackgroundColor3", "Transparency"}]
  LOADK R19 K158 ["$Border"]
  SETTABLEKS R19 R18 K20 ["BackgroundColor3"]
  LOADK R19 K159 [0.88]
  SETTABLEKS R19 R18 K156 ["Transparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K164 [".StartPage-StandardTextColor"]
  DUPTABLE R19 K45 [{"TextColor3"}]
  LOADK R20 K165 ["$Standard"]
  SETTABLEKS R20 R19 K44 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K166 [".StartPage-StandardDarkTextColor"]
  DUPTABLE R20 K45 [{"TextColor3"}]
  LOADK R21 K167 ["$StandardDark"]
  SETTABLEKS R21 R20 K44 ["TextColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K168 [".StartPage-MutedTextColor"]
  DUPTABLE R21 K45 [{"TextColor3"}]
  LOADK R22 K169 ["$SemanticColorContentMuted"]
  SETTABLEKS R22 R21 K44 ["TextColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K170 [".StartPage-LinkTextColor"]
  DUPTABLE R22 K45 [{"TextColor3"}]
  LOADK R23 K171 ["$SemanticColorContentAction"]
  SETTABLEKS R23 R22 K44 ["TextColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K172 [".StartPage-Standard"]
  DUPTABLE R23 K36 [{"BackgroundColor3"}]
  LOADK R24 K165 ["$Standard"]
  SETTABLEKS R24 R23 K20 ["BackgroundColor3"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K173 [".StartPage-StandardDarkBackground"]
  DUPTABLE R24 K36 [{"BackgroundColor3"}]
  LOADK R25 K167 ["$StandardDark"]
  SETTABLEKS R25 R24 K20 ["BackgroundColor3"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K174 [".StartPage-TileBackground"]
  DUPTABLE R25 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R26 K175 ["$TileBackground"]
  SETTABLEKS R26 R25 K20 ["BackgroundColor3"]
  LOADN R26 0
  SETTABLEKS R26 R25 K21 ["BackgroundTransparency"]
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K176 [":hover :: UIStroke"]
  DUPTABLE R29 K178 [{"StrokeApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R30 K122 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R30 R29 K177 ["StrokeApplyStrokeMode"]
  LOADK R30 K158 ["$Border"]
  SETTABLEKS R30 R29 K118 ["Color"]
  LOADK R30 K159 [0.88]
  SETTABLEKS R30 R29 K156 ["Transparency"]
  LOADN R30 2
  SETTABLEKS R30 R29 K119 ["Thickness"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K179 [".StartPage-PillBackground"]
  DUPTABLE R26 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K180 ["$PillBackground"]
  SETTABLEKS R27 R26 K20 ["BackgroundColor3"]
  LOADN R27 0
  SETTABLEKS R27 R26 K21 ["BackgroundTransparency"]
  CALL R24 2 1
  SETLIST R8 R9 16 [49]
  MOVE R9 R2
  LOADK R10 K181 [".StartPage-MenuItemSelectedBackground"]
  DUPTABLE R11 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R12 K182 ["$MenuItemSelectedBackground"]
  SETTABLEKS R12 R11 K20 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K21 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K183 [".StartPage-ShimmerBackground"]
  DUPTABLE R12 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R13 K184 ["$ShimmerBackground"]
  SETTABLEKS R13 R12 K20 ["BackgroundColor3"]
  LOADK R13 K185 ["$ShimmerBackgroundTransparency"]
  SETTABLEKS R13 R12 K21 ["BackgroundTransparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K186 [".StartPage-ShimmerForeground"]
  DUPTABLE R13 K36 [{"BackgroundColor3"}]
  LOADK R14 K187 ["$ShimmerForeground"]
  SETTABLEKS R14 R13 K20 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K188 [".StartPage-ShimmerGradient"]
  DUPTABLE R14 K189 [{"Transparency"}]
  LOADK R15 K190 ["$ShimmerGradientTransparency"]
  SETTABLEKS R15 R14 K156 ["Transparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K191 [".StartPage-NoExperiences"]
  DUPTABLE R15 K193 [{"Image", "Size"}]
  LOADK R16 K194 ["$NoExperiences"]
  SETTABLEKS R16 R15 K192 ["Image"]
  JUMPIFNOT R5 [+8]
  GETIMPORT R16 K196 [UDim2.new]
  LOADN R17 0
  LOADN R18 64
  LOADN R19 0
  LOADN R20 180
  CALL R16 4 1
  JUMP [+7]
  GETIMPORT R16 K196 [UDim2.new]
  LOADN R17 0
  LOADN R18 96
  LOADN R19 0
  LOADN R20 96
  CALL R16 4 1
  SETTABLEKS R16 R15 K86 ["Size"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K197 [".StartPage-RightIcon"]
  DUPTABLE R16 K193 [{"Image", "Size"}]
  LOADK R17 K198 ["$RightChevron"]
  SETTABLEKS R17 R16 K192 ["Image"]
  LOADK R17 K90 ["$IconSizeM"]
  SETTABLEKS R17 R16 K86 ["Size"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K199 [".StartPage-HomeIcon"]
  DUPTABLE R17 K193 [{"Image", "Size"}]
  LOADK R18 K200 ["$Home"]
  SETTABLEKS R18 R17 K192 ["Image"]
  LOADK R18 K90 ["$IconSizeM"]
  SETTABLEKS R18 R17 K86 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K201 [".StartPage-PlusIcon"]
  DUPTABLE R18 K193 [{"Image", "Size"}]
  LOADK R19 K202 ["$Plus"]
  SETTABLEKS R19 R18 K192 ["Image"]
  GETIMPORT R19 K196 [UDim2.new]
  LOADN R20 0
  LOADN R21 16
  LOADN R22 0
  LOADN R23 16
  CALL R19 4 1
  SETTABLEKS R19 R18 K86 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K203 [".StartPage-GridIcon"]
  DUPTABLE R19 K193 [{"Image", "Size"}]
  LOADK R20 K204 ["$Grid"]
  SETTABLEKS R20 R19 K192 ["Image"]
  GETIMPORT R20 K196 [UDim2.new]
  LOADN R21 0
  LOADN R22 24
  LOADN R23 0
  LOADN R24 24
  CALL R20 4 1
  SETTABLEKS R20 R19 K86 ["Size"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K205 [".StartPage-ListIcon"]
  DUPTABLE R20 K193 [{"Image", "Size"}]
  LOADK R21 K206 ["$List"]
  SETTABLEKS R21 R20 K192 ["Image"]
  GETIMPORT R21 K196 [UDim2.new]
  LOADN R22 0
  LOADN R23 24
  LOADN R24 0
  LOADN R25 24
  CALL R21 4 1
  SETTABLEKS R21 R20 K86 ["Size"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K207 [".StartPage-AlertIcon"]
  DUPTABLE R21 K193 [{"Image", "Size"}]
  LOADK R22 K208 ["$Alert"]
  SETTABLEKS R22 R21 K192 ["Image"]
  LOADK R22 K88 ["$IconSize"]
  SETTABLEKS R22 R21 K86 ["Size"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K209 [".StartPage-ExperiencesIcon"]
  DUPTABLE R22 K193 [{"Image", "Size"}]
  LOADK R23 K210 ["$Experiences"]
  SETTABLEKS R23 R22 K192 ["Image"]
  LOADK R23 K90 ["$IconSizeM"]
  SETTABLEKS R23 R22 K86 ["Size"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K211 [".StartPage-ArchiveIcon"]
  DUPTABLE R23 K193 [{"Image", "Size"}]
  LOADK R24 K212 ["$Archive"]
  SETTABLEKS R24 R23 K192 ["Image"]
  LOADK R24 K90 ["$IconSizeM"]
  SETTABLEKS R24 R23 K86 ["Size"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K213 [".StartPage-TemplatesIcon"]
  DUPTABLE R24 K193 [{"Image", "Size"}]
  LOADK R25 K214 ["$Templates"]
  SETTABLEKS R25 R24 K192 ["Image"]
  LOADK R25 K90 ["$IconSizeM"]
  SETTABLEKS R25 R24 K86 ["Size"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K215 [".StartPage-RecentsIcon"]
  DUPTABLE R25 K193 [{"Image", "Size"}]
  LOADK R26 K216 ["$Recents"]
  SETTABLEKS R26 R25 K192 ["Image"]
  LOADK R26 K90 ["$IconSizeM"]
  SETTABLEKS R26 R25 K86 ["Size"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K217 [".StartPage-SearchIcon"]
  DUPTABLE R26 K193 [{"Image", "Size"}]
  LOADK R27 K218 ["$Search"]
  SETTABLEKS R27 R26 K192 ["Image"]
  LOADK R27 K90 ["$IconSizeM"]
  SETTABLEKS R27 R26 K86 ["Size"]
  CALL R24 2 1
  SETLIST R8 R9 16 [65]
  MOVE R9 R2
  LOADK R10 K219 [".StartPage-KebabIcon"]
  DUPTABLE R11 K193 [{"Image", "Size"}]
  LOADK R12 K220 ["$Kebab"]
  SETTABLEKS R12 R11 K192 ["Image"]
  LOADK R12 K221 ["$IconSizeL"]
  SETTABLEKS R12 R11 K86 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K222 [".StartPage-CancelIcon"]
  DUPTABLE R12 K193 [{"Image", "Size"}]
  LOADK R13 K223 ["$Cancel"]
  SETTABLEKS R13 R12 K192 ["Image"]
  LOADK R13 K224 ["$IconSizeS"]
  SETTABLEKS R13 R12 K86 ["Size"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K225 [".StartPage-BlackCancelIcon"]
  DUPTABLE R13 K227 [{"Image", "ImageColor3", "Size"}]
  LOADK R14 K223 ["$Cancel"]
  SETTABLEKS R14 R13 K192 ["Image"]
  LOADK R14 K50 ["$BlackColor"]
  SETTABLEKS R14 R13 K226 ["ImageColor3"]
  LOADK R14 K224 ["$IconSizeS"]
  SETTABLEKS R14 R13 K86 ["Size"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K228 [".StartPage-CancelWhiteIcon"]
  DUPTABLE R14 K193 [{"Image", "Size"}]
  LOADK R15 K229 ["$CancelWhite"]
  SETTABLEKS R15 R14 K192 ["Image"]
  LOADK R15 K224 ["$IconSizeS"]
  SETTABLEKS R15 R14 K86 ["Size"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K230 [".StartPage-Chevron"]
  DUPTABLE R15 K231 [{"Image"}]
  LOADK R16 K232 ["$Chevron"]
  SETTABLEKS R16 R15 K192 ["Image"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K233 [".StartPage-TeamCreateOnlineBackground"]
  DUPTABLE R16 K36 [{"BackgroundColor3"}]
  LOADK R17 K234 ["$TeamCreatePresenceOnlineColor"]
  SETTABLEKS R17 R16 K20 ["BackgroundColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K235 [".StartPage-AdditionalTCCollaboratorBackground"]
  DUPTABLE R17 K36 [{"BackgroundColor3"}]
  LOADK R18 K123 ["$HoverBorder"]
  SETTABLEKS R18 R17 K20 ["BackgroundColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K236 [".StartPage-ColumnTutorialPopup"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K237 ["::UIListLayout"]
  DUPTABLE R22 K241 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K243 [Enum.FillDirection.Vertical]
  SETTABLEKS R23 R22 K238 ["FillDirection"]
  GETIMPORT R23 K106 [UDim.new]
  LOADN R24 0
  LOADN R25 32
  CALL R23 2 1
  SETTABLEKS R23 R22 K239 ["Padding"]
  GETIMPORT R23 K245 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K240 ["SortOrder"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K246 [".StartPage-SearchResultRowColumn"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K237 ["::UIListLayout"]
  DUPTABLE R23 K241 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R24 K243 [Enum.FillDirection.Vertical]
  SETTABLEKS R24 R23 K238 ["FillDirection"]
  GETIMPORT R24 K106 [UDim.new]
  LOADN R25 0
  LOADN R26 6
  CALL R24 2 1
  SETTABLEKS R24 R23 K239 ["Padding"]
  GETIMPORT R24 K245 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K240 ["SortOrder"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K247 [".StartPage-HomePageColumn"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K237 ["::UIListLayout"]
  DUPTABLE R24 K241 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R25 K243 [Enum.FillDirection.Vertical]
  SETTABLEKS R25 R24 K238 ["FillDirection"]
  GETIMPORT R25 K106 [UDim.new]
  LOADN R26 0
  LOADN R27 16
  CALL R25 2 1
  SETTABLEKS R25 R24 K239 ["Padding"]
  GETIMPORT R25 K245 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K240 ["SortOrder"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K248 [".StartPage-PopupTextboxColumn"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K237 ["::UIListLayout"]
  DUPTABLE R25 K241 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R26 K243 [Enum.FillDirection.Vertical]
  SETTABLEKS R26 R25 K238 ["FillDirection"]
  GETIMPORT R26 K106 [UDim.new]
  LOADN R27 0
  LOADN R28 8
  CALL R26 2 1
  SETTABLEKS R26 R25 K239 ["Padding"]
  GETIMPORT R26 K245 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K240 ["SortOrder"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K249 [".StartPage-PopupTextBoxTextButtonColumn"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K237 ["::UIListLayout"]
  DUPTABLE R26 K241 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R27 K243 [Enum.FillDirection.Vertical]
  SETTABLEKS R27 R26 K238 ["FillDirection"]
  GETIMPORT R27 K106 [UDim.new]
  LOADN R28 0
  LOADN R29 16
  CALL R27 2 1
  SETTABLEKS R27 R26 K239 ["Padding"]
  GETIMPORT R27 K245 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K240 ["SortOrder"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R8 R9 -1 [81]
  JUMPIFNOT R4 [+22]
  GETTABLEKS R9 R7 K250 ["IsLoggedIn"]
  JUMPIFNOT R9 [+19]
  NAMECALL R9 R6 K251 ["HasInternalPermission"]
  CALL R9 1 1
  JUMPIFNOT R9 [+15]
  MOVE R10 R8
  MOVE R11 R2
  LOADK R12 K252 [".StartPage-TestTemplatesIcon"]
  DUPTABLE R13 K193 [{"Image", "Size"}]
  LOADK R14 K253 ["$CodeSnippet"]
  SETTABLEKS R14 R13 K192 ["Image"]
  LOADK R14 K90 ["$IconSizeM"]
  SETTABLEKS R14 R13 K86 ["Size"]
  CALL R11 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R9 K256 [table.insert]
  CALL R9 -1 0
  DUPTABLE R9 K274 [{"IconSizeS", "IconSize", "IconSizeM", "IconSizeL", "CornerSize4", "CornerSize8", "CornerSize12", "CornerSize16", "CornerSize32", "TextSizeXS", "TextSize", "TextSizeM", "TextSizeL", "TeamCreatePresenceOnlineColor", "AlertColor", "AlertBadge", "WhiteColor", "BlackColor"}]
  GETIMPORT R10 K196 [UDim2.new]
  LOADN R11 0
  LOADN R12 12
  LOADN R13 0
  LOADN R14 12
  CALL R10 4 1
  SETTABLEKS R10 R9 K257 ["IconSizeS"]
  GETIMPORT R10 K196 [UDim2.new]
  LOADN R11 0
  LOADN R12 16
  LOADN R13 0
  LOADN R14 16
  CALL R10 4 1
  SETTABLEKS R10 R9 K258 ["IconSize"]
  GETIMPORT R10 K196 [UDim2.new]
  LOADN R11 0
  LOADN R12 24
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K259 ["IconSizeM"]
  GETIMPORT R10 K196 [UDim2.new]
  LOADN R11 0
  LOADN R12 32
  LOADN R13 0
  LOADN R14 32
  CALL R10 4 1
  SETTABLEKS R10 R9 K260 ["IconSizeL"]
  GETIMPORT R10 K106 [UDim.new]
  LOADN R11 0
  LOADN R12 4
  CALL R10 2 1
  SETTABLEKS R10 R9 K261 ["CornerSize4"]
  GETIMPORT R10 K106 [UDim.new]
  LOADN R11 0
  LOADN R12 8
  CALL R10 2 1
  SETTABLEKS R10 R9 K262 ["CornerSize8"]
  GETIMPORT R10 K106 [UDim.new]
  LOADN R11 0
  LOADN R12 12
  CALL R10 2 1
  SETTABLEKS R10 R9 K263 ["CornerSize12"]
  GETIMPORT R10 K106 [UDim.new]
  LOADN R11 0
  LOADN R12 16
  CALL R10 2 1
  SETTABLEKS R10 R9 K264 ["CornerSize16"]
  GETIMPORT R10 K106 [UDim.new]
  LOADN R11 0
  LOADN R12 32
  CALL R10 2 1
  SETTABLEKS R10 R9 K265 ["CornerSize32"]
  LOADN R10 12
  SETTABLEKS R10 R9 K266 ["TextSizeXS"]
  LOADN R10 16
  SETTABLEKS R10 R9 K76 ["TextSize"]
  LOADN R10 24
  SETTABLEKS R10 R9 K267 ["TextSizeM"]
  LOADN R10 40
  SETTABLEKS R10 R9 K268 ["TextSizeL"]
  GETIMPORT R10 K58 [Color3.fromHex]
  LOADK R11 K19 [".StartPage-Background"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K269 ["TeamCreatePresenceOnlineColor"]
  GETIMPORT R10 K58 [Color3.fromHex]
  LOADK R11 K20 ["BackgroundColor3"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K270 ["AlertColor"]
  GETIMPORT R10 K58 [Color3.fromHex]
  LOADK R11 K21 ["BackgroundTransparency"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K271 ["AlertBadge"]
  GETIMPORT R10 K58 [Color3.fromHex]
  LOADK R11 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  CALL R10 1 1
  SETTABLEKS R10 R9 K272 ["WhiteColor"]
  GETIMPORT R10 K58 [Color3.fromHex]
  LOADK R11 K23 ["$Background"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K273 ["BlackColor"]
  MOVE R10 R3
  LOADK R11 K2 ["StartPage"]
  MOVE R12 R8
  MOVE R13 R9
  CALL R10 3 -1
  RETURN R10 -1
