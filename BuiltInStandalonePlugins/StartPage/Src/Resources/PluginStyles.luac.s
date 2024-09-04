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
  NEWTABLE R4 0 76
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
  LOADK R12 K27 [".StartPage-NoTextStroke"]
  DUPTABLE R13 K29 [{"TextStrokeTransparency"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["TextStrokeTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K30 [".StartPage-TextColor"]
  DUPTABLE R14 K32 [{"TextColor3"}]
  LOADK R15 K33 ["$TextColor"]
  SETTABLEKS R15 R14 K31 ["TextColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K34 [".StartPage-ContrastTextColor"]
  DUPTABLE R15 K32 [{"TextColor3"}]
  LOADK R16 K35 ["$ContrastTextColor"]
  SETTABLEKS R16 R15 K31 ["TextColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K36 [".StartPage-DisabledTextColor"]
  DUPTABLE R16 K32 [{"TextColor3"}]
  LOADK R17 K37 ["$Disabled"]
  SETTABLEKS R17 R16 K31 ["TextColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K38 [".StartPage-ButtonBackgroundColor"]
  DUPTABLE R17 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R18 K41 [Color3.fromHex]
  LOADK R19 K42 ["#3C64FA"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K12 ["BackgroundColor3"]
  LOADN R18 0
  SETTABLEKS R18 R17 K13 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K43 [".StartPage-Font"]
  DUPTABLE R18 K46 [{"Font", "LineHeight"}]
  GETIMPORT R19 K49 [Enum.Font.BuilderSans]
  SETTABLEKS R19 R18 K44 ["Font"]
  LOADK R19 K50 [1.142]
  SETTABLEKS R19 R18 K45 ["LineHeight"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K51 [".StartPage-FontBold"]
  DUPTABLE R19 K46 [{"Font", "LineHeight"}]
  GETIMPORT R20 K53 [Enum.Font.BuilderSansBold]
  SETTABLEKS R20 R19 K44 ["Font"]
  LOADK R20 K54 [1.6]
  SETTABLEKS R20 R19 K45 ["LineHeight"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K55 [".StartPage-FontExtraBold"]
  DUPTABLE R20 K46 [{"Font", "LineHeight"}]
  GETIMPORT R21 K57 [Enum.Font.BuilderSansExtraBold]
  SETTABLEKS R21 R20 K44 ["Font"]
  LOADK R21 K54 [1.6]
  SETTABLEKS R21 R20 K45 ["LineHeight"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K58 [".StartPage-TextSizeXS"]
  DUPTABLE R21 K60 [{"TextSize"}]
  LOADK R22 K61 ["$TextSizeXS"]
  SETTABLEKS R22 R21 K59 ["TextSize"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K62 [".StartPage-TextSize"]
  DUPTABLE R22 K60 [{"TextSize"}]
  LOADK R23 K63 ["$TextSize"]
  SETTABLEKS R23 R22 K59 ["TextSize"]
  CALL R20 2 1
  SETLIST R4 R5 16 [1]
  MOVE R5 R2
  LOADK R6 K64 [".StartPage-TextSizeM"]
  DUPTABLE R7 K60 [{"TextSize"}]
  LOADK R8 K65 ["$TextSizeM"]
  SETTABLEKS R8 R7 K59 ["TextSize"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K66 [".StartPage-TextSizeL"]
  DUPTABLE R8 K60 [{"TextSize"}]
  LOADK R9 K67 ["$TextSizeL"]
  SETTABLEKS R9 R8 K59 ["TextSize"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K68 [".StartPage-IconSize"]
  DUPTABLE R9 K70 [{"Size"}]
  LOADK R10 K71 ["$IconSize"]
  SETTABLEKS R10 R9 K69 ["Size"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K72 [".StartPage-IconSizeM"]
  DUPTABLE R10 K70 [{"Size"}]
  LOADK R11 K73 ["$IconSizeM"]
  SETTABLEKS R11 R10 K69 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K74 [".StartPage-RoundedCorner8 ::UICorner"]
  DUPTABLE R11 K76 [{"CornerRadius"}]
  LOADK R12 K77 ["$CornerSize8"]
  SETTABLEKS R12 R11 K75 ["CornerRadius"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K78 [".StartPage-RoundedCorner12 ::UICorner"]
  DUPTABLE R12 K76 [{"CornerRadius"}]
  LOADK R13 K79 ["$CornerSize12"]
  SETTABLEKS R13 R12 K75 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K80 [".StartPage-RoundedCorner16 ::UICorner"]
  DUPTABLE R13 K76 [{"CornerRadius"}]
  LOADK R14 K81 ["$CornerSize16"]
  SETTABLEKS R14 R13 K75 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K82 [".StartPage-RoundedCorner32 ::UICorner"]
  DUPTABLE R14 K76 [{"CornerRadius"}]
  LOADK R15 K83 ["$CornerSize32"]
  SETTABLEKS R15 R14 K75 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K84 [".StartPage-Circular ::UICorner"]
  DUPTABLE R15 K76 [{"CornerRadius"}]
  GETIMPORT R16 K87 [UDim.new]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K75 ["CornerRadius"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K88 [".StartPage-SearchBar"]
  DUPTABLE R16 K91 [{"TextXAlignment", "Font", "BorderSizePixel", "BackgroundColor3"}]
  GETIMPORT R17 K93 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K89 ["TextXAlignment"]
  GETIMPORT R17 K49 [Enum.Font.BuilderSans]
  SETTABLEKS R17 R16 K44 ["Font"]
  LOADN R17 0
  SETTABLEKS R17 R16 K90 ["BorderSizePixel"]
  LOADK R17 K17 ["$PageBackground"]
  SETTABLEKS R17 R16 K12 ["BackgroundColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K94 [".StartPage-Highlight"]
  DUPTABLE R17 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R18 K41 [Color3.fromHex]
  LOADK R19 K95 ["#BBBCBE"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K12 ["BackgroundColor3"]
  LOADK R18 K96 [0.92]
  SETTABLEKS R18 R17 K13 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K97 [".StartPage-TileBorder ::UIStroke"]
  DUPTABLE R18 K101 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R19 K103 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R19 R18 K98 ["ApplyStrokeMode"]
  LOADK R19 K104 ["$HoverBorder"]
  SETTABLEKS R19 R18 K99 ["Color"]
  LOADN R19 1
  SETTABLEKS R19 R18 K100 ["Thickness"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K105 [".StartPage-PillPaddingS ::UIPadding"]
  DUPTABLE R19 K110 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R20 K87 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K106 ["PaddingLeft"]
  GETIMPORT R20 K87 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K107 ["PaddingRight"]
  GETIMPORT R20 K87 [UDim.new]
  LOADN R21 0
  LOADN R22 4
  CALL R20 2 1
  SETTABLEKS R20 R19 K108 ["PaddingTop"]
  GETIMPORT R20 K87 [UDim.new]
  LOADN R21 0
  LOADN R22 4
  CALL R20 2 1
  SETTABLEKS R20 R19 K109 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K111 [".StartPage-PillPadding ::UIPadding"]
  DUPTABLE R20 K110 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R21 K87 [UDim.new]
  LOADN R22 0
  LOADN R23 12
  CALL R21 2 1
  SETTABLEKS R21 R20 K106 ["PaddingLeft"]
  GETIMPORT R21 K87 [UDim.new]
  LOADN R22 0
  LOADN R23 12
  CALL R21 2 1
  SETTABLEKS R21 R20 K107 ["PaddingRight"]
  GETIMPORT R21 K87 [UDim.new]
  LOADN R22 0
  LOADN R23 8
  CALL R21 2 1
  SETTABLEKS R21 R20 K108 ["PaddingTop"]
  GETIMPORT R21 K87 [UDim.new]
  LOADN R22 0
  LOADN R23 8
  CALL R21 2 1
  SETTABLEKS R21 R20 K109 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K112 [".StartPage-ButtonPadding ::UIPadding"]
  DUPTABLE R21 K110 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R22 K87 [UDim.new]
  LOADN R23 0
  LOADN R24 20
  CALL R22 2 1
  SETTABLEKS R22 R21 K106 ["PaddingLeft"]
  GETIMPORT R22 K87 [UDim.new]
  LOADN R23 0
  LOADN R24 20
  CALL R22 2 1
  SETTABLEKS R22 R21 K107 ["PaddingRight"]
  GETIMPORT R22 K87 [UDim.new]
  LOADN R23 0
  LOADN R24 12
  CALL R22 2 1
  SETTABLEKS R22 R21 K108 ["PaddingTop"]
  GETIMPORT R22 K87 [UDim.new]
  LOADN R23 0
  LOADN R24 12
  CALL R22 2 1
  SETTABLEKS R22 R21 K109 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K113 [".StartPage-TilePadding ::UIPadding"]
  DUPTABLE R22 K110 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R23 K87 [UDim.new]
  LOADN R24 0
  LOADN R25 12
  CALL R23 2 1
  SETTABLEKS R23 R22 K106 ["PaddingLeft"]
  GETIMPORT R23 K87 [UDim.new]
  LOADN R24 0
  LOADN R25 12
  CALL R23 2 1
  SETTABLEKS R23 R22 K107 ["PaddingRight"]
  GETIMPORT R23 K87 [UDim.new]
  LOADN R24 0
  LOADN R25 12
  CALL R23 2 1
  SETTABLEKS R23 R22 K108 ["PaddingTop"]
  GETIMPORT R23 K87 [UDim.new]
  LOADN R24 0
  LOADN R25 12
  CALL R23 2 1
  SETTABLEKS R23 R22 K109 ["PaddingBottom"]
  CALL R20 2 1
  SETLIST R4 R5 16 [17]
  MOVE R5 R2
  LOADK R6 K114 [".StartPage-TablePadding ::UIPadding"]
  DUPTABLE R7 K110 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R8 K87 [UDim.new]
  LOADN R9 0
  LOADN R10 16
  CALL R8 2 1
  SETTABLEKS R8 R7 K106 ["PaddingLeft"]
  GETIMPORT R8 K87 [UDim.new]
  LOADN R9 0
  LOADN R10 16
  CALL R8 2 1
  SETTABLEKS R8 R7 K107 ["PaddingRight"]
  GETIMPORT R8 K87 [UDim.new]
  LOADN R9 0
  LOADN R10 10
  CALL R8 2 1
  SETTABLEKS R8 R7 K108 ["PaddingTop"]
  GETIMPORT R8 K87 [UDim.new]
  LOADN R9 0
  LOADN R10 10
  CALL R8 2 1
  SETTABLEKS R8 R7 K109 ["PaddingBottom"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K115 [".StartPage-DescPadding ::UIPadding"]
  DUPTABLE R8 K110 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R9 K87 [UDim.new]
  LOADN R10 0
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K106 ["PaddingLeft"]
  GETIMPORT R9 K87 [UDim.new]
  LOADN R10 0
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K107 ["PaddingRight"]
  GETIMPORT R9 K87 [UDim.new]
  LOADN R10 0
  LOADN R11 12
  CALL R9 2 1
  SETTABLEKS R9 R8 K108 ["PaddingTop"]
  GETIMPORT R9 K87 [UDim.new]
  LOADN R10 0
  LOADN R11 12
  CALL R9 2 1
  SETTABLEKS R9 R8 K109 ["PaddingBottom"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K116 [".StartPage-SearchRowPadding ::UIPadding"]
  DUPTABLE R9 K110 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R10 K87 [UDim.new]
  LOADN R11 0
  LOADN R12 8
  CALL R10 2 1
  SETTABLEKS R10 R9 K106 ["PaddingLeft"]
  GETIMPORT R10 K87 [UDim.new]
  LOADN R11 0
  LOADN R12 8
  CALL R10 2 1
  SETTABLEKS R10 R9 K107 ["PaddingRight"]
  GETIMPORT R10 K87 [UDim.new]
  LOADN R11 0
  LOADN R12 8
  CALL R10 2 1
  SETTABLEKS R10 R9 K108 ["PaddingTop"]
  GETIMPORT R10 K87 [UDim.new]
  LOADN R11 0
  LOADN R12 8
  CALL R10 2 1
  SETTABLEKS R10 R9 K109 ["PaddingBottom"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K117 [".StartPage-GamePagePadding ::UIPadding"]
  DUPTABLE R10 K110 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R11 K87 [UDim.new]
  LOADN R12 0
  LOADN R13 32
  CALL R11 2 1
  SETTABLEKS R11 R10 K106 ["PaddingLeft"]
  GETIMPORT R11 K87 [UDim.new]
  LOADN R12 0
  LOADN R13 32
  CALL R11 2 1
  SETTABLEKS R11 R10 K107 ["PaddingRight"]
  GETIMPORT R11 K87 [UDim.new]
  LOADN R12 0
  LOADN R13 17
  CALL R11 2 1
  SETTABLEKS R11 R10 K108 ["PaddingTop"]
  GETIMPORT R11 K87 [UDim.new]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K109 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K118 [".StartPage-LeftPadding32 ::UIPadding"]
  DUPTABLE R11 K110 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R12 K87 [UDim.new]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K106 ["PaddingLeft"]
  GETIMPORT R12 K87 [UDim.new]
  LOADN R13 0
  LOADN R14 15
  CALL R12 2 1
  SETTABLEKS R12 R11 K107 ["PaddingRight"]
  GETIMPORT R12 K87 [UDim.new]
  LOADN R13 0
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K108 ["PaddingTop"]
  GETIMPORT R12 K87 [UDim.new]
  LOADN R13 0
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K109 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K119 [".StartPage-Padding32 ::UIPadding"]
  DUPTABLE R12 K110 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R13 K87 [UDim.new]
  LOADN R14 0
  LOADN R15 32
  CALL R13 2 1
  SETTABLEKS R13 R12 K106 ["PaddingLeft"]
  GETIMPORT R13 K87 [UDim.new]
  LOADN R14 0
  LOADN R15 32
  CALL R13 2 1
  SETTABLEKS R13 R12 K107 ["PaddingRight"]
  GETIMPORT R13 K87 [UDim.new]
  LOADN R14 0
  LOADN R15 32
  CALL R13 2 1
  SETTABLEKS R13 R12 K108 ["PaddingTop"]
  GETIMPORT R13 K87 [UDim.new]
  LOADN R14 0
  LOADN R15 32
  CALL R13 2 1
  SETTABLEKS R13 R12 K109 ["PaddingBottom"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K120 [".StartPage-ContextMenuPadding ::UIPadding"]
  DUPTABLE R13 K110 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K87 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K106 ["PaddingLeft"]
  GETIMPORT R14 K87 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K107 ["PaddingRight"]
  GETIMPORT R14 K87 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K108 ["PaddingTop"]
  GETIMPORT R14 K87 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K109 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K121 [".StartPage-ContextMenuRowPadding ::UIPadding"]
  DUPTABLE R14 K110 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R15 K87 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K106 ["PaddingLeft"]
  GETIMPORT R15 K87 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K107 ["PaddingRight"]
  GETIMPORT R15 K87 [UDim.new]
  LOADN R16 0
  LOADN R17 4
  CALL R15 2 1
  SETTABLEKS R15 R14 K108 ["PaddingTop"]
  GETIMPORT R15 K87 [UDim.new]
  LOADN R16 0
  LOADN R17 4
  CALL R15 2 1
  SETTABLEKS R15 R14 K109 ["PaddingBottom"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K122 [".StartPage-PadScrollingCarouselLeft ::UIPadding"]
  DUPTABLE R15 K123 [{"PaddingLeft"}]
  GETIMPORT R16 K87 [UDim.new]
  LOADN R17 0
  LOADN R18 2
  CALL R16 2 1
  SETTABLEKS R16 R15 K106 ["PaddingLeft"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K124 [".StartPage-Border ::UIStroke"]
  DUPTABLE R16 K126 [{"ApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R17 K103 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R17 R16 K98 ["ApplyStrokeMode"]
  LOADK R17 K127 ["$Border"]
  SETTABLEKS R17 R16 K99 ["Color"]
  LOADK R17 K128 [0.88]
  SETTABLEKS R17 R16 K125 ["Transparency"]
  LOADN R17 1
  SETTABLEKS R17 R16 K100 ["Thickness"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K129 [".StartPage-NoBorder"]
  DUPTABLE R17 K130 [{"BorderSizePixel"}]
  LOADN R18 0
  SETTABLEKS R18 R17 K90 ["BorderSizePixel"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K131 [".StartPage-BorderColor"]
  DUPTABLE R18 K132 [{"BackgroundColor3", "Transparency"}]
  LOADK R19 K127 ["$Border"]
  SETTABLEKS R19 R18 K12 ["BackgroundColor3"]
  LOADK R19 K128 [0.88]
  SETTABLEKS R19 R18 K125 ["Transparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K133 [".StartPage-StandardTextColor"]
  DUPTABLE R19 K32 [{"TextColor3"}]
  LOADK R20 K134 ["$Standard"]
  SETTABLEKS R20 R19 K31 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K135 [".StartPage-StandardDarkTextColor"]
  DUPTABLE R20 K32 [{"TextColor3"}]
  LOADK R21 K136 ["$StandardDark"]
  SETTABLEKS R21 R20 K31 ["TextColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K137 [".StartPage-MutedTextColor"]
  DUPTABLE R21 K32 [{"TextColor3"}]
  LOADK R22 K138 ["$SemanticColorContentMuted"]
  SETTABLEKS R22 R21 K31 ["TextColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K139 [".StartPage-LinkTextColor"]
  DUPTABLE R22 K32 [{"TextColor3"}]
  LOADK R23 K140 ["$SemanticColorContentAction"]
  SETTABLEKS R23 R22 K31 ["TextColor3"]
  CALL R20 2 1
  SETLIST R4 R5 16 [33]
  MOVE R5 R2
  LOADK R6 K141 [".StartPage-Standard"]
  DUPTABLE R7 K23 [{"BackgroundColor3"}]
  LOADK R8 K134 ["$Standard"]
  SETTABLEKS R8 R7 K12 ["BackgroundColor3"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K142 [".StartPage-StandardDarkBackground"]
  DUPTABLE R8 K23 [{"BackgroundColor3"}]
  LOADK R9 K136 ["$StandardDark"]
  SETTABLEKS R9 R8 K12 ["BackgroundColor3"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K143 [".StartPage-TileBackground"]
  DUPTABLE R9 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R10 K144 ["$TileBackground"]
  SETTABLEKS R10 R9 K12 ["BackgroundColor3"]
  LOADN R10 0
  SETTABLEKS R10 R9 K13 ["BackgroundTransparency"]
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K145 [":hover :: UIStroke"]
  DUPTABLE R13 K147 [{"StrokeApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R14 K103 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R14 R13 K146 ["StrokeApplyStrokeMode"]
  LOADK R14 K127 ["$Border"]
  SETTABLEKS R14 R13 K99 ["Color"]
  LOADK R14 K128 [0.88]
  SETTABLEKS R14 R13 K125 ["Transparency"]
  LOADN R14 2
  SETTABLEKS R14 R13 K100 ["Thickness"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K148 [".StartPage-PillBackground"]
  DUPTABLE R10 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R11 K149 ["$PillBackground"]
  SETTABLEKS R11 R10 K12 ["BackgroundColor3"]
  LOADN R11 0
  SETTABLEKS R11 R10 K13 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K150 [".StartPage-MenuItemSelectedBackground"]
  DUPTABLE R11 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R12 K151 ["$MenuItemSelectedBackground"]
  SETTABLEKS R12 R11 K12 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K13 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K152 [".StartPage-ShimmerBackground"]
  DUPTABLE R12 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R13 K153 ["$ShimmerBackground"]
  SETTABLEKS R13 R12 K12 ["BackgroundColor3"]
  LOADK R13 K154 ["$ShimmerBackgroundTransparency"]
  SETTABLEKS R13 R12 K13 ["BackgroundTransparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K155 [".StartPage-ShimmerForeground"]
  DUPTABLE R13 K23 [{"BackgroundColor3"}]
  LOADK R14 K156 ["$ShimmerForeground"]
  SETTABLEKS R14 R13 K12 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K157 [".StartPage-ShimmerGradient"]
  DUPTABLE R14 K158 [{"Transparency"}]
  LOADK R15 K159 ["$ShimmerGradientTransparency"]
  SETTABLEKS R15 R14 K125 ["Transparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K160 [".StartPage-NoExperiences"]
  DUPTABLE R15 K162 [{"Image", "Size"}]
  LOADK R16 K163 ["$NoExperiences"]
  SETTABLEKS R16 R15 K161 ["Image"]
  GETIMPORT R16 K165 [UDim2.new]
  LOADN R17 0
  LOADN R18 96
  LOADN R19 0
  LOADN R20 96
  CALL R16 4 1
  SETTABLEKS R16 R15 K69 ["Size"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K166 [".StartPage-RightIcon"]
  DUPTABLE R16 K162 [{"Image", "Size"}]
  LOADK R17 K167 ["$RightChevron"]
  SETTABLEKS R17 R16 K161 ["Image"]
  LOADK R17 K73 ["$IconSizeM"]
  SETTABLEKS R17 R16 K69 ["Size"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K168 [".StartPage-HomeIcon"]
  DUPTABLE R17 K162 [{"Image", "Size"}]
  LOADK R18 K169 ["$Home"]
  SETTABLEKS R18 R17 K161 ["Image"]
  LOADK R18 K73 ["$IconSizeM"]
  SETTABLEKS R18 R17 K69 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K170 [".StartPage-PlusIcon"]
  DUPTABLE R18 K162 [{"Image", "Size"}]
  LOADK R19 K171 ["$Plus"]
  SETTABLEKS R19 R18 K161 ["Image"]
  GETIMPORT R19 K165 [UDim2.new]
  LOADN R20 0
  LOADN R21 16
  LOADN R22 0
  LOADN R23 16
  CALL R19 4 1
  SETTABLEKS R19 R18 K69 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K172 [".StartPage-GridIcon"]
  DUPTABLE R19 K162 [{"Image", "Size"}]
  LOADK R20 K173 ["$Grid"]
  SETTABLEKS R20 R19 K161 ["Image"]
  GETIMPORT R20 K165 [UDim2.new]
  LOADN R21 0
  LOADN R22 24
  LOADN R23 0
  LOADN R24 24
  CALL R20 4 1
  SETTABLEKS R20 R19 K69 ["Size"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K174 [".StartPage-ListIcon"]
  DUPTABLE R20 K162 [{"Image", "Size"}]
  LOADK R21 K175 ["$List"]
  SETTABLEKS R21 R20 K161 ["Image"]
  GETIMPORT R21 K165 [UDim2.new]
  LOADN R22 0
  LOADN R23 24
  LOADN R24 0
  LOADN R25 24
  CALL R21 4 1
  SETTABLEKS R21 R20 K69 ["Size"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K176 [".StartPage-ExperiencesIcon"]
  DUPTABLE R21 K162 [{"Image", "Size"}]
  LOADK R22 K177 ["$Experiences"]
  SETTABLEKS R22 R21 K161 ["Image"]
  LOADK R22 K73 ["$IconSizeM"]
  SETTABLEKS R22 R21 K69 ["Size"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K178 [".StartPage-ArchiveIcon"]
  DUPTABLE R22 K162 [{"Image", "Size"}]
  LOADK R23 K179 ["$Archive"]
  SETTABLEKS R23 R22 K161 ["Image"]
  LOADK R23 K73 ["$IconSizeM"]
  SETTABLEKS R23 R22 K69 ["Size"]
  CALL R20 2 1
  SETLIST R4 R5 16 [49]
  MOVE R5 R2
  LOADK R6 K180 [".StartPage-TemplatesIcon"]
  DUPTABLE R7 K162 [{"Image", "Size"}]
  LOADK R8 K181 ["$Templates"]
  SETTABLEKS R8 R7 K161 ["Image"]
  LOADK R8 K73 ["$IconSizeM"]
  SETTABLEKS R8 R7 K69 ["Size"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K182 [".StartPage-SearchIcon"]
  DUPTABLE R8 K162 [{"Image", "Size"}]
  LOADK R9 K183 ["$Search"]
  SETTABLEKS R9 R8 K161 ["Image"]
  LOADK R9 K73 ["$IconSizeM"]
  SETTABLEKS R9 R8 K69 ["Size"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K184 [".StartPage-KebabIcon"]
  DUPTABLE R9 K162 [{"Image", "Size"}]
  LOADK R10 K185 ["$Kebab"]
  SETTABLEKS R10 R9 K161 ["Image"]
  LOADK R10 K186 ["$IconSizeL"]
  SETTABLEKS R10 R9 K69 ["Size"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K187 [".StartPage-CancelIcon"]
  DUPTABLE R10 K162 [{"Image", "Size"}]
  LOADK R11 K188 ["$Cancel"]
  SETTABLEKS R11 R10 K161 ["Image"]
  LOADK R11 K189 ["$IconSizeS"]
  SETTABLEKS R11 R10 K69 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K190 [".StartPage-Chevron"]
  DUPTABLE R11 K191 [{"Image"}]
  LOADK R12 K192 ["$Chevron"]
  SETTABLEKS R12 R11 K161 ["Image"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K193 [".StartPage-TeamCreateOnlineBackground"]
  DUPTABLE R12 K23 [{"BackgroundColor3"}]
  LOADK R13 K194 ["$TeamCreatePresenceOnlineColor"]
  SETTABLEKS R13 R12 K12 ["BackgroundColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K195 [".StartPage-AdditionalTCCollaboratorBackground"]
  DUPTABLE R13 K23 [{"BackgroundColor3"}]
  LOADK R14 K104 ["$HoverBorder"]
  SETTABLEKS R14 R13 K12 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K196 [".StartPage-ColumnTutorialPopup"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K197 ["::UIListLayout"]
  DUPTABLE R18 K201 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R19 K203 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K198 ["FillDirection"]
  GETIMPORT R19 K87 [UDim.new]
  LOADN R20 0
  LOADN R21 32
  CALL R19 2 1
  SETTABLEKS R19 R18 K199 ["Padding"]
  GETIMPORT R19 K205 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K200 ["SortOrder"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K206 [".StartPage-SearchResultRowColumn"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K197 ["::UIListLayout"]
  DUPTABLE R19 K201 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K203 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K198 ["FillDirection"]
  GETIMPORT R20 K87 [UDim.new]
  LOADN R21 0
  LOADN R22 6
  CALL R20 2 1
  SETTABLEKS R20 R19 K199 ["Padding"]
  GETIMPORT R20 K205 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K200 ["SortOrder"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K207 [".StartPage-HomePageColumn"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K197 ["::UIListLayout"]
  DUPTABLE R20 K201 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K203 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K198 ["FillDirection"]
  GETIMPORT R21 K87 [UDim.new]
  LOADN R22 0
  LOADN R23 16
  CALL R21 2 1
  SETTABLEKS R21 R20 K199 ["Padding"]
  GETIMPORT R21 K205 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K200 ["SortOrder"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K208 [".StartPage-PopupTextboxColumn"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K197 ["::UIListLayout"]
  DUPTABLE R21 K201 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K203 [Enum.FillDirection.Vertical]
  SETTABLEKS R22 R21 K198 ["FillDirection"]
  GETIMPORT R22 K87 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K199 ["Padding"]
  GETIMPORT R22 K205 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K200 ["SortOrder"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K209 [".StartPage-PopupTextBoxTextButtonColumn"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K197 ["::UIListLayout"]
  DUPTABLE R22 K201 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K203 [Enum.FillDirection.Vertical]
  SETTABLEKS R23 R22 K198 ["FillDirection"]
  GETIMPORT R23 K87 [UDim.new]
  LOADN R24 0
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K199 ["Padding"]
  GETIMPORT R23 K205 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K200 ["SortOrder"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R4 R5 -1 [65]
  DUPTABLE R5 K222 [{"IconSizeS", "IconSize", "IconSizeM", "IconSizeL", "CornerSize8", "CornerSize12", "CornerSize16", "CornerSize32", "TextSizeXS", "TextSize", "TextSizeM", "TextSizeL", "TeamCreatePresenceOnlineColor"}]
  GETIMPORT R6 K165 [UDim2.new]
  LOADN R7 0
  LOADN R8 12
  LOADN R9 0
  LOADN R10 12
  CALL R6 4 1
  SETTABLEKS R6 R5 K210 ["IconSizeS"]
  GETIMPORT R6 K165 [UDim2.new]
  LOADN R7 0
  LOADN R8 16
  LOADN R9 0
  LOADN R10 16
  CALL R6 4 1
  SETTABLEKS R6 R5 K211 ["IconSize"]
  GETIMPORT R6 K165 [UDim2.new]
  LOADN R7 0
  LOADN R8 24
  LOADN R9 0
  LOADN R10 24
  CALL R6 4 1
  SETTABLEKS R6 R5 K212 ["IconSizeM"]
  GETIMPORT R6 K165 [UDim2.new]
  LOADN R7 0
  LOADN R8 32
  LOADN R9 0
  LOADN R10 32
  CALL R6 4 1
  SETTABLEKS R6 R5 K213 ["IconSizeL"]
  GETIMPORT R6 K87 [UDim.new]
  LOADN R7 0
  LOADN R8 8
  CALL R6 2 1
  SETTABLEKS R6 R5 K214 ["CornerSize8"]
  GETIMPORT R6 K87 [UDim.new]
  LOADN R7 0
  LOADN R8 12
  CALL R6 2 1
  SETTABLEKS R6 R5 K215 ["CornerSize12"]
  GETIMPORT R6 K87 [UDim.new]
  LOADN R7 0
  LOADN R8 16
  CALL R6 2 1
  SETTABLEKS R6 R5 K216 ["CornerSize16"]
  GETIMPORT R6 K87 [UDim.new]
  LOADN R7 0
  LOADN R8 32
  CALL R6 2 1
  SETTABLEKS R6 R5 K217 ["CornerSize32"]
  LOADN R6 12
  SETTABLEKS R6 R5 K218 ["TextSizeXS"]
  LOADN R6 16
  SETTABLEKS R6 R5 K59 ["TextSize"]
  LOADN R6 24
  SETTABLEKS R6 R5 K219 ["TextSizeM"]
  LOADN R6 40
  SETTABLEKS R6 R5 K220 ["TextSizeL"]
  GETIMPORT R6 K41 [Color3.fromHex]
  LOADK R7 K223 ["#0fb369"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K221 ["TeamCreatePresenceOnlineColor"]
  MOVE R6 R3
  LOADK R7 K2 ["StartPage"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
