MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Resources"]
  GETTABLEKS R3 R4 K9 ["StyleTips"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  GETTABLEKS R4 R2 K12 ["buttonPaddingHorizontal"]
  GETTABLEKS R5 R2 K13 ["defaultPadding"]
  GETTABLEKS R6 R2 K14 ["filterHeaderHeight"]
  GETTABLEKS R7 R2 K15 ["checkBoxRowHeight"]
  GETTABLEKS R8 R2 K16 ["normalFontSize"]
  GETTABLEKS R9 R2 K17 ["headerFontSize"]
  GETIMPORT R10 K19 [game]
  LOADK R12 K20 ["ActivityHistoryCompactUI"]
  NAMECALL R10 R10 K21 ["GetFastFlag"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K22 [".Component-FilterMenu"]
  DUPTABLE R13 K24 [{"BackgroundColor3"}]
  JUMPIFNOT R10 [+2]
  LOADK R14 K25 ["$FoundationColorsBackgroundDefault"]
  JUMP [+1]
  LOADK R14 K26 ["$ForegroundMain"]
  SETTABLEKS R14 R13 K23 ["BackgroundColor3"]
  NEWTABLE R14 0 3
  MOVE R15 R3
  LOADK R16 K27 [">> .Component-OptionButton"]
  DUPTABLE R17 K30 [{"AutoButtonColor", "TextColor3"}]
  LOADB R18 0
  SETTABLEKS R18 R17 K28 ["AutoButtonColor"]
  JUMPIFNOT R10 [+2]
  LOADK R18 K31 ["$FoundationColorsContentEmphasis"]
  JUMP [+1]
  LOADK R18 K32 ["$TextPrimary"]
  SETTABLEKS R18 R17 K29 ["TextColor3"]
  NEWTABLE R18 0 2
  MOVE R19 R3
  LOADK R20 K33 ["::UICorner"]
  DUPTABLE R21 K35 [{"CornerRadius"}]
  GETIMPORT R22 K38 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K34 ["CornerRadius"]
  CALL R19 2 1
  MOVE R20 R3
  LOADK R21 K39 ["::UIPadding"]
  DUPTABLE R22 K44 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R23 K38 [UDim.new]
  LOADN R24 0
  MOVE R25 R4
  CALL R23 2 1
  SETTABLEKS R23 R22 K40 ["PaddingLeft"]
  GETIMPORT R23 K38 [UDim.new]
  LOADN R24 0
  MOVE R25 R4
  CALL R23 2 1
  SETTABLEKS R23 R22 K41 ["PaddingRight"]
  GETIMPORT R23 K38 [UDim.new]
  LOADN R24 0
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K42 ["PaddingTop"]
  GETIMPORT R23 K38 [UDim.new]
  LOADN R24 0
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K43 ["PaddingBottom"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R3
  LOADK R17 K45 [">> #Header"]
  DUPTABLE R18 K47 [{"Size"}]
  GETIMPORT R19 K49 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  MOVE R23 R6
  CALL R19 4 1
  SETTABLEKS R19 R18 K46 ["Size"]
  NEWTABLE R19 0 4
  MOVE R20 R3
  LOADK R21 K39 ["::UIPadding"]
  DUPTABLE R22 K50 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R23 K38 [UDim.new]
  LOADN R24 0
  JUMPIFNOT R10 [+2]
  LOADN R25 2
  JUMP [+1]
  LOADN R25 4
  CALL R23 2 1
  SETTABLEKS R23 R22 K42 ["PaddingTop"]
  GETIMPORT R23 K38 [UDim.new]
  LOADN R24 0
  JUMPIFNOT R10 [+2]
  LOADN R25 1
  JUMP [+1]
  LOADN R25 4
  CALL R23 2 1
  SETTABLEKS R23 R22 K43 ["PaddingBottom"]
  GETIMPORT R23 K38 [UDim.new]
  LOADN R24 0
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K40 ["PaddingLeft"]
  GETIMPORT R23 K38 [UDim.new]
  LOADN R24 0
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K41 ["PaddingRight"]
  CALL R20 2 1
  MOVE R21 R3
  LOADK R22 K51 ["::UIListLayout"]
  DUPTABLE R23 K53 [{"HorizontalFlex"}]
  GETIMPORT R24 K57 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R24 R23 K52 ["HorizontalFlex"]
  CALL R21 2 1
  MOVE R22 R3
  LOADK R23 K58 ["> #Text"]
  DUPTABLE R24 K63 [{"Size", "AutomaticSize", "BackgroundTransparency", "TextSize", "TextColor3", "TextXAlignment"}]
  GETIMPORT R25 K49 [UDim2.new]
  LOADN R26 0
  LOADN R27 0
  LOADN R28 1
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K46 ["Size"]
  GETIMPORT R25 K65 [Enum.AutomaticSize.Y]
  SETTABLEKS R25 R24 K59 ["AutomaticSize"]
  LOADN R25 1
  SETTABLEKS R25 R24 K60 ["BackgroundTransparency"]
  SETTABLEKS R9 R24 K61 ["TextSize"]
  JUMPIFNOT R10 [+2]
  LOADK R25 K31 ["$FoundationColorsContentEmphasis"]
  JUMP [+1]
  LOADK R25 K32 ["$TextPrimary"]
  SETTABLEKS R25 R24 K29 ["TextColor3"]
  GETIMPORT R25 K67 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K62 ["TextXAlignment"]
  CALL R22 2 1
  MOVE R23 R3
  LOADK R24 K68 ["> #Buttons"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 3
  MOVE R27 R3
  LOADK R28 K51 ["::UIListLayout"]
  DUPTABLE R29 K70 [{"Padding"}]
  GETIMPORT R30 K38 [UDim.new]
  LOADN R31 0
  MOVE R32 R5
  CALL R30 2 1
  SETTABLEKS R30 R29 K69 ["Padding"]
  CALL R27 2 1
  MOVE R28 R3
  LOADK R29 K71 ["> #Clear"]
  DUPTABLE R30 K24 [{"BackgroundColor3"}]
  LOADK R31 K72 ["$SecondaryMain"]
  SETTABLEKS R31 R30 K23 ["BackgroundColor3"]
  NEWTABLE R31 0 1
  MOVE R32 R3
  LOADK R33 K73 [":hover"]
  DUPTABLE R34 K24 [{"BackgroundColor3"}]
  LOADK R35 K74 ["$SecondaryHoverBackground"]
  SETTABLEKS R35 R34 K23 ["BackgroundColor3"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R3
  LOADK R30 K75 ["> #Apply"]
  DUPTABLE R31 K24 [{"BackgroundColor3"}]
  LOADK R32 K76 ["$PrimaryMain"]
  SETTABLEKS R32 R31 K23 ["BackgroundColor3"]
  NEWTABLE R32 0 1
  MOVE R33 R3
  LOADK R34 K73 [":hover"]
  DUPTABLE R35 K24 [{"BackgroundColor3"}]
  LOADK R36 K77 ["$PrimaryHoverBackground"]
  SETTABLEKS R36 R35 K23 ["BackgroundColor3"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R3
  LOADK R18 K78 ["> #Contents"]
  DUPTABLE R19 K81 [{"Size", "BorderSizePixel", "ScrollBarThickness"}]
  GETIMPORT R20 K49 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 1
  MINUS R24 R6
  CALL R20 4 1
  SETTABLEKS R20 R19 K46 ["Size"]
  LOADN R20 0
  SETTABLEKS R20 R19 K79 ["BorderSizePixel"]
  LOADN R20 0
  SETTABLEKS R20 R19 K80 ["ScrollBarThickness"]
  NEWTABLE R20 0 5
  MOVE R21 R3
  LOADK R22 K39 ["::UIPadding"]
  DUPTABLE R23 K50 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R24 K38 [UDim.new]
  LOADN R25 0
  LOADN R26 16
  CALL R24 2 1
  SETTABLEKS R24 R23 K42 ["PaddingTop"]
  GETIMPORT R24 K38 [UDim.new]
  LOADN R25 0
  LOADN R26 16
  CALL R24 2 1
  SETTABLEKS R24 R23 K43 ["PaddingBottom"]
  GETIMPORT R24 K38 [UDim.new]
  LOADN R25 0
  LOADN R26 16
  CALL R24 2 1
  SETTABLEKS R24 R23 K40 ["PaddingLeft"]
  GETIMPORT R24 K38 [UDim.new]
  LOADN R25 0
  LOADN R26 16
  CALL R24 2 1
  SETTABLEKS R24 R23 K41 ["PaddingRight"]
  CALL R21 2 1
  MOVE R22 R3
  LOADK R23 K82 ["> #Layout"]
  DUPTABLE R24 K70 [{"Padding"}]
  GETIMPORT R25 K38 [UDim.new]
  LOADN R26 0
  JUMPIFNOT R10 [+2]
  LOADN R27 12
  JUMP [+1]
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K69 ["Padding"]
  CALL R22 2 1
  MOVE R23 R3
  LOADK R24 K83 [">> #ByDateRange"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 3
  MOVE R27 R3
  LOADK R28 K51 ["::UIListLayout"]
  DUPTABLE R29 K70 [{"Padding"}]
  GETIMPORT R30 K38 [UDim.new]
  LOADN R31 0
  MOVE R32 R5
  CALL R30 2 1
  SETTABLEKS R30 R29 K69 ["Padding"]
  CALL R27 2 1
  MOVE R28 R3
  LOADK R29 K84 ["> #Label"]
  DUPTABLE R30 K86 [{"AutomaticSize", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "BackgroundTransparency"}]
  GETIMPORT R31 K65 [Enum.AutomaticSize.Y]
  SETTABLEKS R31 R30 K59 ["AutomaticSize"]
  SETTABLEKS R8 R30 K61 ["TextSize"]
  JUMPIFNOT R10 [+2]
  LOADK R31 K31 ["$FoundationColorsContentEmphasis"]
  JUMP [+1]
  LOADK R31 K32 ["$TextPrimary"]
  SETTABLEKS R31 R30 K29 ["TextColor3"]
  GETIMPORT R31 K67 [Enum.TextXAlignment.Left]
  SETTABLEKS R31 R30 K62 ["TextXAlignment"]
  GETIMPORT R31 K88 [Enum.TextYAlignment.Center]
  SETTABLEKS R31 R30 K85 ["TextYAlignment"]
  LOADN R31 1
  SETTABLEKS R31 R30 K60 ["BackgroundTransparency"]
  CALL R28 2 1
  MOVE R29 R3
  LOADK R30 K89 ["> #ByDateRangeFilter"]
  DUPTABLE R31 K90 [{"Size", "AutomaticSize"}]
  GETIMPORT R32 K49 [UDim2.new]
  LOADN R33 1
  LOADN R34 0
  LOADN R35 0
  LOADN R36 0
  CALL R32 4 1
  SETTABLEKS R32 R31 K46 ["Size"]
  GETIMPORT R32 K65 [Enum.AutomaticSize.Y]
  SETTABLEKS R32 R31 K59 ["AutomaticSize"]
  CALL R29 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R3
  LOADK R25 K91 [">> .Component-FilterMenu-By"]
  DUPTABLE R26 K92 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R27 K49 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  GETTABLEKS R31 R2 K93 ["byHeight"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K46 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K60 ["BackgroundTransparency"]
  NEWTABLE R27 0 2
  MOVE R28 R3
  LOADK R29 K84 ["> #Label"]
  DUPTABLE R30 K95 [{"Position", "Size", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "BackgroundTransparency"}]
  GETIMPORT R31 K49 [UDim2.new]
  LOADN R32 0
  LOADN R33 2
  LOADN R34 0
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K94 ["Position"]
  GETIMPORT R31 K49 [UDim2.new]
  LOADK R32 K96 [0.5]
  LOADN R33 0
  LOADN R34 1
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K46 ["Size"]
  SETTABLEKS R8 R30 K61 ["TextSize"]
  JUMPIFNOT R10 [+2]
  LOADK R31 K31 ["$FoundationColorsContentEmphasis"]
  JUMP [+1]
  LOADK R31 K32 ["$TextPrimary"]
  SETTABLEKS R31 R30 K29 ["TextColor3"]
  GETIMPORT R31 K67 [Enum.TextXAlignment.Left]
  SETTABLEKS R31 R30 K62 ["TextXAlignment"]
  GETIMPORT R31 K88 [Enum.TextYAlignment.Center]
  SETTABLEKS R31 R30 K85 ["TextYAlignment"]
  LOADN R31 1
  SETTABLEKS R31 R30 K60 ["BackgroundTransparency"]
  CALL R28 2 1
  MOVE R29 R3
  LOADK R30 K97 ["> #SelectAll"]
  DUPTABLE R31 K98 [{"Size", "TextSize", "TextXAlignment", "TextYAlignment", "BackgroundTransparency", "TextColor3"}]
  GETIMPORT R32 K49 [UDim2.new]
  LOADK R33 K96 [0.5]
  LOADN R34 0
  LOADN R35 1
  LOADN R36 0
  CALL R32 4 1
  SETTABLEKS R32 R31 K46 ["Size"]
  SETTABLEKS R8 R31 K61 ["TextSize"]
  GETIMPORT R32 K100 [Enum.TextXAlignment.Right]
  SETTABLEKS R32 R31 K62 ["TextXAlignment"]
  GETIMPORT R32 K88 [Enum.TextYAlignment.Center]
  SETTABLEKS R32 R31 K85 ["TextYAlignment"]
  LOADN R32 1
  SETTABLEKS R32 R31 K60 ["BackgroundTransparency"]
  JUMPIFNOT R10 [+2]
  LOADK R32 K31 ["$FoundationColorsContentEmphasis"]
  JUMP [+1]
  LOADK R32 K32 ["$TextPrimary"]
  SETTABLEKS R32 R31 K29 ["TextColor3"]
  NEWTABLE R32 0 1
  MOVE R33 R3
  LOADK R34 K73 [":hover"]
  DUPTABLE R35 K101 [{"TextColor3"}]
  JUMPIFNOT R10 [+2]
  LOADK R36 K102 ["$FoundationColorsContentMuted"]
  JUMP [+1]
  LOADK R36 K103 ["$TextSecondary"]
  SETTABLEKS R36 R35 K29 ["TextColor3"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R3
  LOADK R26 K104 [">> .Component-FilterMenu-CheckBoxes"]
  DUPTABLE R27 K47 [{"Size"}]
  GETIMPORT R28 K49 [UDim2.new]
  LOADN R29 1
  LOADN R30 0
  LOADN R31 0
  MOVE R32 R7
  CALL R28 4 1
  SETTABLEKS R28 R27 K46 ["Size"]
  NEWTABLE R28 0 4
  MOVE R29 R3
  LOADK R30 K51 ["::UIListLayout"]
  DUPTABLE R31 K70 [{"Padding"}]
  GETIMPORT R32 K38 [UDim.new]
  LOADN R33 0
  MOVE R34 R5
  CALL R32 2 1
  SETTABLEKS R32 R31 K69 ["Padding"]
  CALL R29 2 1
  MOVE R30 R3
  LOADK R31 K105 [">> #CheckboxContainer"]
  DUPTABLE R32 K47 [{"Size"}]
  GETIMPORT R33 K49 [UDim2.new]
  LOADN R34 0
  LOADN R35 24
  LOADN R36 0
  MOVE R37 R7
  CALL R33 4 1
  SETTABLEKS R33 R32 K46 ["Size"]
  CALL R30 2 1
  MOVE R31 R3
  LOADK R32 K106 [">> .Component-Checkbox"]
  DUPTABLE R33 K107 [{"Position"}]
  GETIMPORT R34 K49 [UDim2.new]
  LOADN R35 0
  LOADN R36 0
  LOADN R37 0
  DIVK R39 R7 K109 [2]
  SUBK R38 R39 K108 [12]
  CALL R34 4 1
  SETTABLEKS R34 R33 K94 ["Position"]
  CALL R31 2 1
  MOVE R32 R3
  LOADK R33 K110 [">> .Component-CheckboxButton"]
  DUPTABLE R34 K111 [{"TextColor3", "Size", "BackgroundTransparency", "TextSize", "TextXAlignment", "TextYAlignment"}]
  JUMPIFNOT R10 [+2]
  LOADK R35 K31 ["$FoundationColorsContentEmphasis"]
  JUMP [+1]
  LOADK R35 K32 ["$TextPrimary"]
  SETTABLEKS R35 R34 K29 ["TextColor3"]
  GETIMPORT R35 K49 [UDim2.new]
  LOADN R36 1
  LOADN R37 156
  LOADN R38 0
  MOVE R39 R7
  CALL R35 4 1
  SETTABLEKS R35 R34 K46 ["Size"]
  LOADN R35 1
  SETTABLEKS R35 R34 K60 ["BackgroundTransparency"]
  SETTABLEKS R8 R34 K61 ["TextSize"]
  GETIMPORT R35 K67 [Enum.TextXAlignment.Left]
  SETTABLEKS R35 R34 K62 ["TextXAlignment"]
  GETIMPORT R35 K88 [Enum.TextYAlignment.Center]
  SETTABLEKS R35 R34 K85 ["TextYAlignment"]
  CALL R32 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  RETURN R11 -1
