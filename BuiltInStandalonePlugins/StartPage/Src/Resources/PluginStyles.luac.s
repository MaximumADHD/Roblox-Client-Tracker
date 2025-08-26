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
  NEWTABLE R8 0 87
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
  LOADK R15 K32 [".StartPage-Selected"]
  DUPTABLE R16 K33 [{"BackgroundColor3"}]
  LOADK R17 K34 ["$Selected"]
  SETTABLEKS R17 R16 K20 ["BackgroundColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K35 [".StartPage-Contrast"]
  DUPTABLE R17 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R18 K36 ["$Contrast"]
  SETTABLEKS R18 R17 K20 ["BackgroundColor3"]
  LOADN R18 0
  SETTABLEKS R18 R17 K21 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K37 [".StartPage-NoTextStroke"]
  DUPTABLE R18 K39 [{"TextStrokeTransparency"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K38 ["TextStrokeTransparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K40 [".StartPage-TextColor"]
  DUPTABLE R19 K42 [{"TextColor3"}]
  LOADK R20 K43 ["$TextColor"]
  SETTABLEKS R20 R19 K41 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K44 [".StartPage-WhiteTextColor"]
  DUPTABLE R20 K42 [{"TextColor3"}]
  LOADK R21 K45 ["$WhiteColor"]
  SETTABLEKS R21 R20 K41 ["TextColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K46 [".StartPage-ContrastTextColor"]
  DUPTABLE R21 K42 [{"TextColor3"}]
  LOADK R22 K47 ["$ContrastTextColor"]
  SETTABLEKS R22 R21 K41 ["TextColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K48 [".StartPage-DisabledTextColor"]
  DUPTABLE R22 K42 [{"TextColor3"}]
  LOADK R23 K49 ["$Disabled"]
  SETTABLEKS R23 R22 K41 ["TextColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K50 [".StartPage-ButtonBackgroundColor"]
  DUPTABLE R23 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R24 K53 [Color3.fromHex]
  LOADK R25 K54 ["#3C64FA"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K20 ["BackgroundColor3"]
  LOADN R24 0
  SETTABLEKS R24 R23 K21 ["BackgroundTransparency"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K55 [".StartPage-Font"]
  DUPTABLE R24 K58 [{"Font", "LineHeight"}]
  GETIMPORT R25 K61 [Enum.Font.BuilderSans]
  SETTABLEKS R25 R24 K56 ["Font"]
  LOADK R25 K62 [1.142]
  SETTABLEKS R25 R24 K57 ["LineHeight"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K63 [".StartPage-FontBold"]
  DUPTABLE R25 K58 [{"Font", "LineHeight"}]
  GETIMPORT R26 K65 [Enum.Font.BuilderSansBold]
  SETTABLEKS R26 R25 K56 ["Font"]
  LOADK R26 K66 [1.6]
  SETTABLEKS R26 R25 K57 ["LineHeight"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K67 [".StartPage-FontExtraBold"]
  DUPTABLE R26 K58 [{"Font", "LineHeight"}]
  GETIMPORT R27 K69 [Enum.Font.BuilderSansExtraBold]
  SETTABLEKS R27 R26 K56 ["Font"]
  LOADK R27 K66 [1.6]
  SETTABLEKS R27 R26 K57 ["LineHeight"]
  CALL R24 2 1
  SETLIST R8 R9 16 [1]
  MOVE R9 R2
  LOADK R10 K70 [".StartPage-TextSizeXS"]
  DUPTABLE R11 K72 [{"TextSize"}]
  LOADK R12 K73 ["$TextSizeXS"]
  SETTABLEKS R12 R11 K71 ["TextSize"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K74 [".StartPage-TextSize"]
  DUPTABLE R12 K72 [{"TextSize"}]
  LOADK R13 K75 ["$TextSize"]
  SETTABLEKS R13 R12 K71 ["TextSize"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K76 [".StartPage-TextSizeM"]
  DUPTABLE R13 K72 [{"TextSize"}]
  LOADK R14 K77 ["$TextSizeM"]
  SETTABLEKS R14 R13 K71 ["TextSize"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K78 [".StartPage-TextSizeL"]
  DUPTABLE R14 K72 [{"TextSize"}]
  LOADK R15 K79 ["$TextSizeL"]
  SETTABLEKS R15 R14 K71 ["TextSize"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K80 [".StartPage-IconSize"]
  DUPTABLE R15 K82 [{"Size"}]
  LOADK R16 K83 ["$IconSize"]
  SETTABLEKS R16 R15 K81 ["Size"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K84 [".StartPage-IconSizeM"]
  DUPTABLE R16 K82 [{"Size"}]
  LOADK R17 K85 ["$IconSizeM"]
  SETTABLEKS R17 R16 K81 ["Size"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K86 [".StartPage-RoundedCorner4 ::UICorner"]
  DUPTABLE R17 K88 [{"CornerRadius"}]
  LOADK R18 K89 ["$CornerSize4"]
  SETTABLEKS R18 R17 K87 ["CornerRadius"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K90 [".StartPage-RoundedCorner8 ::UICorner"]
  DUPTABLE R18 K88 [{"CornerRadius"}]
  LOADK R19 K91 ["$CornerSize8"]
  SETTABLEKS R19 R18 K87 ["CornerRadius"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K92 [".StartPage-RoundedCorner12 ::UICorner"]
  DUPTABLE R19 K88 [{"CornerRadius"}]
  LOADK R20 K93 ["$CornerSize12"]
  SETTABLEKS R20 R19 K87 ["CornerRadius"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K94 [".StartPage-RoundedCorner16 ::UICorner"]
  DUPTABLE R20 K88 [{"CornerRadius"}]
  LOADK R21 K95 ["$CornerSize16"]
  SETTABLEKS R21 R20 K87 ["CornerRadius"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K96 [".StartPage-RoundedCorner32 ::UICorner"]
  DUPTABLE R21 K88 [{"CornerRadius"}]
  LOADK R22 K97 ["$CornerSize32"]
  SETTABLEKS R22 R21 K87 ["CornerRadius"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K98 [".StartPage-Circular ::UICorner"]
  DUPTABLE R22 K88 [{"CornerRadius"}]
  GETIMPORT R23 K101 [UDim.new]
  LOADN R24 1
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K87 ["CornerRadius"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K102 [".StartPage-SearchBar"]
  DUPTABLE R23 K105 [{"TextXAlignment", "Font", "BorderSizePixel", "BackgroundColor3"}]
  GETIMPORT R24 K107 [Enum.TextXAlignment.Left]
  SETTABLEKS R24 R23 K103 ["TextXAlignment"]
  GETIMPORT R24 K61 [Enum.Font.BuilderSans]
  SETTABLEKS R24 R23 K56 ["Font"]
  LOADN R24 0
  SETTABLEKS R24 R23 K104 ["BorderSizePixel"]
  LOADK R24 K25 ["$PageBackground"]
  SETTABLEKS R24 R23 K20 ["BackgroundColor3"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K108 [".StartPage-Highlight"]
  DUPTABLE R24 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R25 K53 [Color3.fromHex]
  LOADK R26 K109 ["#BBBCBE"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K20 ["BackgroundColor3"]
  LOADK R25 K110 [0.92]
  SETTABLEKS R25 R24 K21 ["BackgroundTransparency"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K111 [".StartPage-TileBorder ::UIStroke"]
  DUPTABLE R25 K115 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R26 K117 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R26 R25 K112 ["ApplyStrokeMode"]
  LOADK R26 K118 ["$HoverBorder"]
  SETTABLEKS R26 R25 K113 ["Color"]
  LOADN R26 1
  SETTABLEKS R26 R25 K114 ["Thickness"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K119 [".StartPage-PillPaddingS ::UIPadding"]
  DUPTABLE R26 K124 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R27 K101 [UDim.new]
  LOADN R28 0
  LOADN R29 10
  CALL R27 2 1
  SETTABLEKS R27 R26 K120 ["PaddingLeft"]
  GETIMPORT R27 K101 [UDim.new]
  LOADN R28 0
  LOADN R29 10
  CALL R27 2 1
  SETTABLEKS R27 R26 K121 ["PaddingRight"]
  GETIMPORT R27 K101 [UDim.new]
  LOADN R28 0
  LOADN R29 4
  CALL R27 2 1
  SETTABLEKS R27 R26 K122 ["PaddingTop"]
  GETIMPORT R27 K101 [UDim.new]
  LOADN R28 0
  LOADN R29 4
  CALL R27 2 1
  SETTABLEKS R27 R26 K123 ["PaddingBottom"]
  CALL R24 2 1
  SETLIST R8 R9 16 [17]
  MOVE R9 R2
  LOADK R10 K125 [".StartPage-PillPadding ::UIPadding"]
  DUPTABLE R11 K124 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R12 K101 [UDim.new]
  LOADN R13 0
  LOADN R14 12
  CALL R12 2 1
  SETTABLEKS R12 R11 K120 ["PaddingLeft"]
  GETIMPORT R12 K101 [UDim.new]
  LOADN R13 0
  LOADN R14 12
  CALL R12 2 1
  SETTABLEKS R12 R11 K121 ["PaddingRight"]
  GETIMPORT R12 K101 [UDim.new]
  LOADN R13 0
  LOADN R14 8
  CALL R12 2 1
  SETTABLEKS R12 R11 K122 ["PaddingTop"]
  GETIMPORT R12 K101 [UDim.new]
  LOADN R13 0
  LOADN R14 8
  CALL R12 2 1
  SETTABLEKS R12 R11 K123 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K126 [".StartPage-ButtonPadding ::UIPadding"]
  DUPTABLE R12 K124 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R13 K101 [UDim.new]
  LOADN R14 0
  LOADN R15 20
  CALL R13 2 1
  SETTABLEKS R13 R12 K120 ["PaddingLeft"]
  GETIMPORT R13 K101 [UDim.new]
  LOADN R14 0
  LOADN R15 20
  CALL R13 2 1
  SETTABLEKS R13 R12 K121 ["PaddingRight"]
  GETIMPORT R13 K101 [UDim.new]
  LOADN R14 0
  LOADN R15 12
  CALL R13 2 1
  SETTABLEKS R13 R12 K122 ["PaddingTop"]
  GETIMPORT R13 K101 [UDim.new]
  LOADN R14 0
  LOADN R15 12
  CALL R13 2 1
  SETTABLEKS R13 R12 K123 ["PaddingBottom"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K127 [".StartPage-TilePadding ::UIPadding"]
  DUPTABLE R13 K124 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K101 [UDim.new]
  LOADN R15 0
  LOADN R16 12
  CALL R14 2 1
  SETTABLEKS R14 R13 K120 ["PaddingLeft"]
  GETIMPORT R14 K101 [UDim.new]
  LOADN R15 0
  LOADN R16 12
  CALL R14 2 1
  SETTABLEKS R14 R13 K121 ["PaddingRight"]
  GETIMPORT R14 K101 [UDim.new]
  LOADN R15 0
  LOADN R16 12
  CALL R14 2 1
  SETTABLEKS R14 R13 K122 ["PaddingTop"]
  GETIMPORT R14 K101 [UDim.new]
  LOADN R15 0
  LOADN R16 12
  CALL R14 2 1
  SETTABLEKS R14 R13 K123 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K128 [".StartPage-TablePadding ::UIPadding"]
  DUPTABLE R14 K129 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R15 K101 [UDim.new]
  LOADN R16 0
  LOADN R17 10
  CALL R15 2 1
  SETTABLEKS R15 R14 K122 ["PaddingTop"]
  GETIMPORT R15 K101 [UDim.new]
  LOADN R16 0
  LOADN R17 10
  CALL R15 2 1
  SETTABLEKS R15 R14 K123 ["PaddingBottom"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K130 [".StartPage-DescPadding ::UIPadding"]
  DUPTABLE R15 K124 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R16 K101 [UDim.new]
  LOADN R17 0
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K120 ["PaddingLeft"]
  GETIMPORT R16 K101 [UDim.new]
  LOADN R17 0
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K121 ["PaddingRight"]
  GETIMPORT R16 K101 [UDim.new]
  LOADN R17 0
  LOADN R18 12
  CALL R16 2 1
  SETTABLEKS R16 R15 K122 ["PaddingTop"]
  GETIMPORT R16 K101 [UDim.new]
  LOADN R17 0
  LOADN R18 12
  CALL R16 2 1
  SETTABLEKS R16 R15 K123 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K131 [".StartPage-SearchRowPadding ::UIPadding"]
  DUPTABLE R16 K124 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R17 K101 [UDim.new]
  LOADN R18 0
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K120 ["PaddingLeft"]
  GETIMPORT R17 K101 [UDim.new]
  LOADN R18 0
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K121 ["PaddingRight"]
  GETIMPORT R17 K101 [UDim.new]
  LOADN R18 0
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K122 ["PaddingTop"]
  GETIMPORT R17 K101 [UDim.new]
  LOADN R18 0
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K123 ["PaddingBottom"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K132 [".StartPage-GamePagePadding ::UIPadding"]
  DUPTABLE R17 K124 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R18 K101 [UDim.new]
  LOADN R19 0
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K120 ["PaddingLeft"]
  GETIMPORT R18 K101 [UDim.new]
  LOADN R19 0
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K121 ["PaddingRight"]
  GETIMPORT R18 K101 [UDim.new]
  LOADN R19 0
  LOADN R20 17
  CALL R18 2 1
  SETTABLEKS R18 R17 K122 ["PaddingTop"]
  GETIMPORT R18 K101 [UDim.new]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K123 ["PaddingBottom"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K133 [".StartPage-LeftPadding32 ::UIPadding"]
  DUPTABLE R18 K124 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R19 K101 [UDim.new]
  LOADN R20 0
  LOADN R21 32
  CALL R19 2 1
  SETTABLEKS R19 R18 K120 ["PaddingLeft"]
  GETIMPORT R19 K101 [UDim.new]
  LOADN R20 0
  LOADN R21 15
  CALL R19 2 1
  SETTABLEKS R19 R18 K121 ["PaddingRight"]
  GETIMPORT R19 K101 [UDim.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K122 ["PaddingTop"]
  GETIMPORT R19 K101 [UDim.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K123 ["PaddingBottom"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K134 [".StartPage-PaddingX8 ::UIPadding"]
  DUPTABLE R19 K124 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R20 K101 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K120 ["PaddingLeft"]
  GETIMPORT R20 K101 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K121 ["PaddingRight"]
  GETIMPORT R20 K101 [UDim.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K122 ["PaddingTop"]
  GETIMPORT R20 K101 [UDim.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K123 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K135 [".StartPage-PaddingY8 ::UIPadding"]
  DUPTABLE R20 K124 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R21 K101 [UDim.new]
  LOADN R22 0
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K120 ["PaddingLeft"]
  GETIMPORT R21 K101 [UDim.new]
  LOADN R22 0
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K121 ["PaddingRight"]
  GETIMPORT R21 K101 [UDim.new]
  LOADN R22 0
  LOADN R23 8
  CALL R21 2 1
  SETTABLEKS R21 R20 K122 ["PaddingTop"]
  GETIMPORT R21 K101 [UDim.new]
  LOADN R22 0
  LOADN R23 8
  CALL R21 2 1
  SETTABLEKS R21 R20 K123 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K136 [".StartPage-Padding16 ::UIPadding"]
  DUPTABLE R21 K124 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R22 K101 [UDim.new]
  LOADN R23 0
  LOADN R24 16
  CALL R22 2 1
  SETTABLEKS R22 R21 K120 ["PaddingLeft"]
  GETIMPORT R22 K101 [UDim.new]
  LOADN R23 0
  LOADN R24 16
  CALL R22 2 1
  SETTABLEKS R22 R21 K121 ["PaddingRight"]
  GETIMPORT R22 K101 [UDim.new]
  LOADN R23 0
  LOADN R24 16
  CALL R22 2 1
  SETTABLEKS R22 R21 K122 ["PaddingTop"]
  GETIMPORT R22 K101 [UDim.new]
  LOADN R23 0
  LOADN R24 16
  CALL R22 2 1
  SETTABLEKS R22 R21 K123 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K137 [".StartPage-Padding24 ::UIPadding"]
  DUPTABLE R22 K124 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R23 K101 [UDim.new]
  LOADN R24 0
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K120 ["PaddingLeft"]
  GETIMPORT R23 K101 [UDim.new]
  LOADN R24 0
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K121 ["PaddingRight"]
  GETIMPORT R23 K101 [UDim.new]
  LOADN R24 0
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K122 ["PaddingTop"]
  GETIMPORT R23 K101 [UDim.new]
  LOADN R24 0
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K123 ["PaddingBottom"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K138 [".StartPage-Padding32 ::UIPadding"]
  DUPTABLE R23 K124 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R24 K101 [UDim.new]
  LOADN R25 0
  LOADN R26 32
  CALL R24 2 1
  SETTABLEKS R24 R23 K120 ["PaddingLeft"]
  GETIMPORT R24 K101 [UDim.new]
  LOADN R25 0
  LOADN R26 32
  CALL R24 2 1
  SETTABLEKS R24 R23 K121 ["PaddingRight"]
  GETIMPORT R24 K101 [UDim.new]
  LOADN R25 0
  LOADN R26 32
  CALL R24 2 1
  SETTABLEKS R24 R23 K122 ["PaddingTop"]
  GETIMPORT R24 K101 [UDim.new]
  LOADN R25 0
  LOADN R26 32
  CALL R24 2 1
  SETTABLEKS R24 R23 K123 ["PaddingBottom"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K139 [".StartPage-ContextMenuPadding ::UIPadding"]
  DUPTABLE R24 K124 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R25 K101 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K120 ["PaddingLeft"]
  GETIMPORT R25 K101 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K121 ["PaddingRight"]
  GETIMPORT R25 K101 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K122 ["PaddingTop"]
  GETIMPORT R25 K101 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K123 ["PaddingBottom"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K140 [".StartPage-ContextMenuRowPadding ::UIPadding"]
  DUPTABLE R25 K124 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R26 K101 [UDim.new]
  LOADN R27 0
  LOADN R28 8
  CALL R26 2 1
  SETTABLEKS R26 R25 K120 ["PaddingLeft"]
  GETIMPORT R26 K101 [UDim.new]
  LOADN R27 0
  LOADN R28 8
  CALL R26 2 1
  SETTABLEKS R26 R25 K121 ["PaddingRight"]
  GETIMPORT R26 K101 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K122 ["PaddingTop"]
  GETIMPORT R26 K101 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K123 ["PaddingBottom"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K141 [".StartPage-PadScrollingCarouselLeft ::UIPadding"]
  DUPTABLE R26 K142 [{"PaddingLeft"}]
  GETIMPORT R27 K101 [UDim.new]
  LOADN R28 0
  LOADN R29 2
  CALL R27 2 1
  SETTABLEKS R27 R26 K120 ["PaddingLeft"]
  CALL R24 2 1
  SETLIST R8 R9 16 [33]
  MOVE R9 R2
  LOADK R10 K143 [".StartPage-Anchor-Bottom-Right"]
  DUPTABLE R11 K145 [{"AnchorPoint"}]
  GETIMPORT R12 K147 [Vector2.new]
  LOADN R13 1
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K144 ["AnchorPoint"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K148 [".StartPage-Border ::UIStroke"]
  DUPTABLE R12 K150 [{"ApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R13 K117 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R13 R12 K112 ["ApplyStrokeMode"]
  LOADK R13 K151 ["$Border"]
  SETTABLEKS R13 R12 K113 ["Color"]
  LOADK R13 K152 [0.88]
  SETTABLEKS R13 R12 K149 ["Transparency"]
  LOADN R13 1
  SETTABLEKS R13 R12 K114 ["Thickness"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K153 [".StartPage-NoBorder"]
  DUPTABLE R13 K154 [{"BorderSizePixel"}]
  LOADN R14 0
  SETTABLEKS R14 R13 K104 ["BorderSizePixel"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K155 [".StartPage-BorderColor"]
  DUPTABLE R14 K156 [{"BackgroundColor3", "Transparency"}]
  LOADK R15 K151 ["$Border"]
  SETTABLEKS R15 R14 K20 ["BackgroundColor3"]
  LOADK R15 K152 [0.88]
  SETTABLEKS R15 R14 K149 ["Transparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K157 [".StartPage-StandardTextColor"]
  DUPTABLE R15 K42 [{"TextColor3"}]
  LOADK R16 K158 ["$Standard"]
  SETTABLEKS R16 R15 K41 ["TextColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K159 [".StartPage-StandardDarkTextColor"]
  DUPTABLE R16 K42 [{"TextColor3"}]
  LOADK R17 K160 ["$StandardDark"]
  SETTABLEKS R17 R16 K41 ["TextColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K161 [".StartPage-MutedTextColor"]
  DUPTABLE R17 K42 [{"TextColor3"}]
  LOADK R18 K162 ["$SemanticColorContentMuted"]
  SETTABLEKS R18 R17 K41 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K163 [".StartPage-LinkTextColor"]
  DUPTABLE R18 K42 [{"TextColor3"}]
  LOADK R19 K164 ["$SemanticColorContentAction"]
  SETTABLEKS R19 R18 K41 ["TextColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K165 [".StartPage-Standard"]
  DUPTABLE R19 K33 [{"BackgroundColor3"}]
  LOADK R20 K158 ["$Standard"]
  SETTABLEKS R20 R19 K20 ["BackgroundColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K166 [".StartPage-StandardDarkBackground"]
  DUPTABLE R20 K33 [{"BackgroundColor3"}]
  LOADK R21 K160 ["$StandardDark"]
  SETTABLEKS R21 R20 K20 ["BackgroundColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K167 [".StartPage-TileBackground"]
  DUPTABLE R21 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K168 ["$TileBackground"]
  SETTABLEKS R22 R21 K20 ["BackgroundColor3"]
  LOADN R22 0
  SETTABLEKS R22 R21 K21 ["BackgroundTransparency"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K169 [":hover :: UIStroke"]
  DUPTABLE R25 K171 [{"StrokeApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R26 K117 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R26 R25 K170 ["StrokeApplyStrokeMode"]
  LOADK R26 K151 ["$Border"]
  SETTABLEKS R26 R25 K113 ["Color"]
  LOADK R26 K152 [0.88]
  SETTABLEKS R26 R25 K149 ["Transparency"]
  LOADN R26 2
  SETTABLEKS R26 R25 K114 ["Thickness"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K172 [".StartPage-PillBackground"]
  DUPTABLE R22 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R23 K173 ["$PillBackground"]
  SETTABLEKS R23 R22 K20 ["BackgroundColor3"]
  LOADN R23 0
  SETTABLEKS R23 R22 K21 ["BackgroundTransparency"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K174 [".StartPage-MenuItemSelectedBackground"]
  DUPTABLE R23 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R24 K175 ["$MenuItemSelectedBackground"]
  SETTABLEKS R24 R23 K20 ["BackgroundColor3"]
  LOADN R24 0
  SETTABLEKS R24 R23 K21 ["BackgroundTransparency"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K176 [".StartPage-ShimmerBackground"]
  DUPTABLE R24 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R25 K177 ["$ShimmerBackground"]
  SETTABLEKS R25 R24 K20 ["BackgroundColor3"]
  LOADK R25 K178 ["$ShimmerBackgroundTransparency"]
  SETTABLEKS R25 R24 K21 ["BackgroundTransparency"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K179 [".StartPage-ShimmerForeground"]
  DUPTABLE R25 K33 [{"BackgroundColor3"}]
  LOADK R26 K180 ["$ShimmerForeground"]
  SETTABLEKS R26 R25 K20 ["BackgroundColor3"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K181 [".StartPage-ShimmerGradient"]
  DUPTABLE R26 K182 [{"Transparency"}]
  LOADK R27 K183 ["$ShimmerGradientTransparency"]
  SETTABLEKS R27 R26 K149 ["Transparency"]
  CALL R24 2 1
  SETLIST R8 R9 16 [49]
  MOVE R9 R2
  LOADK R10 K184 [".StartPage-NoExperiences"]
  DUPTABLE R11 K186 [{"Image", "Size"}]
  LOADK R12 K187 ["$NoExperiences"]
  SETTABLEKS R12 R11 K185 ["Image"]
  JUMPIFNOT R5 [+8]
  GETIMPORT R12 K189 [UDim2.new]
  LOADN R13 0
  LOADN R14 64
  LOADN R15 0
  LOADN R16 180
  CALL R12 4 1
  JUMP [+7]
  GETIMPORT R12 K189 [UDim2.new]
  LOADN R13 0
  LOADN R14 96
  LOADN R15 0
  LOADN R16 96
  CALL R12 4 1
  SETTABLEKS R12 R11 K81 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K190 [".StartPage-RightIcon"]
  DUPTABLE R12 K186 [{"Image", "Size"}]
  LOADK R13 K191 ["$RightChevron"]
  SETTABLEKS R13 R12 K185 ["Image"]
  LOADK R13 K85 ["$IconSizeM"]
  SETTABLEKS R13 R12 K81 ["Size"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K192 [".StartPage-HomeIcon"]
  DUPTABLE R13 K186 [{"Image", "Size"}]
  LOADK R14 K193 ["$Home"]
  SETTABLEKS R14 R13 K185 ["Image"]
  LOADK R14 K85 ["$IconSizeM"]
  SETTABLEKS R14 R13 K81 ["Size"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K194 [".StartPage-PlusIcon"]
  DUPTABLE R14 K186 [{"Image", "Size"}]
  LOADK R15 K195 ["$Plus"]
  SETTABLEKS R15 R14 K185 ["Image"]
  GETIMPORT R15 K189 [UDim2.new]
  LOADN R16 0
  LOADN R17 16
  LOADN R18 0
  LOADN R19 16
  CALL R15 4 1
  SETTABLEKS R15 R14 K81 ["Size"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K196 [".StartPage-GridIcon"]
  DUPTABLE R15 K186 [{"Image", "Size"}]
  LOADK R16 K197 ["$Grid"]
  SETTABLEKS R16 R15 K185 ["Image"]
  GETIMPORT R16 K189 [UDim2.new]
  LOADN R17 0
  LOADN R18 24
  LOADN R19 0
  LOADN R20 24
  CALL R16 4 1
  SETTABLEKS R16 R15 K81 ["Size"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K198 [".StartPage-ListIcon"]
  DUPTABLE R16 K186 [{"Image", "Size"}]
  LOADK R17 K199 ["$List"]
  SETTABLEKS R17 R16 K185 ["Image"]
  GETIMPORT R17 K189 [UDim2.new]
  LOADN R18 0
  LOADN R19 24
  LOADN R20 0
  LOADN R21 24
  CALL R17 4 1
  SETTABLEKS R17 R16 K81 ["Size"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K200 [".StartPage-AlertIcon"]
  DUPTABLE R17 K186 [{"Image", "Size"}]
  LOADK R18 K201 ["$Alert"]
  SETTABLEKS R18 R17 K185 ["Image"]
  LOADK R18 K83 ["$IconSize"]
  SETTABLEKS R18 R17 K81 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K202 [".StartPage-ExperiencesIcon"]
  DUPTABLE R18 K186 [{"Image", "Size"}]
  LOADK R19 K203 ["$Experiences"]
  SETTABLEKS R19 R18 K185 ["Image"]
  LOADK R19 K85 ["$IconSizeM"]
  SETTABLEKS R19 R18 K81 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K204 [".StartPage-ArchiveIcon"]
  DUPTABLE R19 K186 [{"Image", "Size"}]
  LOADK R20 K205 ["$Archive"]
  SETTABLEKS R20 R19 K185 ["Image"]
  LOADK R20 K85 ["$IconSizeM"]
  SETTABLEKS R20 R19 K81 ["Size"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K206 [".StartPage-TemplatesIcon"]
  DUPTABLE R20 K186 [{"Image", "Size"}]
  LOADK R21 K207 ["$Templates"]
  SETTABLEKS R21 R20 K185 ["Image"]
  LOADK R21 K85 ["$IconSizeM"]
  SETTABLEKS R21 R20 K81 ["Size"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K208 [".StartPage-RecentsIcon"]
  DUPTABLE R21 K186 [{"Image", "Size"}]
  LOADK R22 K209 ["$Recents"]
  SETTABLEKS R22 R21 K185 ["Image"]
  LOADK R22 K85 ["$IconSizeM"]
  SETTABLEKS R22 R21 K81 ["Size"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K210 [".StartPage-SearchIcon"]
  DUPTABLE R22 K186 [{"Image", "Size"}]
  LOADK R23 K211 ["$Search"]
  SETTABLEKS R23 R22 K185 ["Image"]
  LOADK R23 K85 ["$IconSizeM"]
  SETTABLEKS R23 R22 K81 ["Size"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K212 [".StartPage-KebabIcon"]
  DUPTABLE R23 K186 [{"Image", "Size"}]
  LOADK R24 K213 ["$Kebab"]
  SETTABLEKS R24 R23 K185 ["Image"]
  LOADK R24 K214 ["$IconSizeL"]
  SETTABLEKS R24 R23 K81 ["Size"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K215 [".StartPage-CancelIcon"]
  DUPTABLE R24 K186 [{"Image", "Size"}]
  LOADK R25 K216 ["$Cancel"]
  SETTABLEKS R25 R24 K185 ["Image"]
  LOADK R25 K217 ["$IconSizeS"]
  SETTABLEKS R25 R24 K81 ["Size"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K218 [".StartPage-CancelWhiteIcon"]
  DUPTABLE R25 K186 [{"Image", "Size"}]
  LOADK R26 K219 ["$CancelWhite"]
  SETTABLEKS R26 R25 K185 ["Image"]
  LOADK R26 K217 ["$IconSizeS"]
  SETTABLEKS R26 R25 K81 ["Size"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K220 [".StartPage-Chevron"]
  DUPTABLE R26 K221 [{"Image"}]
  LOADK R27 K222 ["$Chevron"]
  SETTABLEKS R27 R26 K185 ["Image"]
  CALL R24 2 1
  SETLIST R8 R9 16 [65]
  MOVE R9 R2
  LOADK R10 K223 [".StartPage-TeamCreateOnlineBackground"]
  DUPTABLE R11 K33 [{"BackgroundColor3"}]
  LOADK R12 K224 ["$TeamCreatePresenceOnlineColor"]
  SETTABLEKS R12 R11 K20 ["BackgroundColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K225 [".StartPage-AdditionalTCCollaboratorBackground"]
  DUPTABLE R12 K33 [{"BackgroundColor3"}]
  LOADK R13 K118 ["$HoverBorder"]
  SETTABLEKS R13 R12 K20 ["BackgroundColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K226 [".StartPage-ColumnTutorialPopup"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K227 ["::UIListLayout"]
  DUPTABLE R17 K231 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R18 K233 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K228 ["FillDirection"]
  GETIMPORT R18 K101 [UDim.new]
  LOADN R19 0
  LOADN R20 32
  CALL R18 2 1
  SETTABLEKS R18 R17 K229 ["Padding"]
  GETIMPORT R18 K235 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K230 ["SortOrder"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K236 [".StartPage-SearchResultRowColumn"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K227 ["::UIListLayout"]
  DUPTABLE R18 K231 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R19 K233 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K228 ["FillDirection"]
  GETIMPORT R19 K101 [UDim.new]
  LOADN R20 0
  LOADN R21 6
  CALL R19 2 1
  SETTABLEKS R19 R18 K229 ["Padding"]
  GETIMPORT R19 K235 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K230 ["SortOrder"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K237 [".StartPage-HomePageColumn"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K227 ["::UIListLayout"]
  DUPTABLE R19 K231 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K233 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K228 ["FillDirection"]
  GETIMPORT R20 K101 [UDim.new]
  LOADN R21 0
  LOADN R22 16
  CALL R20 2 1
  SETTABLEKS R20 R19 K229 ["Padding"]
  GETIMPORT R20 K235 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K230 ["SortOrder"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K238 [".StartPage-PopupTextboxColumn"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K227 ["::UIListLayout"]
  DUPTABLE R20 K231 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K233 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K228 ["FillDirection"]
  GETIMPORT R21 K101 [UDim.new]
  LOADN R22 0
  LOADN R23 8
  CALL R21 2 1
  SETTABLEKS R21 R20 K229 ["Padding"]
  GETIMPORT R21 K235 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K230 ["SortOrder"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K239 [".StartPage-PopupTextBoxTextButtonColumn"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K227 ["::UIListLayout"]
  DUPTABLE R21 K231 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K233 [Enum.FillDirection.Vertical]
  SETTABLEKS R22 R21 K228 ["FillDirection"]
  GETIMPORT R22 K101 [UDim.new]
  LOADN R23 0
  LOADN R24 16
  CALL R22 2 1
  SETTABLEKS R22 R21 K229 ["Padding"]
  GETIMPORT R22 K235 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K230 ["SortOrder"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R8 R9 -1 [81]
  JUMPIFNOT R4 [+22]
  GETTABLEKS R9 R7 K240 ["IsLoggedIn"]
  JUMPIFNOT R9 [+19]
  NAMECALL R9 R6 K241 ["HasInternalPermission"]
  CALL R9 1 1
  JUMPIFNOT R9 [+15]
  MOVE R10 R8
  MOVE R11 R2
  LOADK R12 K242 [".StartPage-TestTemplatesIcon"]
  DUPTABLE R13 K186 [{"Image", "Size"}]
  LOADK R14 K243 ["$CodeSnippet"]
  SETTABLEKS R14 R13 K185 ["Image"]
  LOADK R14 K85 ["$IconSizeM"]
  SETTABLEKS R14 R13 K81 ["Size"]
  CALL R11 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R9 K246 [table.insert]
  CALL R9 -1 0
  DUPTABLE R9 K262 [{"IconSizeS", "IconSize", "IconSizeM", "IconSizeL", "CornerSize4", "CornerSize8", "CornerSize12", "CornerSize16", "CornerSize32", "TextSizeXS", "TextSize", "TextSizeM", "TextSizeL", "TeamCreatePresenceOnlineColor", "AlertColor", "WhiteColor"}]
  GETIMPORT R10 K189 [UDim2.new]
  LOADN R11 0
  LOADN R12 12
  LOADN R13 0
  LOADN R14 12
  CALL R10 4 1
  SETTABLEKS R10 R9 K247 ["IconSizeS"]
  GETIMPORT R10 K189 [UDim2.new]
  LOADN R11 0
  LOADN R12 16
  LOADN R13 0
  LOADN R14 16
  CALL R10 4 1
  SETTABLEKS R10 R9 K248 ["IconSize"]
  GETIMPORT R10 K189 [UDim2.new]
  LOADN R11 0
  LOADN R12 24
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K249 ["IconSizeM"]
  GETIMPORT R10 K189 [UDim2.new]
  LOADN R11 0
  LOADN R12 32
  LOADN R13 0
  LOADN R14 32
  CALL R10 4 1
  SETTABLEKS R10 R9 K250 ["IconSizeL"]
  GETIMPORT R10 K101 [UDim.new]
  LOADN R11 0
  LOADN R12 4
  CALL R10 2 1
  SETTABLEKS R10 R9 K251 ["CornerSize4"]
  GETIMPORT R10 K101 [UDim.new]
  LOADN R11 0
  LOADN R12 8
  CALL R10 2 1
  SETTABLEKS R10 R9 K252 ["CornerSize8"]
  GETIMPORT R10 K101 [UDim.new]
  LOADN R11 0
  LOADN R12 12
  CALL R10 2 1
  SETTABLEKS R10 R9 K253 ["CornerSize12"]
  GETIMPORT R10 K101 [UDim.new]
  LOADN R11 0
  LOADN R12 16
  CALL R10 2 1
  SETTABLEKS R10 R9 K254 ["CornerSize16"]
  GETIMPORT R10 K101 [UDim.new]
  LOADN R11 0
  LOADN R12 32
  CALL R10 2 1
  SETTABLEKS R10 R9 K255 ["CornerSize32"]
  LOADN R10 12
  SETTABLEKS R10 R9 K256 ["TextSizeXS"]
  LOADN R10 16
  SETTABLEKS R10 R9 K71 ["TextSize"]
  LOADN R10 24
  SETTABLEKS R10 R9 K257 ["TextSizeM"]
  LOADN R10 40
  SETTABLEKS R10 R9 K258 ["TextSizeL"]
  GETIMPORT R10 K53 [Color3.fromHex]
  LOADK R11 K7 ["Framework"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K259 ["TeamCreatePresenceOnlineColor"]
  GETIMPORT R10 K53 [Color3.fromHex]
  LOADK R11 K8 ["Styling"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K260 ["AlertColor"]
  GETIMPORT R10 K53 [Color3.fromHex]
  LOADK R11 K9 ["createStyleRule"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K261 ["WhiteColor"]
  MOVE R10 R3
  LOADK R11 K2 ["StartPage"]
  MOVE R12 R8
  MOVE R13 R9
  CALL R10 3 -1
  RETURN R10 -1
