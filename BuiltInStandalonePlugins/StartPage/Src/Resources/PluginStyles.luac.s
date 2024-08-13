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
  NEWTABLE R4 0 69
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
  LOADK R9 K20 [".StartPage-Selected"]
  DUPTABLE R10 K21 [{"BackgroundColor3"}]
  LOADK R11 K22 ["$Selected"]
  SETTABLEKS R11 R10 K12 ["BackgroundColor3"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K23 [".StartPage-Contrast"]
  DUPTABLE R11 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R12 K24 ["$Contrast"]
  SETTABLEKS R12 R11 K12 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K13 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K25 [".StartPage-NoBackground"]
  DUPTABLE R12 K26 [{"BackgroundTransparency"}]
  LOADN R13 1
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
  LOADK R20 K58 [".StartPage-TextSize"]
  DUPTABLE R21 K60 [{"TextSize"}]
  LOADK R22 K61 ["$TextSize"]
  SETTABLEKS R22 R21 K59 ["TextSize"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K62 [".StartPage-TextSizeM"]
  DUPTABLE R22 K60 [{"TextSize"}]
  LOADK R23 K63 ["$TextSizeM"]
  SETTABLEKS R23 R22 K59 ["TextSize"]
  CALL R20 2 1
  SETLIST R4 R5 16 [1]
  MOVE R5 R2
  LOADK R6 K64 [".StartPage-TextSizeL"]
  DUPTABLE R7 K60 [{"TextSize"}]
  LOADK R8 K65 ["$TextSizeL"]
  SETTABLEKS R8 R7 K59 ["TextSize"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K66 [".StartPage-IconSize"]
  DUPTABLE R8 K68 [{"Size"}]
  LOADK R9 K69 ["$IconSize"]
  SETTABLEKS R9 R8 K67 ["Size"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K70 [".StartPage-IconSizeM"]
  DUPTABLE R9 K68 [{"Size"}]
  LOADK R10 K71 ["$IconSizeM"]
  SETTABLEKS R10 R9 K67 ["Size"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K72 [".StartPage-RoundedCorner8 ::UICorner"]
  DUPTABLE R10 K74 [{"CornerRadius"}]
  LOADK R11 K75 ["$CornerSize8"]
  SETTABLEKS R11 R10 K73 ["CornerRadius"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K76 [".StartPage-RoundedCorner12 ::UICorner"]
  DUPTABLE R11 K74 [{"CornerRadius"}]
  LOADK R12 K77 ["$CornerSize12"]
  SETTABLEKS R12 R11 K73 ["CornerRadius"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K78 [".StartPage-RoundedCorner16 ::UICorner"]
  DUPTABLE R12 K74 [{"CornerRadius"}]
  LOADK R13 K79 ["$CornerSize16"]
  SETTABLEKS R13 R12 K73 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K80 [".StartPage-RoundedCorner32 ::UICorner"]
  DUPTABLE R13 K74 [{"CornerRadius"}]
  LOADK R14 K81 ["$CornerSize32"]
  SETTABLEKS R14 R13 K73 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K82 [".StartPage-Circular ::UICorner"]
  DUPTABLE R14 K74 [{"CornerRadius"}]
  GETIMPORT R15 K85 [UDim.new]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K73 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K86 [".StartPage-SearchBar"]
  DUPTABLE R15 K89 [{"TextXAlignment", "Font", "BorderSizePixel", "BackgroundColor3"}]
  GETIMPORT R16 K91 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K87 ["TextXAlignment"]
  GETIMPORT R16 K49 [Enum.Font.BuilderSans]
  SETTABLEKS R16 R15 K44 ["Font"]
  LOADN R16 0
  SETTABLEKS R16 R15 K88 ["BorderSizePixel"]
  LOADK R16 K17 ["$PageBackground"]
  SETTABLEKS R16 R15 K12 ["BackgroundColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K92 [".StartPage-Highlight"]
  DUPTABLE R16 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R17 K41 [Color3.fromHex]
  LOADK R18 K93 ["#BBBCBE"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K12 ["BackgroundColor3"]
  LOADK R17 K94 [0.92]
  SETTABLEKS R17 R16 K13 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K95 [".StartPage-TileBorder ::UIStroke"]
  DUPTABLE R17 K99 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R18 K101 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R18 R17 K96 ["ApplyStrokeMode"]
  LOADK R18 K102 ["$HoverBorder"]
  SETTABLEKS R18 R17 K97 ["Color"]
  LOADN R18 1
  SETTABLEKS R18 R17 K98 ["Thickness"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K103 [".StartPage-PillPaddingS ::UIPadding"]
  DUPTABLE R18 K108 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R19 K85 [UDim.new]
  LOADN R20 0
  LOADN R21 10
  CALL R19 2 1
  SETTABLEKS R19 R18 K104 ["PaddingLeft"]
  GETIMPORT R19 K85 [UDim.new]
  LOADN R20 0
  LOADN R21 10
  CALL R19 2 1
  SETTABLEKS R19 R18 K105 ["PaddingRight"]
  GETIMPORT R19 K85 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K106 ["PaddingTop"]
  GETIMPORT R19 K85 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K107 ["PaddingBottom"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K109 [".StartPage-PillPadding ::UIPadding"]
  DUPTABLE R19 K108 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R20 K85 [UDim.new]
  LOADN R21 0
  LOADN R22 12
  CALL R20 2 1
  SETTABLEKS R20 R19 K104 ["PaddingLeft"]
  GETIMPORT R20 K85 [UDim.new]
  LOADN R21 0
  LOADN R22 12
  CALL R20 2 1
  SETTABLEKS R20 R19 K105 ["PaddingRight"]
  GETIMPORT R20 K85 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K106 ["PaddingTop"]
  GETIMPORT R20 K85 [UDim.new]
  LOADN R21 0
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K107 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K110 [".StartPage-ButtonPadding ::UIPadding"]
  DUPTABLE R20 K108 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R21 K85 [UDim.new]
  LOADN R22 0
  LOADN R23 20
  CALL R21 2 1
  SETTABLEKS R21 R20 K104 ["PaddingLeft"]
  GETIMPORT R21 K85 [UDim.new]
  LOADN R22 0
  LOADN R23 20
  CALL R21 2 1
  SETTABLEKS R21 R20 K105 ["PaddingRight"]
  GETIMPORT R21 K85 [UDim.new]
  LOADN R22 0
  LOADN R23 12
  CALL R21 2 1
  SETTABLEKS R21 R20 K106 ["PaddingTop"]
  GETIMPORT R21 K85 [UDim.new]
  LOADN R22 0
  LOADN R23 12
  CALL R21 2 1
  SETTABLEKS R21 R20 K107 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K111 [".StartPage-TilePadding ::UIPadding"]
  DUPTABLE R21 K108 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R22 K85 [UDim.new]
  LOADN R23 0
  LOADN R24 12
  CALL R22 2 1
  SETTABLEKS R22 R21 K104 ["PaddingLeft"]
  GETIMPORT R22 K85 [UDim.new]
  LOADN R23 0
  LOADN R24 12
  CALL R22 2 1
  SETTABLEKS R22 R21 K105 ["PaddingRight"]
  GETIMPORT R22 K85 [UDim.new]
  LOADN R23 0
  LOADN R24 12
  CALL R22 2 1
  SETTABLEKS R22 R21 K106 ["PaddingTop"]
  GETIMPORT R22 K85 [UDim.new]
  LOADN R23 0
  LOADN R24 12
  CALL R22 2 1
  SETTABLEKS R22 R21 K107 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K112 [".StartPage-TablePadding ::UIPadding"]
  DUPTABLE R22 K108 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R23 K85 [UDim.new]
  LOADN R24 0
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K104 ["PaddingLeft"]
  GETIMPORT R23 K85 [UDim.new]
  LOADN R24 0
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K105 ["PaddingRight"]
  GETIMPORT R23 K85 [UDim.new]
  LOADN R24 0
  LOADN R25 10
  CALL R23 2 1
  SETTABLEKS R23 R22 K106 ["PaddingTop"]
  GETIMPORT R23 K85 [UDim.new]
  LOADN R24 0
  LOADN R25 10
  CALL R23 2 1
  SETTABLEKS R23 R22 K107 ["PaddingBottom"]
  CALL R20 2 1
  SETLIST R4 R5 16 [17]
  MOVE R5 R2
  LOADK R6 K113 [".StartPage-DescPadding ::UIPadding"]
  DUPTABLE R7 K108 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R8 K85 [UDim.new]
  LOADN R9 0
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K104 ["PaddingLeft"]
  GETIMPORT R8 K85 [UDim.new]
  LOADN R9 0
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K105 ["PaddingRight"]
  GETIMPORT R8 K85 [UDim.new]
  LOADN R9 0
  LOADN R10 12
  CALL R8 2 1
  SETTABLEKS R8 R7 K106 ["PaddingTop"]
  GETIMPORT R8 K85 [UDim.new]
  LOADN R9 0
  LOADN R10 12
  CALL R8 2 1
  SETTABLEKS R8 R7 K107 ["PaddingBottom"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K114 [".StartPage-SearchRowPadding ::UIPadding"]
  DUPTABLE R8 K108 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R9 K85 [UDim.new]
  LOADN R10 0
  LOADN R11 8
  CALL R9 2 1
  SETTABLEKS R9 R8 K104 ["PaddingLeft"]
  GETIMPORT R9 K85 [UDim.new]
  LOADN R10 0
  LOADN R11 8
  CALL R9 2 1
  SETTABLEKS R9 R8 K105 ["PaddingRight"]
  GETIMPORT R9 K85 [UDim.new]
  LOADN R10 0
  LOADN R11 8
  CALL R9 2 1
  SETTABLEKS R9 R8 K106 ["PaddingTop"]
  GETIMPORT R9 K85 [UDim.new]
  LOADN R10 0
  LOADN R11 8
  CALL R9 2 1
  SETTABLEKS R9 R8 K107 ["PaddingBottom"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K115 [".StartPage-GamePagePadding ::UIPadding"]
  DUPTABLE R9 K108 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R10 K85 [UDim.new]
  LOADN R11 0
  LOADN R12 32
  CALL R10 2 1
  SETTABLEKS R10 R9 K104 ["PaddingLeft"]
  GETIMPORT R10 K85 [UDim.new]
  LOADN R11 0
  LOADN R12 32
  CALL R10 2 1
  SETTABLEKS R10 R9 K105 ["PaddingRight"]
  GETIMPORT R10 K85 [UDim.new]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K106 ["PaddingTop"]
  GETIMPORT R10 K85 [UDim.new]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K107 ["PaddingBottom"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K116 [".StartPage-LeftPadding32 ::UIPadding"]
  DUPTABLE R10 K108 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R11 K85 [UDim.new]
  LOADN R12 0
  LOADN R13 32
  CALL R11 2 1
  SETTABLEKS R11 R10 K104 ["PaddingLeft"]
  GETIMPORT R11 K85 [UDim.new]
  LOADN R12 0
  LOADN R13 15
  CALL R11 2 1
  SETTABLEKS R11 R10 K105 ["PaddingRight"]
  GETIMPORT R11 K85 [UDim.new]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K106 ["PaddingTop"]
  GETIMPORT R11 K85 [UDim.new]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K107 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K117 [".StartPage-Padding32 ::UIPadding"]
  DUPTABLE R11 K108 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R12 K85 [UDim.new]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K104 ["PaddingLeft"]
  GETIMPORT R12 K85 [UDim.new]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K105 ["PaddingRight"]
  GETIMPORT R12 K85 [UDim.new]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K106 ["PaddingTop"]
  GETIMPORT R12 K85 [UDim.new]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K107 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K118 [".StartPage-PadScrollingCarouselLeft ::UIPadding"]
  DUPTABLE R12 K119 [{"PaddingLeft"}]
  GETIMPORT R13 K85 [UDim.new]
  LOADN R14 0
  LOADN R15 2
  CALL R13 2 1
  SETTABLEKS R13 R12 K104 ["PaddingLeft"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K120 [".StartPage-Border ::UIStroke"]
  DUPTABLE R13 K122 [{"ApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R14 K101 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R14 R13 K96 ["ApplyStrokeMode"]
  LOADK R14 K123 ["$Border"]
  SETTABLEKS R14 R13 K97 ["Color"]
  LOADK R14 K124 [0.88]
  SETTABLEKS R14 R13 K121 ["Transparency"]
  LOADN R14 1
  SETTABLEKS R14 R13 K98 ["Thickness"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K125 [".StartPage-NoBorder"]
  DUPTABLE R14 K126 [{"BorderSizePixel"}]
  LOADN R15 0
  SETTABLEKS R15 R14 K88 ["BorderSizePixel"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K127 [".StartPage-BorderColor"]
  DUPTABLE R15 K128 [{"BackgroundColor3", "Transparency"}]
  LOADK R16 K123 ["$Border"]
  SETTABLEKS R16 R15 K12 ["BackgroundColor3"]
  LOADK R16 K124 [0.88]
  SETTABLEKS R16 R15 K121 ["Transparency"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K129 [".StartPage-StandardTextColor"]
  DUPTABLE R16 K32 [{"TextColor3"}]
  LOADK R17 K130 ["$Standard"]
  SETTABLEKS R17 R16 K31 ["TextColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K131 [".StartPage-StandardDarkTextColor"]
  DUPTABLE R17 K32 [{"TextColor3"}]
  LOADK R18 K132 ["$StandardDark"]
  SETTABLEKS R18 R17 K31 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K133 [".StartPage-MutedTextColor"]
  DUPTABLE R18 K32 [{"TextColor3"}]
  LOADK R19 K134 ["$SemanticColorContentMuted"]
  SETTABLEKS R19 R18 K31 ["TextColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K135 [".StartPage-Standard"]
  DUPTABLE R19 K21 [{"BackgroundColor3"}]
  LOADK R20 K130 ["$Standard"]
  SETTABLEKS R20 R19 K12 ["BackgroundColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K136 [".StartPage-StandardDarkBackground"]
  DUPTABLE R20 K21 [{"BackgroundColor3"}]
  LOADK R21 K132 ["$StandardDark"]
  SETTABLEKS R21 R20 K12 ["BackgroundColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K137 [".StartPage-TileBackground"]
  DUPTABLE R21 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K138 ["$TileBackground"]
  SETTABLEKS R22 R21 K12 ["BackgroundColor3"]
  LOADN R22 0
  SETTABLEKS R22 R21 K13 ["BackgroundTransparency"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K139 [":hover :: UIStroke"]
  DUPTABLE R25 K141 [{"StrokeApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R26 K101 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R26 R25 K140 ["StrokeApplyStrokeMode"]
  LOADK R26 K123 ["$Border"]
  SETTABLEKS R26 R25 K97 ["Color"]
  LOADK R26 K124 [0.88]
  SETTABLEKS R26 R25 K121 ["Transparency"]
  LOADN R26 2
  SETTABLEKS R26 R25 K98 ["Thickness"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K142 [".StartPage-PillBackground"]
  DUPTABLE R22 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R23 K143 ["$PillBackground"]
  SETTABLEKS R23 R22 K12 ["BackgroundColor3"]
  LOADN R23 0
  SETTABLEKS R23 R22 K13 ["BackgroundTransparency"]
  CALL R20 2 1
  SETLIST R4 R5 16 [33]
  MOVE R5 R2
  LOADK R6 K144 [".StartPage-MenuItemSelectedBackground"]
  DUPTABLE R7 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R8 K145 ["$MenuItemSelectedBackground"]
  SETTABLEKS R8 R7 K12 ["BackgroundColor3"]
  LOADN R8 0
  SETTABLEKS R8 R7 K13 ["BackgroundTransparency"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K146 [".StartPage-ShimmerBackground"]
  DUPTABLE R8 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R9 K147 ["$ShimmerBackground"]
  SETTABLEKS R9 R8 K12 ["BackgroundColor3"]
  LOADK R9 K148 ["$ShimmerBackgroundTransparency"]
  SETTABLEKS R9 R8 K13 ["BackgroundTransparency"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K149 [".StartPage-ShimmerForeground"]
  DUPTABLE R9 K21 [{"BackgroundColor3"}]
  LOADK R10 K150 ["$ShimmerForeground"]
  SETTABLEKS R10 R9 K12 ["BackgroundColor3"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K151 [".StartPage-ShimmerGradient"]
  DUPTABLE R10 K152 [{"Transparency"}]
  LOADK R11 K153 ["$ShimmerGradientTransparency"]
  SETTABLEKS R11 R10 K121 ["Transparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K154 [".StartPage-NoExperiences"]
  DUPTABLE R11 K156 [{"Image", "Size"}]
  LOADK R12 K157 ["$NoExperiences"]
  SETTABLEKS R12 R11 K155 ["Image"]
  GETIMPORT R12 K159 [UDim2.new]
  LOADN R13 0
  LOADN R14 96
  LOADN R15 0
  LOADN R16 96
  CALL R12 4 1
  SETTABLEKS R12 R11 K67 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K160 [".StartPage-RightIcon"]
  DUPTABLE R12 K156 [{"Image", "Size"}]
  LOADK R13 K161 ["$RightChevron"]
  SETTABLEKS R13 R12 K155 ["Image"]
  LOADK R13 K71 ["$IconSizeM"]
  SETTABLEKS R13 R12 K67 ["Size"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K162 [".StartPage-HomeIcon"]
  DUPTABLE R13 K156 [{"Image", "Size"}]
  LOADK R14 K163 ["$Home"]
  SETTABLEKS R14 R13 K155 ["Image"]
  LOADK R14 K71 ["$IconSizeM"]
  SETTABLEKS R14 R13 K67 ["Size"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K164 [".StartPage-ExperiencesIcon"]
  DUPTABLE R14 K156 [{"Image", "Size"}]
  LOADK R15 K165 ["$Experiences"]
  SETTABLEKS R15 R14 K155 ["Image"]
  LOADK R15 K71 ["$IconSizeM"]
  SETTABLEKS R15 R14 K67 ["Size"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K166 [".StartPage-ArchiveIcon"]
  DUPTABLE R15 K156 [{"Image", "Size"}]
  LOADK R16 K167 ["$Archive"]
  SETTABLEKS R16 R15 K155 ["Image"]
  LOADK R16 K71 ["$IconSizeM"]
  SETTABLEKS R16 R15 K67 ["Size"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K168 [".StartPage-TemplatesIcon"]
  DUPTABLE R16 K156 [{"Image", "Size"}]
  LOADK R17 K169 ["$Templates"]
  SETTABLEKS R17 R16 K155 ["Image"]
  LOADK R17 K71 ["$IconSizeM"]
  SETTABLEKS R17 R16 K67 ["Size"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K170 [".StartPage-SearchIcon"]
  DUPTABLE R17 K156 [{"Image", "Size"}]
  LOADK R18 K171 ["$Search"]
  SETTABLEKS R18 R17 K155 ["Image"]
  LOADK R18 K71 ["$IconSizeM"]
  SETTABLEKS R18 R17 K67 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K172 [".StartPage-KebabIcon"]
  DUPTABLE R18 K156 [{"Image", "Size"}]
  LOADK R19 K173 ["$Kebab"]
  SETTABLEKS R19 R18 K155 ["Image"]
  LOADK R19 K174 ["$IconSizeL"]
  SETTABLEKS R19 R18 K67 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K175 [".StartPage-CancelIcon"]
  DUPTABLE R19 K156 [{"Image", "Size"}]
  LOADK R20 K176 ["$Cancel"]
  SETTABLEKS R20 R19 K155 ["Image"]
  LOADK R20 K177 ["$IconSizeS"]
  SETTABLEKS R20 R19 K67 ["Size"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K178 [".StartPage-Chevron"]
  DUPTABLE R20 K179 [{"Image"}]
  LOADK R21 K180 ["$Chevron"]
  SETTABLEKS R21 R20 K155 ["Image"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K181 [".StartPage-TeamCreateOnlineBackground"]
  DUPTABLE R21 K21 [{"BackgroundColor3"}]
  LOADK R22 K182 ["$TeamCreatePresenceOnlineColor"]
  SETTABLEKS R22 R21 K12 ["BackgroundColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K183 [".StartPage-AdditionalTCCollaboratorBackground"]
  DUPTABLE R22 K21 [{"BackgroundColor3"}]
  LOADK R23 K102 ["$HoverBorder"]
  SETTABLEKS R23 R22 K12 ["BackgroundColor3"]
  CALL R20 2 1
  SETLIST R4 R5 16 [49]
  MOVE R5 R2
  LOADK R6 K184 [".StartPage-ColumnTutorialPopup"]
  NEWTABLE R7 0 0
  NEWTABLE R8 0 1
  MOVE R9 R2
  LOADK R10 K185 ["::UIListLayout"]
  DUPTABLE R11 K189 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R12 K191 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K186 ["FillDirection"]
  GETIMPORT R12 K85 [UDim.new]
  LOADN R13 0
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K187 ["Padding"]
  GETIMPORT R12 K193 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K188 ["SortOrder"]
  CALL R9 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  MOVE R6 R2
  LOADK R7 K194 [".StartPage-SearchResultRowColumn"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 1
  MOVE R10 R2
  LOADK R11 K185 ["::UIListLayout"]
  DUPTABLE R12 K189 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R13 K191 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K186 ["FillDirection"]
  GETIMPORT R13 K85 [UDim.new]
  LOADN R14 0
  LOADN R15 6
  CALL R13 2 1
  SETTABLEKS R13 R12 K187 ["Padding"]
  GETIMPORT R13 K193 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K188 ["SortOrder"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K195 [".StartPage-HomePageColumn"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K185 ["::UIListLayout"]
  DUPTABLE R13 K189 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R14 K191 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K186 ["FillDirection"]
  GETIMPORT R14 K85 [UDim.new]
  LOADN R15 0
  LOADN R16 16
  CALL R14 2 1
  SETTABLEKS R14 R13 K187 ["Padding"]
  GETIMPORT R14 K193 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K188 ["SortOrder"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K196 [".StartPage-PopupTextboxColumn"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K185 ["::UIListLayout"]
  DUPTABLE R14 K189 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R15 K191 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K186 ["FillDirection"]
  GETIMPORT R15 K85 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K187 ["Padding"]
  GETIMPORT R15 K193 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K188 ["SortOrder"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K197 [".StartPage-PopupTextBoxTextButtonColumn"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K185 ["::UIListLayout"]
  DUPTABLE R15 K189 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R16 K191 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K186 ["FillDirection"]
  GETIMPORT R16 K85 [UDim.new]
  LOADN R17 0
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K187 ["Padding"]
  GETIMPORT R16 K193 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K188 ["SortOrder"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R4 R5 -1 [65]
  DUPTABLE R5 K209 [{"IconSizeS", "IconSize", "IconSizeM", "IconSizeL", "CornerSize8", "CornerSize12", "CornerSize16", "CornerSize32", "TextSize", "TextSizeM", "TextSizeL", "TeamCreatePresenceOnlineColor"}]
  GETIMPORT R6 K159 [UDim2.new]
  LOADN R7 0
  LOADN R8 12
  LOADN R9 0
  LOADN R10 12
  CALL R6 4 1
  SETTABLEKS R6 R5 K198 ["IconSizeS"]
  GETIMPORT R6 K159 [UDim2.new]
  LOADN R7 0
  LOADN R8 16
  LOADN R9 0
  LOADN R10 16
  CALL R6 4 1
  SETTABLEKS R6 R5 K199 ["IconSize"]
  GETIMPORT R6 K159 [UDim2.new]
  LOADN R7 0
  LOADN R8 24
  LOADN R9 0
  LOADN R10 24
  CALL R6 4 1
  SETTABLEKS R6 R5 K200 ["IconSizeM"]
  GETIMPORT R6 K159 [UDim2.new]
  LOADN R7 0
  LOADN R8 32
  LOADN R9 0
  LOADN R10 32
  CALL R6 4 1
  SETTABLEKS R6 R5 K201 ["IconSizeL"]
  GETIMPORT R6 K85 [UDim.new]
  LOADN R7 0
  LOADN R8 8
  CALL R6 2 1
  SETTABLEKS R6 R5 K202 ["CornerSize8"]
  GETIMPORT R6 K85 [UDim.new]
  LOADN R7 0
  LOADN R8 12
  CALL R6 2 1
  SETTABLEKS R6 R5 K203 ["CornerSize12"]
  GETIMPORT R6 K85 [UDim.new]
  LOADN R7 0
  LOADN R8 16
  CALL R6 2 1
  SETTABLEKS R6 R5 K204 ["CornerSize16"]
  GETIMPORT R6 K85 [UDim.new]
  LOADN R7 0
  LOADN R8 32
  CALL R6 2 1
  SETTABLEKS R6 R5 K205 ["CornerSize32"]
  LOADN R6 16
  SETTABLEKS R6 R5 K59 ["TextSize"]
  LOADN R6 24
  SETTABLEKS R6 R5 K206 ["TextSizeM"]
  LOADN R6 40
  SETTABLEKS R6 R5 K207 ["TextSizeL"]
  GETIMPORT R6 K41 [Color3.fromHex]
  LOADK R7 K210 ["#0fb369"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K208 ["TeamCreatePresenceOnlineColor"]
  MOVE R6 R3
  LOADK R7 K2 ["StartPage"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
