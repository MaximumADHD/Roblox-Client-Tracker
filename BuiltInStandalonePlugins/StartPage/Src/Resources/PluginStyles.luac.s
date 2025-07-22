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
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K14 ["Util"]
  GETTABLEKS R7 R8 K15 ["Services"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K16 ["StudioService"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["Services"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K17 ["StudioUserService"]
  NEWTABLE R7 0 87
  MOVE R8 R2
  LOADK R9 K18 [".StartPage-Background"]
  DUPTABLE R10 K21 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R11 K22 ["$Background"]
  SETTABLEKS R11 R10 K19 ["BackgroundColor3"]
  LOADN R11 0
  SETTABLEKS R11 R10 K20 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K23 [".StartPage-PageBackground"]
  DUPTABLE R11 K21 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R12 K24 ["$PageBackground"]
  SETTABLEKS R12 R11 K19 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K20 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K25 [".StartPage-MenuBackground"]
  DUPTABLE R12 K21 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R13 K26 ["$MenuBackground"]
  SETTABLEKS R13 R12 K19 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K20 ["BackgroundTransparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K27 [".StartPage-ContextMenuBackground"]
  DUPTABLE R13 K21 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R14 K28 ["$ContextMenuBackground"]
  SETTABLEKS R14 R13 K19 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K20 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K29 [".StartPage-AlertBackground"]
  DUPTABLE R14 K21 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R15 K30 ["$AlertColor"]
  SETTABLEKS R15 R14 K19 ["BackgroundColor3"]
  LOADN R15 0
  SETTABLEKS R15 R14 K20 ["BackgroundTransparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K31 [".StartPage-Selected"]
  DUPTABLE R15 K32 [{"BackgroundColor3"}]
  LOADK R16 K33 ["$Selected"]
  SETTABLEKS R16 R15 K19 ["BackgroundColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K34 [".StartPage-Contrast"]
  DUPTABLE R16 K21 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R17 K35 ["$Contrast"]
  SETTABLEKS R17 R16 K19 ["BackgroundColor3"]
  LOADN R17 0
  SETTABLEKS R17 R16 K20 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K36 [".StartPage-NoTextStroke"]
  DUPTABLE R17 K38 [{"TextStrokeTransparency"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K37 ["TextStrokeTransparency"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K39 [".StartPage-TextColor"]
  DUPTABLE R18 K41 [{"TextColor3"}]
  LOADK R19 K42 ["$TextColor"]
  SETTABLEKS R19 R18 K40 ["TextColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K43 [".StartPage-WhiteTextColor"]
  DUPTABLE R19 K41 [{"TextColor3"}]
  LOADK R20 K44 ["$WhiteColor"]
  SETTABLEKS R20 R19 K40 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K45 [".StartPage-ContrastTextColor"]
  DUPTABLE R20 K41 [{"TextColor3"}]
  LOADK R21 K46 ["$ContrastTextColor"]
  SETTABLEKS R21 R20 K40 ["TextColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K47 [".StartPage-DisabledTextColor"]
  DUPTABLE R21 K41 [{"TextColor3"}]
  LOADK R22 K48 ["$Disabled"]
  SETTABLEKS R22 R21 K40 ["TextColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K49 [".StartPage-ButtonBackgroundColor"]
  DUPTABLE R22 K21 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R23 K52 [Color3.fromHex]
  LOADK R24 K53 ["#3C64FA"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K19 ["BackgroundColor3"]
  LOADN R23 0
  SETTABLEKS R23 R22 K20 ["BackgroundTransparency"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K54 [".StartPage-Font"]
  DUPTABLE R23 K57 [{"Font", "LineHeight"}]
  GETIMPORT R24 K60 [Enum.Font.BuilderSans]
  SETTABLEKS R24 R23 K55 ["Font"]
  LOADK R24 K61 [1.142]
  SETTABLEKS R24 R23 K56 ["LineHeight"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K62 [".StartPage-FontBold"]
  DUPTABLE R24 K57 [{"Font", "LineHeight"}]
  GETIMPORT R25 K64 [Enum.Font.BuilderSansBold]
  SETTABLEKS R25 R24 K55 ["Font"]
  LOADK R25 K65 [1.6]
  SETTABLEKS R25 R24 K56 ["LineHeight"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K66 [".StartPage-FontExtraBold"]
  DUPTABLE R25 K57 [{"Font", "LineHeight"}]
  GETIMPORT R26 K68 [Enum.Font.BuilderSansExtraBold]
  SETTABLEKS R26 R25 K55 ["Font"]
  LOADK R26 K65 [1.6]
  SETTABLEKS R26 R25 K56 ["LineHeight"]
  CALL R23 2 1
  SETLIST R7 R8 16 [1]
  MOVE R8 R2
  LOADK R9 K69 [".StartPage-TextSizeXS"]
  DUPTABLE R10 K71 [{"TextSize"}]
  LOADK R11 K72 ["$TextSizeXS"]
  SETTABLEKS R11 R10 K70 ["TextSize"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K73 [".StartPage-TextSize"]
  DUPTABLE R11 K71 [{"TextSize"}]
  LOADK R12 K74 ["$TextSize"]
  SETTABLEKS R12 R11 K70 ["TextSize"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K75 [".StartPage-TextSizeM"]
  DUPTABLE R12 K71 [{"TextSize"}]
  LOADK R13 K76 ["$TextSizeM"]
  SETTABLEKS R13 R12 K70 ["TextSize"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K77 [".StartPage-TextSizeL"]
  DUPTABLE R13 K71 [{"TextSize"}]
  LOADK R14 K78 ["$TextSizeL"]
  SETTABLEKS R14 R13 K70 ["TextSize"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K79 [".StartPage-IconSize"]
  DUPTABLE R14 K81 [{"Size"}]
  LOADK R15 K82 ["$IconSize"]
  SETTABLEKS R15 R14 K80 ["Size"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K83 [".StartPage-IconSizeM"]
  DUPTABLE R15 K81 [{"Size"}]
  LOADK R16 K84 ["$IconSizeM"]
  SETTABLEKS R16 R15 K80 ["Size"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K85 [".StartPage-RoundedCorner4 ::UICorner"]
  DUPTABLE R16 K87 [{"CornerRadius"}]
  LOADK R17 K88 ["$CornerSize4"]
  SETTABLEKS R17 R16 K86 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K89 [".StartPage-RoundedCorner8 ::UICorner"]
  DUPTABLE R17 K87 [{"CornerRadius"}]
  LOADK R18 K90 ["$CornerSize8"]
  SETTABLEKS R18 R17 K86 ["CornerRadius"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K91 [".StartPage-RoundedCorner12 ::UICorner"]
  DUPTABLE R18 K87 [{"CornerRadius"}]
  LOADK R19 K92 ["$CornerSize12"]
  SETTABLEKS R19 R18 K86 ["CornerRadius"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K93 [".StartPage-RoundedCorner16 ::UICorner"]
  DUPTABLE R19 K87 [{"CornerRadius"}]
  LOADK R20 K94 ["$CornerSize16"]
  SETTABLEKS R20 R19 K86 ["CornerRadius"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K95 [".StartPage-RoundedCorner32 ::UICorner"]
  DUPTABLE R20 K87 [{"CornerRadius"}]
  LOADK R21 K96 ["$CornerSize32"]
  SETTABLEKS R21 R20 K86 ["CornerRadius"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K97 [".StartPage-Circular ::UICorner"]
  DUPTABLE R21 K87 [{"CornerRadius"}]
  GETIMPORT R22 K100 [UDim.new]
  LOADN R23 1
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K86 ["CornerRadius"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K101 [".StartPage-SearchBar"]
  DUPTABLE R22 K104 [{"TextXAlignment", "Font", "BorderSizePixel", "BackgroundColor3"}]
  GETIMPORT R23 K106 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K102 ["TextXAlignment"]
  GETIMPORT R23 K60 [Enum.Font.BuilderSans]
  SETTABLEKS R23 R22 K55 ["Font"]
  LOADN R23 0
  SETTABLEKS R23 R22 K103 ["BorderSizePixel"]
  LOADK R23 K24 ["$PageBackground"]
  SETTABLEKS R23 R22 K19 ["BackgroundColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K107 [".StartPage-Highlight"]
  DUPTABLE R23 K21 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R24 K52 [Color3.fromHex]
  LOADK R25 K108 ["#BBBCBE"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K19 ["BackgroundColor3"]
  LOADK R24 K109 [0.92]
  SETTABLEKS R24 R23 K20 ["BackgroundTransparency"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K110 [".StartPage-TileBorder ::UIStroke"]
  DUPTABLE R24 K114 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R25 K116 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R25 R24 K111 ["ApplyStrokeMode"]
  LOADK R25 K117 ["$HoverBorder"]
  SETTABLEKS R25 R24 K112 ["Color"]
  LOADN R25 1
  SETTABLEKS R25 R24 K113 ["Thickness"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K118 [".StartPage-PillPaddingS ::UIPadding"]
  DUPTABLE R25 K123 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R26 K100 [UDim.new]
  LOADN R27 0
  LOADN R28 10
  CALL R26 2 1
  SETTABLEKS R26 R25 K119 ["PaddingLeft"]
  GETIMPORT R26 K100 [UDim.new]
  LOADN R27 0
  LOADN R28 10
  CALL R26 2 1
  SETTABLEKS R26 R25 K120 ["PaddingRight"]
  GETIMPORT R26 K100 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K121 ["PaddingTop"]
  GETIMPORT R26 K100 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K122 ["PaddingBottom"]
  CALL R23 2 1
  SETLIST R7 R8 16 [17]
  MOVE R8 R2
  LOADK R9 K124 [".StartPage-PillPadding ::UIPadding"]
  DUPTABLE R10 K123 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R11 K100 [UDim.new]
  LOADN R12 0
  LOADN R13 12
  CALL R11 2 1
  SETTABLEKS R11 R10 K119 ["PaddingLeft"]
  GETIMPORT R11 K100 [UDim.new]
  LOADN R12 0
  LOADN R13 12
  CALL R11 2 1
  SETTABLEKS R11 R10 K120 ["PaddingRight"]
  GETIMPORT R11 K100 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K121 ["PaddingTop"]
  GETIMPORT R11 K100 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K122 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K125 [".StartPage-ButtonPadding ::UIPadding"]
  DUPTABLE R11 K123 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R12 K100 [UDim.new]
  LOADN R13 0
  LOADN R14 20
  CALL R12 2 1
  SETTABLEKS R12 R11 K119 ["PaddingLeft"]
  GETIMPORT R12 K100 [UDim.new]
  LOADN R13 0
  LOADN R14 20
  CALL R12 2 1
  SETTABLEKS R12 R11 K120 ["PaddingRight"]
  GETIMPORT R12 K100 [UDim.new]
  LOADN R13 0
  LOADN R14 12
  CALL R12 2 1
  SETTABLEKS R12 R11 K121 ["PaddingTop"]
  GETIMPORT R12 K100 [UDim.new]
  LOADN R13 0
  LOADN R14 12
  CALL R12 2 1
  SETTABLEKS R12 R11 K122 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K126 [".StartPage-TilePadding ::UIPadding"]
  DUPTABLE R12 K123 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R13 K100 [UDim.new]
  LOADN R14 0
  LOADN R15 12
  CALL R13 2 1
  SETTABLEKS R13 R12 K119 ["PaddingLeft"]
  GETIMPORT R13 K100 [UDim.new]
  LOADN R14 0
  LOADN R15 12
  CALL R13 2 1
  SETTABLEKS R13 R12 K120 ["PaddingRight"]
  GETIMPORT R13 K100 [UDim.new]
  LOADN R14 0
  LOADN R15 12
  CALL R13 2 1
  SETTABLEKS R13 R12 K121 ["PaddingTop"]
  GETIMPORT R13 K100 [UDim.new]
  LOADN R14 0
  LOADN R15 12
  CALL R13 2 1
  SETTABLEKS R13 R12 K122 ["PaddingBottom"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K127 [".StartPage-TablePadding ::UIPadding"]
  DUPTABLE R13 K128 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K100 [UDim.new]
  LOADN R15 0
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K121 ["PaddingTop"]
  GETIMPORT R14 K100 [UDim.new]
  LOADN R15 0
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K122 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K129 [".StartPage-DescPadding ::UIPadding"]
  DUPTABLE R14 K123 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R15 K100 [UDim.new]
  LOADN R16 0
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K119 ["PaddingLeft"]
  GETIMPORT R15 K100 [UDim.new]
  LOADN R16 0
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K120 ["PaddingRight"]
  GETIMPORT R15 K100 [UDim.new]
  LOADN R16 0
  LOADN R17 12
  CALL R15 2 1
  SETTABLEKS R15 R14 K121 ["PaddingTop"]
  GETIMPORT R15 K100 [UDim.new]
  LOADN R16 0
  LOADN R17 12
  CALL R15 2 1
  SETTABLEKS R15 R14 K122 ["PaddingBottom"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K130 [".StartPage-SearchRowPadding ::UIPadding"]
  DUPTABLE R15 K123 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R16 K100 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K119 ["PaddingLeft"]
  GETIMPORT R16 K100 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K120 ["PaddingRight"]
  GETIMPORT R16 K100 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K121 ["PaddingTop"]
  GETIMPORT R16 K100 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K122 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K131 [".StartPage-GamePagePadding ::UIPadding"]
  DUPTABLE R16 K123 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R17 K100 [UDim.new]
  LOADN R18 0
  LOADN R19 32
  CALL R17 2 1
  SETTABLEKS R17 R16 K119 ["PaddingLeft"]
  GETIMPORT R17 K100 [UDim.new]
  LOADN R18 0
  LOADN R19 32
  CALL R17 2 1
  SETTABLEKS R17 R16 K120 ["PaddingRight"]
  GETIMPORT R17 K100 [UDim.new]
  LOADN R18 0
  LOADN R19 17
  CALL R17 2 1
  SETTABLEKS R17 R16 K121 ["PaddingTop"]
  GETIMPORT R17 K100 [UDim.new]
  LOADN R18 0
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K122 ["PaddingBottom"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K132 [".StartPage-LeftPadding32 ::UIPadding"]
  DUPTABLE R17 K123 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R18 K100 [UDim.new]
  LOADN R19 0
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K119 ["PaddingLeft"]
  GETIMPORT R18 K100 [UDim.new]
  LOADN R19 0
  LOADN R20 15
  CALL R18 2 1
  SETTABLEKS R18 R17 K120 ["PaddingRight"]
  GETIMPORT R18 K100 [UDim.new]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K121 ["PaddingTop"]
  GETIMPORT R18 K100 [UDim.new]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K122 ["PaddingBottom"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K133 [".StartPage-PaddingX8 ::UIPadding"]
  DUPTABLE R18 K123 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R19 K100 [UDim.new]
  LOADN R20 0
  LOADN R21 8
  CALL R19 2 1
  SETTABLEKS R19 R18 K119 ["PaddingLeft"]
  GETIMPORT R19 K100 [UDim.new]
  LOADN R20 0
  LOADN R21 8
  CALL R19 2 1
  SETTABLEKS R19 R18 K120 ["PaddingRight"]
  GETIMPORT R19 K100 [UDim.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K121 ["PaddingTop"]
  GETIMPORT R19 K100 [UDim.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K122 ["PaddingBottom"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K134 [".StartPage-PaddingY8 ::UIPadding"]
  DUPTABLE R19 K123 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R20 K100 [UDim.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K119 ["PaddingLeft"]
  GETIMPORT R20 K100 [UDim.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K120 ["PaddingRight"]
  GETIMPORT R20 K100 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K121 ["PaddingTop"]
  GETIMPORT R20 K100 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K122 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K135 [".StartPage-Padding16 ::UIPadding"]
  DUPTABLE R20 K123 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R21 K100 [UDim.new]
  LOADN R22 0
  LOADN R23 16
  CALL R21 2 1
  SETTABLEKS R21 R20 K119 ["PaddingLeft"]
  GETIMPORT R21 K100 [UDim.new]
  LOADN R22 0
  LOADN R23 16
  CALL R21 2 1
  SETTABLEKS R21 R20 K120 ["PaddingRight"]
  GETIMPORT R21 K100 [UDim.new]
  LOADN R22 0
  LOADN R23 16
  CALL R21 2 1
  SETTABLEKS R21 R20 K121 ["PaddingTop"]
  GETIMPORT R21 K100 [UDim.new]
  LOADN R22 0
  LOADN R23 16
  CALL R21 2 1
  SETTABLEKS R21 R20 K122 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K136 [".StartPage-Padding24 ::UIPadding"]
  DUPTABLE R21 K123 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R22 K100 [UDim.new]
  LOADN R23 0
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K119 ["PaddingLeft"]
  GETIMPORT R22 K100 [UDim.new]
  LOADN R23 0
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K120 ["PaddingRight"]
  GETIMPORT R22 K100 [UDim.new]
  LOADN R23 0
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K121 ["PaddingTop"]
  GETIMPORT R22 K100 [UDim.new]
  LOADN R23 0
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K122 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K137 [".StartPage-Padding32 ::UIPadding"]
  DUPTABLE R22 K123 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R23 K100 [UDim.new]
  LOADN R24 0
  LOADN R25 32
  CALL R23 2 1
  SETTABLEKS R23 R22 K119 ["PaddingLeft"]
  GETIMPORT R23 K100 [UDim.new]
  LOADN R24 0
  LOADN R25 32
  CALL R23 2 1
  SETTABLEKS R23 R22 K120 ["PaddingRight"]
  GETIMPORT R23 K100 [UDim.new]
  LOADN R24 0
  LOADN R25 32
  CALL R23 2 1
  SETTABLEKS R23 R22 K121 ["PaddingTop"]
  GETIMPORT R23 K100 [UDim.new]
  LOADN R24 0
  LOADN R25 32
  CALL R23 2 1
  SETTABLEKS R23 R22 K122 ["PaddingBottom"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K138 [".StartPage-ContextMenuPadding ::UIPadding"]
  DUPTABLE R23 K123 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R24 K100 [UDim.new]
  LOADN R25 0
  LOADN R26 8
  CALL R24 2 1
  SETTABLEKS R24 R23 K119 ["PaddingLeft"]
  GETIMPORT R24 K100 [UDim.new]
  LOADN R25 0
  LOADN R26 8
  CALL R24 2 1
  SETTABLEKS R24 R23 K120 ["PaddingRight"]
  GETIMPORT R24 K100 [UDim.new]
  LOADN R25 0
  LOADN R26 8
  CALL R24 2 1
  SETTABLEKS R24 R23 K121 ["PaddingTop"]
  GETIMPORT R24 K100 [UDim.new]
  LOADN R25 0
  LOADN R26 8
  CALL R24 2 1
  SETTABLEKS R24 R23 K122 ["PaddingBottom"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K139 [".StartPage-ContextMenuRowPadding ::UIPadding"]
  DUPTABLE R24 K123 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R25 K100 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K119 ["PaddingLeft"]
  GETIMPORT R25 K100 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K120 ["PaddingRight"]
  GETIMPORT R25 K100 [UDim.new]
  LOADN R26 0
  LOADN R27 4
  CALL R25 2 1
  SETTABLEKS R25 R24 K121 ["PaddingTop"]
  GETIMPORT R25 K100 [UDim.new]
  LOADN R26 0
  LOADN R27 4
  CALL R25 2 1
  SETTABLEKS R25 R24 K122 ["PaddingBottom"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K140 [".StartPage-PadScrollingCarouselLeft ::UIPadding"]
  DUPTABLE R25 K141 [{"PaddingLeft"}]
  GETIMPORT R26 K100 [UDim.new]
  LOADN R27 0
  LOADN R28 2
  CALL R26 2 1
  SETTABLEKS R26 R25 K119 ["PaddingLeft"]
  CALL R23 2 1
  SETLIST R7 R8 16 [33]
  MOVE R8 R2
  LOADK R9 K142 [".StartPage-Anchor-Bottom-Right"]
  DUPTABLE R10 K144 [{"AnchorPoint"}]
  GETIMPORT R11 K146 [Vector2.new]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K143 ["AnchorPoint"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K147 [".StartPage-Border ::UIStroke"]
  DUPTABLE R11 K149 [{"ApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R12 K116 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R12 R11 K111 ["ApplyStrokeMode"]
  LOADK R12 K150 ["$Border"]
  SETTABLEKS R12 R11 K112 ["Color"]
  LOADK R12 K151 [0.88]
  SETTABLEKS R12 R11 K148 ["Transparency"]
  LOADN R12 1
  SETTABLEKS R12 R11 K113 ["Thickness"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K152 [".StartPage-NoBorder"]
  DUPTABLE R12 K153 [{"BorderSizePixel"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K103 ["BorderSizePixel"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K154 [".StartPage-BorderColor"]
  DUPTABLE R13 K155 [{"BackgroundColor3", "Transparency"}]
  LOADK R14 K150 ["$Border"]
  SETTABLEKS R14 R13 K19 ["BackgroundColor3"]
  LOADK R14 K151 [0.88]
  SETTABLEKS R14 R13 K148 ["Transparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K156 [".StartPage-StandardTextColor"]
  DUPTABLE R14 K41 [{"TextColor3"}]
  LOADK R15 K157 ["$Standard"]
  SETTABLEKS R15 R14 K40 ["TextColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K158 [".StartPage-StandardDarkTextColor"]
  DUPTABLE R15 K41 [{"TextColor3"}]
  LOADK R16 K159 ["$StandardDark"]
  SETTABLEKS R16 R15 K40 ["TextColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K160 [".StartPage-MutedTextColor"]
  DUPTABLE R16 K41 [{"TextColor3"}]
  LOADK R17 K161 ["$SemanticColorContentMuted"]
  SETTABLEKS R17 R16 K40 ["TextColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K162 [".StartPage-LinkTextColor"]
  DUPTABLE R17 K41 [{"TextColor3"}]
  LOADK R18 K163 ["$SemanticColorContentAction"]
  SETTABLEKS R18 R17 K40 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K164 [".StartPage-Standard"]
  DUPTABLE R18 K32 [{"BackgroundColor3"}]
  LOADK R19 K157 ["$Standard"]
  SETTABLEKS R19 R18 K19 ["BackgroundColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K165 [".StartPage-StandardDarkBackground"]
  DUPTABLE R19 K32 [{"BackgroundColor3"}]
  LOADK R20 K159 ["$StandardDark"]
  SETTABLEKS R20 R19 K19 ["BackgroundColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K166 [".StartPage-TileBackground"]
  DUPTABLE R20 K21 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R21 K167 ["$TileBackground"]
  SETTABLEKS R21 R20 K19 ["BackgroundColor3"]
  LOADN R21 0
  SETTABLEKS R21 R20 K20 ["BackgroundTransparency"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K168 [":hover :: UIStroke"]
  DUPTABLE R24 K170 [{"StrokeApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R25 K116 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R25 R24 K169 ["StrokeApplyStrokeMode"]
  LOADK R25 K150 ["$Border"]
  SETTABLEKS R25 R24 K112 ["Color"]
  LOADK R25 K151 [0.88]
  SETTABLEKS R25 R24 K148 ["Transparency"]
  LOADN R25 2
  SETTABLEKS R25 R24 K113 ["Thickness"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K171 [".StartPage-PillBackground"]
  DUPTABLE R21 K21 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K172 ["$PillBackground"]
  SETTABLEKS R22 R21 K19 ["BackgroundColor3"]
  LOADN R22 0
  SETTABLEKS R22 R21 K20 ["BackgroundTransparency"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K173 [".StartPage-MenuItemSelectedBackground"]
  DUPTABLE R22 K21 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R23 K174 ["$MenuItemSelectedBackground"]
  SETTABLEKS R23 R22 K19 ["BackgroundColor3"]
  LOADN R23 0
  SETTABLEKS R23 R22 K20 ["BackgroundTransparency"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K175 [".StartPage-ShimmerBackground"]
  DUPTABLE R23 K21 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R24 K176 ["$ShimmerBackground"]
  SETTABLEKS R24 R23 K19 ["BackgroundColor3"]
  LOADK R24 K177 ["$ShimmerBackgroundTransparency"]
  SETTABLEKS R24 R23 K20 ["BackgroundTransparency"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K178 [".StartPage-ShimmerForeground"]
  DUPTABLE R24 K32 [{"BackgroundColor3"}]
  LOADK R25 K179 ["$ShimmerForeground"]
  SETTABLEKS R25 R24 K19 ["BackgroundColor3"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K180 [".StartPage-ShimmerGradient"]
  DUPTABLE R25 K181 [{"Transparency"}]
  LOADK R26 K182 ["$ShimmerGradientTransparency"]
  SETTABLEKS R26 R25 K148 ["Transparency"]
  CALL R23 2 1
  SETLIST R7 R8 16 [49]
  MOVE R8 R2
  LOADK R9 K183 [".StartPage-NoExperiences"]
  DUPTABLE R10 K185 [{"Image", "Size"}]
  LOADK R11 K186 ["$NoExperiences"]
  SETTABLEKS R11 R10 K184 ["Image"]
  GETIMPORT R11 K188 [UDim2.new]
  LOADN R12 0
  LOADN R13 96
  LOADN R14 0
  LOADN R15 96
  CALL R11 4 1
  SETTABLEKS R11 R10 K80 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K189 [".StartPage-RightIcon"]
  DUPTABLE R11 K185 [{"Image", "Size"}]
  LOADK R12 K190 ["$RightChevron"]
  SETTABLEKS R12 R11 K184 ["Image"]
  LOADK R12 K84 ["$IconSizeM"]
  SETTABLEKS R12 R11 K80 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K191 [".StartPage-HomeIcon"]
  DUPTABLE R12 K185 [{"Image", "Size"}]
  LOADK R13 K192 ["$Home"]
  SETTABLEKS R13 R12 K184 ["Image"]
  LOADK R13 K84 ["$IconSizeM"]
  SETTABLEKS R13 R12 K80 ["Size"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K193 [".StartPage-PlusIcon"]
  DUPTABLE R13 K185 [{"Image", "Size"}]
  LOADK R14 K194 ["$Plus"]
  SETTABLEKS R14 R13 K184 ["Image"]
  GETIMPORT R14 K188 [UDim2.new]
  LOADN R15 0
  LOADN R16 16
  LOADN R17 0
  LOADN R18 16
  CALL R14 4 1
  SETTABLEKS R14 R13 K80 ["Size"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K195 [".StartPage-GridIcon"]
  DUPTABLE R14 K185 [{"Image", "Size"}]
  LOADK R15 K196 ["$Grid"]
  SETTABLEKS R15 R14 K184 ["Image"]
  GETIMPORT R15 K188 [UDim2.new]
  LOADN R16 0
  LOADN R17 24
  LOADN R18 0
  LOADN R19 24
  CALL R15 4 1
  SETTABLEKS R15 R14 K80 ["Size"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K197 [".StartPage-ListIcon"]
  DUPTABLE R15 K185 [{"Image", "Size"}]
  LOADK R16 K198 ["$List"]
  SETTABLEKS R16 R15 K184 ["Image"]
  GETIMPORT R16 K188 [UDim2.new]
  LOADN R17 0
  LOADN R18 24
  LOADN R19 0
  LOADN R20 24
  CALL R16 4 1
  SETTABLEKS R16 R15 K80 ["Size"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K199 [".StartPage-AlertIcon"]
  DUPTABLE R16 K185 [{"Image", "Size"}]
  LOADK R17 K200 ["$Alert"]
  SETTABLEKS R17 R16 K184 ["Image"]
  LOADK R17 K82 ["$IconSize"]
  SETTABLEKS R17 R16 K80 ["Size"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K201 [".StartPage-ExperiencesIcon"]
  DUPTABLE R17 K185 [{"Image", "Size"}]
  LOADK R18 K202 ["$Experiences"]
  SETTABLEKS R18 R17 K184 ["Image"]
  LOADK R18 K84 ["$IconSizeM"]
  SETTABLEKS R18 R17 K80 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K203 [".StartPage-ArchiveIcon"]
  DUPTABLE R18 K185 [{"Image", "Size"}]
  LOADK R19 K204 ["$Archive"]
  SETTABLEKS R19 R18 K184 ["Image"]
  LOADK R19 K84 ["$IconSizeM"]
  SETTABLEKS R19 R18 K80 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K205 [".StartPage-TemplatesIcon"]
  DUPTABLE R19 K185 [{"Image", "Size"}]
  LOADK R20 K206 ["$Templates"]
  SETTABLEKS R20 R19 K184 ["Image"]
  LOADK R20 K84 ["$IconSizeM"]
  SETTABLEKS R20 R19 K80 ["Size"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K207 [".StartPage-RecentsIcon"]
  DUPTABLE R20 K185 [{"Image", "Size"}]
  LOADK R21 K208 ["$Recents"]
  SETTABLEKS R21 R20 K184 ["Image"]
  LOADK R21 K84 ["$IconSizeM"]
  SETTABLEKS R21 R20 K80 ["Size"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K209 [".StartPage-SearchIcon"]
  DUPTABLE R21 K185 [{"Image", "Size"}]
  LOADK R22 K210 ["$Search"]
  SETTABLEKS R22 R21 K184 ["Image"]
  LOADK R22 K84 ["$IconSizeM"]
  SETTABLEKS R22 R21 K80 ["Size"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K211 [".StartPage-KebabIcon"]
  DUPTABLE R22 K185 [{"Image", "Size"}]
  LOADK R23 K212 ["$Kebab"]
  SETTABLEKS R23 R22 K184 ["Image"]
  LOADK R23 K213 ["$IconSizeL"]
  SETTABLEKS R23 R22 K80 ["Size"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K214 [".StartPage-CancelIcon"]
  DUPTABLE R23 K185 [{"Image", "Size"}]
  LOADK R24 K215 ["$Cancel"]
  SETTABLEKS R24 R23 K184 ["Image"]
  LOADK R24 K216 ["$IconSizeS"]
  SETTABLEKS R24 R23 K80 ["Size"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K217 [".StartPage-CancelWhiteIcon"]
  DUPTABLE R24 K185 [{"Image", "Size"}]
  LOADK R25 K218 ["$CancelWhite"]
  SETTABLEKS R25 R24 K184 ["Image"]
  LOADK R25 K216 ["$IconSizeS"]
  SETTABLEKS R25 R24 K80 ["Size"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K219 [".StartPage-Chevron"]
  DUPTABLE R25 K220 [{"Image"}]
  LOADK R26 K221 ["$Chevron"]
  SETTABLEKS R26 R25 K184 ["Image"]
  CALL R23 2 1
  SETLIST R7 R8 16 [65]
  MOVE R8 R2
  LOADK R9 K222 [".StartPage-TeamCreateOnlineBackground"]
  DUPTABLE R10 K32 [{"BackgroundColor3"}]
  LOADK R11 K223 ["$TeamCreatePresenceOnlineColor"]
  SETTABLEKS R11 R10 K19 ["BackgroundColor3"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K224 [".StartPage-AdditionalTCCollaboratorBackground"]
  DUPTABLE R11 K32 [{"BackgroundColor3"}]
  LOADK R12 K117 ["$HoverBorder"]
  SETTABLEKS R12 R11 K19 ["BackgroundColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K225 [".StartPage-ColumnTutorialPopup"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K226 ["::UIListLayout"]
  DUPTABLE R16 K230 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R17 K232 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K227 ["FillDirection"]
  GETIMPORT R17 K100 [UDim.new]
  LOADN R18 0
  LOADN R19 32
  CALL R17 2 1
  SETTABLEKS R17 R16 K228 ["Padding"]
  GETIMPORT R17 K234 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K229 ["SortOrder"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K235 [".StartPage-SearchResultRowColumn"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K226 ["::UIListLayout"]
  DUPTABLE R17 K230 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R18 K232 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K227 ["FillDirection"]
  GETIMPORT R18 K100 [UDim.new]
  LOADN R19 0
  LOADN R20 6
  CALL R18 2 1
  SETTABLEKS R18 R17 K228 ["Padding"]
  GETIMPORT R18 K234 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K229 ["SortOrder"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K236 [".StartPage-HomePageColumn"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K226 ["::UIListLayout"]
  DUPTABLE R18 K230 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R19 K232 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K227 ["FillDirection"]
  GETIMPORT R19 K100 [UDim.new]
  LOADN R20 0
  LOADN R21 16
  CALL R19 2 1
  SETTABLEKS R19 R18 K228 ["Padding"]
  GETIMPORT R19 K234 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K229 ["SortOrder"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K237 [".StartPage-PopupTextboxColumn"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K226 ["::UIListLayout"]
  DUPTABLE R19 K230 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K232 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K227 ["FillDirection"]
  GETIMPORT R20 K100 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K228 ["Padding"]
  GETIMPORT R20 K234 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K229 ["SortOrder"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K238 [".StartPage-PopupTextBoxTextButtonColumn"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K226 ["::UIListLayout"]
  DUPTABLE R20 K230 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K232 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K227 ["FillDirection"]
  GETIMPORT R21 K100 [UDim.new]
  LOADN R22 0
  LOADN R23 16
  CALL R21 2 1
  SETTABLEKS R21 R20 K228 ["Padding"]
  GETIMPORT R21 K234 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K229 ["SortOrder"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R7 R8 -1 [81]
  JUMPIFNOT R4 [+22]
  GETTABLEKS R8 R6 K239 ["IsLoggedIn"]
  JUMPIFNOT R8 [+19]
  NAMECALL R8 R5 K240 ["HasInternalPermission"]
  CALL R8 1 1
  JUMPIFNOT R8 [+15]
  MOVE R9 R7
  MOVE R10 R2
  LOADK R11 K241 [".StartPage-TestTemplatesIcon"]
  DUPTABLE R12 K185 [{"Image", "Size"}]
  LOADK R13 K242 ["$CodeSnippet"]
  SETTABLEKS R13 R12 K184 ["Image"]
  LOADK R13 K84 ["$IconSizeM"]
  SETTABLEKS R13 R12 K80 ["Size"]
  CALL R10 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K245 [table.insert]
  CALL R8 -1 0
  DUPTABLE R8 K261 [{"IconSizeS", "IconSize", "IconSizeM", "IconSizeL", "CornerSize4", "CornerSize8", "CornerSize12", "CornerSize16", "CornerSize32", "TextSizeXS", "TextSize", "TextSizeM", "TextSizeL", "TeamCreatePresenceOnlineColor", "AlertColor", "WhiteColor"}]
  GETIMPORT R9 K188 [UDim2.new]
  LOADN R10 0
  LOADN R11 12
  LOADN R12 0
  LOADN R13 12
  CALL R9 4 1
  SETTABLEKS R9 R8 K246 ["IconSizeS"]
  GETIMPORT R9 K188 [UDim2.new]
  LOADN R10 0
  LOADN R11 16
  LOADN R12 0
  LOADN R13 16
  CALL R9 4 1
  SETTABLEKS R9 R8 K247 ["IconSize"]
  GETIMPORT R9 K188 [UDim2.new]
  LOADN R10 0
  LOADN R11 24
  LOADN R12 0
  LOADN R13 24
  CALL R9 4 1
  SETTABLEKS R9 R8 K248 ["IconSizeM"]
  GETIMPORT R9 K188 [UDim2.new]
  LOADN R10 0
  LOADN R11 32
  LOADN R12 0
  LOADN R13 32
  CALL R9 4 1
  SETTABLEKS R9 R8 K249 ["IconSizeL"]
  GETIMPORT R9 K100 [UDim.new]
  LOADN R10 0
  LOADN R11 4
  CALL R9 2 1
  SETTABLEKS R9 R8 K250 ["CornerSize4"]
  GETIMPORT R9 K100 [UDim.new]
  LOADN R10 0
  LOADN R11 8
  CALL R9 2 1
  SETTABLEKS R9 R8 K251 ["CornerSize8"]
  GETIMPORT R9 K100 [UDim.new]
  LOADN R10 0
  LOADN R11 12
  CALL R9 2 1
  SETTABLEKS R9 R8 K252 ["CornerSize12"]
  GETIMPORT R9 K100 [UDim.new]
  LOADN R10 0
  LOADN R11 16
  CALL R9 2 1
  SETTABLEKS R9 R8 K253 ["CornerSize16"]
  GETIMPORT R9 K100 [UDim.new]
  LOADN R10 0
  LOADN R11 32
  CALL R9 2 1
  SETTABLEKS R9 R8 K254 ["CornerSize32"]
  LOADN R9 12
  SETTABLEKS R9 R8 K255 ["TextSizeXS"]
  LOADN R9 16
  SETTABLEKS R9 R8 K70 ["TextSize"]
  LOADN R9 24
  SETTABLEKS R9 R8 K256 ["TextSizeM"]
  LOADN R9 40
  SETTABLEKS R9 R8 K257 ["TextSizeL"]
  GETIMPORT R9 K52 [Color3.fromHex]
  LOADK R10 K6 ["Packages"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K258 ["TeamCreatePresenceOnlineColor"]
  GETIMPORT R9 K52 [Color3.fromHex]
  LOADK R10 K7 ["Framework"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K259 ["AlertColor"]
  GETIMPORT R9 K52 [Color3.fromHex]
  LOADK R10 K8 ["Styling"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K260 ["WhiteColor"]
  MOVE R9 R3
  LOADK R10 K2 ["StartPage"]
  MOVE R11 R7
  MOVE R12 R8
  CALL R9 3 -1
  RETURN R9 -1
