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
  GETTABLEKS R5 R2 K13 ["buttonPaddingVertical"]
  GETTABLEKS R6 R2 K14 ["defaultPadding"]
  GETTABLEKS R7 R2 K15 ["filterHeaderHeight"]
  GETTABLEKS R8 R2 K16 ["checkBoxRowHeight"]
  GETTABLEKS R9 R2 K17 ["normalFontSize"]
  GETTABLEKS R10 R2 K18 ["headerFontSize"]
  MOVE R11 R3
  LOADK R12 K19 [".Component-FilterMenu"]
  DUPTABLE R13 K21 [{"BackgroundColor3"}]
  LOADK R14 K22 ["$ForegroundMain"]
  SETTABLEKS R14 R13 K20 ["BackgroundColor3"]
  NEWTABLE R14 0 3
  MOVE R15 R3
  LOADK R16 K23 [">> .Component-OptionButton"]
  DUPTABLE R17 K26 [{"AutoButtonColor", "TextColor3"}]
  LOADB R18 0
  SETTABLEKS R18 R17 K24 ["AutoButtonColor"]
  LOADK R18 K27 ["$TextPrimary"]
  SETTABLEKS R18 R17 K25 ["TextColor3"]
  NEWTABLE R18 0 2
  MOVE R19 R3
  LOADK R20 K28 ["::UICorner"]
  DUPTABLE R21 K30 [{"CornerRadius"}]
  GETIMPORT R22 K33 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K29 ["CornerRadius"]
  CALL R19 2 1
  MOVE R20 R3
  LOADK R21 K34 ["::UIPadding"]
  DUPTABLE R22 K39 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R23 K33 [UDim.new]
  LOADN R24 0
  MOVE R25 R4
  CALL R23 2 1
  SETTABLEKS R23 R22 K35 ["PaddingLeft"]
  GETIMPORT R23 K33 [UDim.new]
  LOADN R24 0
  MOVE R25 R4
  CALL R23 2 1
  SETTABLEKS R23 R22 K36 ["PaddingRight"]
  GETIMPORT R23 K33 [UDim.new]
  LOADN R24 0
  MOVE R25 R5
  CALL R23 2 1
  SETTABLEKS R23 R22 K37 ["PaddingTop"]
  GETIMPORT R23 K33 [UDim.new]
  LOADN R24 0
  MOVE R25 R5
  CALL R23 2 1
  SETTABLEKS R23 R22 K38 ["PaddingBottom"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R3
  LOADK R17 K40 [">> #Header"]
  DUPTABLE R18 K42 [{"Size"}]
  GETIMPORT R19 K44 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  MOVE R23 R7
  CALL R19 4 1
  SETTABLEKS R19 R18 K41 ["Size"]
  NEWTABLE R19 0 4
  MOVE R20 R3
  LOADK R21 K34 ["::UIPadding"]
  DUPTABLE R22 K45 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R23 K33 [UDim.new]
  LOADN R24 0
  LOADN R25 4
  CALL R23 2 1
  SETTABLEKS R23 R22 K37 ["PaddingTop"]
  GETIMPORT R23 K33 [UDim.new]
  LOADN R24 0
  LOADN R25 4
  CALL R23 2 1
  SETTABLEKS R23 R22 K38 ["PaddingBottom"]
  GETIMPORT R23 K33 [UDim.new]
  LOADN R24 0
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K35 ["PaddingLeft"]
  GETIMPORT R23 K33 [UDim.new]
  LOADN R24 0
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K36 ["PaddingRight"]
  CALL R20 2 1
  MOVE R21 R3
  LOADK R22 K46 ["::UIListLayout"]
  DUPTABLE R23 K48 [{"HorizontalFlex"}]
  GETIMPORT R24 K52 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R24 R23 K47 ["HorizontalFlex"]
  CALL R21 2 1
  MOVE R22 R3
  LOADK R23 K53 ["> #Text"]
  DUPTABLE R24 K58 [{"Size", "AutomaticSize", "BackgroundTransparency", "TextSize", "TextColor3", "TextXAlignment"}]
  GETIMPORT R25 K44 [UDim2.new]
  LOADN R26 0
  LOADN R27 0
  LOADN R28 1
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K41 ["Size"]
  GETIMPORT R25 K60 [Enum.AutomaticSize.Y]
  SETTABLEKS R25 R24 K54 ["AutomaticSize"]
  LOADN R25 1
  SETTABLEKS R25 R24 K55 ["BackgroundTransparency"]
  SETTABLEKS R10 R24 K56 ["TextSize"]
  LOADK R25 K27 ["$TextPrimary"]
  SETTABLEKS R25 R24 K25 ["TextColor3"]
  GETIMPORT R25 K62 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K57 ["TextXAlignment"]
  CALL R22 2 1
  MOVE R23 R3
  LOADK R24 K63 ["> #Buttons"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 3
  MOVE R27 R3
  LOADK R28 K46 ["::UIListLayout"]
  DUPTABLE R29 K65 [{"Padding"}]
  GETIMPORT R30 K33 [UDim.new]
  LOADN R31 0
  MOVE R32 R6
  CALL R30 2 1
  SETTABLEKS R30 R29 K64 ["Padding"]
  CALL R27 2 1
  MOVE R28 R3
  LOADK R29 K66 ["> #Clear"]
  DUPTABLE R30 K21 [{"BackgroundColor3"}]
  LOADK R31 K67 ["$SecondaryMain"]
  SETTABLEKS R31 R30 K20 ["BackgroundColor3"]
  NEWTABLE R31 0 1
  MOVE R32 R3
  LOADK R33 K68 [":hover"]
  DUPTABLE R34 K21 [{"BackgroundColor3"}]
  LOADK R35 K69 ["$SecondaryHoverBackground"]
  SETTABLEKS R35 R34 K20 ["BackgroundColor3"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R3
  LOADK R30 K70 ["> #Apply"]
  DUPTABLE R31 K21 [{"BackgroundColor3"}]
  LOADK R32 K71 ["$PrimaryMain"]
  SETTABLEKS R32 R31 K20 ["BackgroundColor3"]
  NEWTABLE R32 0 1
  MOVE R33 R3
  LOADK R34 K68 [":hover"]
  DUPTABLE R35 K21 [{"BackgroundColor3"}]
  LOADK R36 K72 ["$PrimaryHoverBackground"]
  SETTABLEKS R36 R35 K20 ["BackgroundColor3"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R3
  LOADK R18 K73 ["> #Contents"]
  DUPTABLE R19 K76 [{"Size", "BorderSizePixel", "ScrollBarThickness"}]
  GETIMPORT R20 K44 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 1
  MINUS R24 R7
  CALL R20 4 1
  SETTABLEKS R20 R19 K41 ["Size"]
  LOADN R20 0
  SETTABLEKS R20 R19 K74 ["BorderSizePixel"]
  LOADN R20 0
  SETTABLEKS R20 R19 K75 ["ScrollBarThickness"]
  NEWTABLE R20 0 5
  MOVE R21 R3
  LOADK R22 K34 ["::UIPadding"]
  DUPTABLE R23 K45 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R24 K33 [UDim.new]
  LOADN R25 0
  LOADN R26 16
  CALL R24 2 1
  SETTABLEKS R24 R23 K37 ["PaddingTop"]
  GETIMPORT R24 K33 [UDim.new]
  LOADN R25 0
  LOADN R26 16
  CALL R24 2 1
  SETTABLEKS R24 R23 K38 ["PaddingBottom"]
  GETIMPORT R24 K33 [UDim.new]
  LOADN R25 0
  LOADN R26 16
  CALL R24 2 1
  SETTABLEKS R24 R23 K35 ["PaddingLeft"]
  GETIMPORT R24 K33 [UDim.new]
  LOADN R25 0
  LOADN R26 16
  CALL R24 2 1
  SETTABLEKS R24 R23 K36 ["PaddingRight"]
  CALL R21 2 1
  MOVE R22 R3
  LOADK R23 K46 ["::UIListLayout"]
  DUPTABLE R24 K65 [{"Padding"}]
  GETIMPORT R25 K33 [UDim.new]
  LOADN R26 0
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K64 ["Padding"]
  CALL R22 2 1
  MOVE R23 R3
  LOADK R24 K77 [">> #ByDateRange"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 3
  MOVE R27 R3
  LOADK R28 K46 ["::UIListLayout"]
  DUPTABLE R29 K65 [{"Padding"}]
  GETIMPORT R30 K33 [UDim.new]
  LOADN R31 0
  MOVE R32 R6
  CALL R30 2 1
  SETTABLEKS R30 R29 K64 ["Padding"]
  CALL R27 2 1
  MOVE R28 R3
  LOADK R29 K78 ["> #Label"]
  DUPTABLE R30 K80 [{"AutomaticSize", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "BackgroundTransparency"}]
  GETIMPORT R31 K60 [Enum.AutomaticSize.Y]
  SETTABLEKS R31 R30 K54 ["AutomaticSize"]
  SETTABLEKS R9 R30 K56 ["TextSize"]
  LOADK R31 K27 ["$TextPrimary"]
  SETTABLEKS R31 R30 K25 ["TextColor3"]
  GETIMPORT R31 K62 [Enum.TextXAlignment.Left]
  SETTABLEKS R31 R30 K57 ["TextXAlignment"]
  GETIMPORT R31 K82 [Enum.TextYAlignment.Center]
  SETTABLEKS R31 R30 K79 ["TextYAlignment"]
  LOADN R31 1
  SETTABLEKS R31 R30 K55 ["BackgroundTransparency"]
  CALL R28 2 1
  MOVE R29 R3
  LOADK R30 K83 ["> #ByDateRangeFilter"]
  DUPTABLE R31 K84 [{"Size", "AutomaticSize"}]
  GETIMPORT R32 K44 [UDim2.new]
  LOADN R33 1
  LOADN R34 0
  LOADN R35 0
  LOADN R36 0
  CALL R32 4 1
  SETTABLEKS R32 R31 K41 ["Size"]
  GETIMPORT R32 K60 [Enum.AutomaticSize.Y]
  SETTABLEKS R32 R31 K54 ["AutomaticSize"]
  CALL R29 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R3
  LOADK R25 K85 [">> .Component-FilterMenu-By"]
  DUPTABLE R26 K86 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R27 K44 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  GETTABLEKS R31 R2 K87 ["byHeight"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K41 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K55 ["BackgroundTransparency"]
  NEWTABLE R27 0 2
  MOVE R28 R3
  LOADK R29 K78 ["> #Label"]
  DUPTABLE R30 K89 [{"Position", "Size", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "BackgroundTransparency"}]
  GETIMPORT R31 K44 [UDim2.new]
  LOADN R32 0
  LOADN R33 2
  LOADN R34 0
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K88 ["Position"]
  GETIMPORT R31 K44 [UDim2.new]
  LOADK R32 K90 [0.5]
  LOADN R33 0
  LOADN R34 1
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K41 ["Size"]
  SETTABLEKS R9 R30 K56 ["TextSize"]
  LOADK R31 K27 ["$TextPrimary"]
  SETTABLEKS R31 R30 K25 ["TextColor3"]
  GETIMPORT R31 K62 [Enum.TextXAlignment.Left]
  SETTABLEKS R31 R30 K57 ["TextXAlignment"]
  GETIMPORT R31 K82 [Enum.TextYAlignment.Center]
  SETTABLEKS R31 R30 K79 ["TextYAlignment"]
  LOADN R31 1
  SETTABLEKS R31 R30 K55 ["BackgroundTransparency"]
  CALL R28 2 1
  MOVE R29 R3
  LOADK R30 K91 ["> #SelectAll"]
  DUPTABLE R31 K92 [{"Size", "TextSize", "TextXAlignment", "TextYAlignment", "BackgroundTransparency", "TextColor3"}]
  GETIMPORT R32 K44 [UDim2.new]
  LOADK R33 K90 [0.5]
  LOADN R34 0
  LOADN R35 1
  LOADN R36 0
  CALL R32 4 1
  SETTABLEKS R32 R31 K41 ["Size"]
  SETTABLEKS R9 R31 K56 ["TextSize"]
  GETIMPORT R32 K94 [Enum.TextXAlignment.Right]
  SETTABLEKS R32 R31 K57 ["TextXAlignment"]
  GETIMPORT R32 K82 [Enum.TextYAlignment.Center]
  SETTABLEKS R32 R31 K79 ["TextYAlignment"]
  LOADN R32 1
  SETTABLEKS R32 R31 K55 ["BackgroundTransparency"]
  LOADK R32 K27 ["$TextPrimary"]
  SETTABLEKS R32 R31 K25 ["TextColor3"]
  NEWTABLE R32 0 1
  MOVE R33 R3
  LOADK R34 K68 [":hover"]
  DUPTABLE R35 K95 [{"TextColor3"}]
  LOADK R36 K96 ["$TextSecondary"]
  SETTABLEKS R36 R35 K25 ["TextColor3"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R3
  LOADK R26 K97 [">> .Component-FilterMenu-CheckBoxes"]
  DUPTABLE R27 K42 [{"Size"}]
  GETIMPORT R28 K44 [UDim2.new]
  LOADN R29 1
  LOADN R30 0
  LOADN R31 0
  MOVE R32 R8
  CALL R28 4 1
  SETTABLEKS R28 R27 K41 ["Size"]
  NEWTABLE R28 0 4
  MOVE R29 R3
  LOADK R30 K46 ["::UIListLayout"]
  DUPTABLE R31 K65 [{"Padding"}]
  GETIMPORT R32 K33 [UDim.new]
  LOADN R33 0
  MOVE R34 R6
  CALL R32 2 1
  SETTABLEKS R32 R31 K64 ["Padding"]
  CALL R29 2 1
  MOVE R30 R3
  LOADK R31 K98 [">> #CheckboxContainer"]
  DUPTABLE R32 K42 [{"Size"}]
  GETIMPORT R33 K44 [UDim2.new]
  LOADN R34 0
  LOADN R35 24
  LOADN R36 0
  MOVE R37 R8
  CALL R33 4 1
  SETTABLEKS R33 R32 K41 ["Size"]
  CALL R30 2 1
  MOVE R31 R3
  LOADK R32 K99 [">> .Component-Checkbox"]
  DUPTABLE R33 K100 [{"Position"}]
  GETIMPORT R34 K44 [UDim2.new]
  LOADN R35 0
  LOADN R36 0
  LOADN R37 0
  DIVK R39 R8 K102 [2]
  SUBK R38 R39 K101 [12]
  CALL R34 4 1
  SETTABLEKS R34 R33 K88 ["Position"]
  CALL R31 2 1
  MOVE R32 R3
  LOADK R33 K103 [">> .Component-CheckboxButton"]
  DUPTABLE R34 K104 [{"TextColor3", "Size", "BackgroundTransparency", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADK R35 K27 ["$TextPrimary"]
  SETTABLEKS R35 R34 K25 ["TextColor3"]
  GETIMPORT R35 K44 [UDim2.new]
  LOADN R36 1
  LOADN R37 156
  LOADN R38 0
  MOVE R39 R8
  CALL R35 4 1
  SETTABLEKS R35 R34 K41 ["Size"]
  LOADN R35 1
  SETTABLEKS R35 R34 K55 ["BackgroundTransparency"]
  SETTABLEKS R9 R34 K56 ["TextSize"]
  GETIMPORT R35 K62 [Enum.TextXAlignment.Left]
  SETTABLEKS R35 R34 K57 ["TextXAlignment"]
  GETIMPORT R35 K82 [Enum.TextYAlignment.Center]
  SETTABLEKS R35 R34 K79 ["TextYAlignment"]
  CALL R32 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  RETURN R11 -1
