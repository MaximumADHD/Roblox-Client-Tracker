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
  MOVE R4 R3
  LOADK R5 K12 [".Component-FilterMenu"]
  DUPTABLE R6 K14 [{"BackgroundColor3"}]
  LOADK R7 K15 ["$ForegroundMain"]
  SETTABLEKS R7 R6 K13 ["BackgroundColor3"]
  NEWTABLE R7 0 3
  MOVE R8 R3
  LOADK R9 K16 [">> .Component-OptionButton"]
  DUPTABLE R10 K20 [{"Size", "AutoButtonColor", "TextColor3"}]
  GETIMPORT R11 K23 [UDim2.new]
  LOADN R12 0
  LOADN R13 58
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K17 ["Size"]
  LOADB R11 0
  SETTABLEKS R11 R10 K18 ["AutoButtonColor"]
  LOADK R11 K24 ["$TextPrimary"]
  SETTABLEKS R11 R10 K19 ["TextColor3"]
  NEWTABLE R11 0 1
  MOVE R12 R3
  LOADK R13 K25 ["::UICorner"]
  DUPTABLE R14 K27 [{"CornerRadius"}]
  GETIMPORT R15 K29 [UDim.new]
  LOADN R16 0
  LOADN R17 4
  CALL R15 2 1
  SETTABLEKS R15 R14 K26 ["CornerRadius"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R3
  LOADK R10 K30 [">> #Header"]
  DUPTABLE R11 K31 [{"Size"}]
  GETIMPORT R12 K23 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R16 R2 K32 ["filterHeaderHeight"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K17 ["Size"]
  NEWTABLE R12 0 5
  MOVE R13 R3
  LOADK R14 K33 ["::UIPadding"]
  DUPTABLE R15 K38 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R16 K29 [UDim.new]
  LOADN R17 0
  LOADN R18 4
  CALL R16 2 1
  SETTABLEKS R16 R15 K34 ["PaddingTop"]
  GETIMPORT R16 K29 [UDim.new]
  LOADN R17 0
  LOADN R18 4
  CALL R16 2 1
  SETTABLEKS R16 R15 K35 ["PaddingBottom"]
  GETIMPORT R16 K29 [UDim.new]
  LOADN R17 0
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K36 ["PaddingLeft"]
  GETIMPORT R16 K29 [UDim.new]
  LOADN R17 0
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K37 ["PaddingRight"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K39 ["::UIListLayout"]
  DUPTABLE R16 K41 [{"Padding"}]
  GETIMPORT R17 K29 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K40 ["Padding"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K42 [">> #Clear"]
  DUPTABLE R17 K14 [{"BackgroundColor3"}]
  LOADK R18 K43 ["$SecondaryMain"]
  SETTABLEKS R18 R17 K13 ["BackgroundColor3"]
  NEWTABLE R18 0 1
  MOVE R19 R3
  LOADK R20 K44 [":hover"]
  DUPTABLE R21 K14 [{"BackgroundColor3"}]
  LOADK R22 K45 ["$SecondaryHoverBackground"]
  SETTABLEKS R22 R21 K13 ["BackgroundColor3"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R3
  LOADK R17 K46 [">> #Apply"]
  DUPTABLE R18 K14 [{"BackgroundColor3"}]
  LOADK R19 K47 ["$PrimaryMain"]
  SETTABLEKS R19 R18 K13 ["BackgroundColor3"]
  NEWTABLE R19 0 1
  MOVE R20 R3
  LOADK R21 K44 [":hover"]
  DUPTABLE R22 K14 [{"BackgroundColor3"}]
  LOADK R23 K48 ["$PrimaryHoverBackground"]
  SETTABLEKS R23 R22 K13 ["BackgroundColor3"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R3
  LOADK R18 K49 ["> TextLabel"]
  DUPTABLE R19 K52 [{"Size", "BackgroundTransparency", "TextSize", "TextColor3"}]
  GETIMPORT R20 K23 [UDim2.new]
  LOADN R21 1
  LOADN R22 132
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K17 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K50 ["BackgroundTransparency"]
  GETTABLEKS R20 R2 K53 ["headerFontSize"]
  SETTABLEKS R20 R19 K51 ["TextSize"]
  LOADK R20 K24 ["$TextPrimary"]
  SETTABLEKS R20 R19 K19 ["TextColor3"]
  CALL R17 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R3
  LOADK R11 K54 ["> #Contents"]
  DUPTABLE R12 K56 [{"Size", "BorderSizePixel"}]
  GETIMPORT R13 K23 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  GETTABLEKS R18 R2 K32 ["filterHeaderHeight"]
  MINUS R17 R18
  CALL R13 4 1
  SETTABLEKS R13 R12 K17 ["Size"]
  LOADN R13 0
  SETTABLEKS R13 R12 K55 ["BorderSizePixel"]
  NEWTABLE R13 0 6
  MOVE R14 R3
  LOADK R15 K33 ["::UIPadding"]
  DUPTABLE R16 K38 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R17 K29 [UDim.new]
  LOADN R18 0
  LOADN R19 16
  CALL R17 2 1
  SETTABLEKS R17 R16 K34 ["PaddingTop"]
  GETIMPORT R17 K29 [UDim.new]
  LOADN R18 0
  LOADN R19 16
  CALL R17 2 1
  SETTABLEKS R17 R16 K35 ["PaddingBottom"]
  GETIMPORT R17 K29 [UDim.new]
  LOADN R18 0
  LOADN R19 16
  CALL R17 2 1
  SETTABLEKS R17 R16 K36 ["PaddingLeft"]
  GETIMPORT R17 K29 [UDim.new]
  LOADN R18 0
  LOADN R19 16
  CALL R17 2 1
  SETTABLEKS R17 R16 K37 ["PaddingRight"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K57 ["> #ByDateRangeFilter"]
  DUPTABLE R17 K31 [{"Size"}]
  GETIMPORT R18 K23 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 40
  CALL R18 4 1
  SETTABLEKS R18 R17 K17 ["Size"]
  NEWTABLE R18 0 0
  CALL R15 3 1
  MOVE R16 R3
  LOADK R17 K58 [">> .Component-SpacerSmall"]
  DUPTABLE R18 K59 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R19 K23 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 8
  CALL R19 4 1
  SETTABLEKS R19 R18 K17 ["Size"]
  LOADN R19 1
  SETTABLEKS R19 R18 K50 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K60 [">> .Component-Spacer"]
  DUPTABLE R19 K59 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R20 K23 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  LOADN R24 16
  CALL R20 4 1
  SETTABLEKS R20 R19 K17 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K50 ["BackgroundTransparency"]
  CALL R17 2 1
  MOVE R18 R3
  LOADK R19 K61 [">> .Component-FilterMenu-By"]
  DUPTABLE R20 K59 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R21 K23 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  GETTABLEKS R25 R2 K62 ["byHeight"]
  CALL R21 4 1
  SETTABLEKS R21 R20 K17 ["Size"]
  LOADN R21 1
  SETTABLEKS R21 R20 K50 ["BackgroundTransparency"]
  NEWTABLE R21 0 2
  MOVE R22 R3
  LOADK R23 K63 ["> #Label"]
  DUPTABLE R24 K67 [{"Position", "Size", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "BackgroundTransparency"}]
  GETIMPORT R25 K23 [UDim2.new]
  LOADN R26 0
  LOADN R27 2
  LOADN R28 0
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K64 ["Position"]
  GETIMPORT R25 K23 [UDim2.new]
  LOADK R26 K68 [0.5]
  LOADN R27 0
  LOADN R28 1
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K17 ["Size"]
  GETTABLEKS R25 R2 K69 ["normalFontSize"]
  SETTABLEKS R25 R24 K51 ["TextSize"]
  LOADK R25 K24 ["$TextPrimary"]
  SETTABLEKS R25 R24 K19 ["TextColor3"]
  GETIMPORT R25 K72 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K65 ["TextXAlignment"]
  GETIMPORT R25 K74 [Enum.TextYAlignment.Center]
  SETTABLEKS R25 R24 K66 ["TextYAlignment"]
  LOADN R25 1
  SETTABLEKS R25 R24 K50 ["BackgroundTransparency"]
  CALL R22 2 1
  MOVE R23 R3
  LOADK R24 K75 ["> #SelectAll"]
  DUPTABLE R25 K76 [{"Size", "TextSize", "TextXAlignment", "TextYAlignment", "BackgroundTransparency", "TextColor3"}]
  GETIMPORT R26 K23 [UDim2.new]
  LOADK R27 K68 [0.5]
  LOADN R28 0
  LOADN R29 1
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K17 ["Size"]
  GETTABLEKS R26 R2 K69 ["normalFontSize"]
  SETTABLEKS R26 R25 K51 ["TextSize"]
  GETIMPORT R26 K78 [Enum.TextXAlignment.Right]
  SETTABLEKS R26 R25 K65 ["TextXAlignment"]
  GETIMPORT R26 K74 [Enum.TextYAlignment.Center]
  SETTABLEKS R26 R25 K66 ["TextYAlignment"]
  LOADN R26 1
  SETTABLEKS R26 R25 K50 ["BackgroundTransparency"]
  LOADK R26 K24 ["$TextPrimary"]
  SETTABLEKS R26 R25 K19 ["TextColor3"]
  NEWTABLE R26 0 1
  MOVE R27 R3
  LOADK R28 K44 [":hover"]
  DUPTABLE R29 K79 [{"TextColor3"}]
  LOADK R30 K80 ["$TextSecondary"]
  SETTABLEKS R30 R29 K19 ["TextColor3"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R3
  LOADK R20 K81 [">> .Component-FilterMenu-CheckBoxes"]
  DUPTABLE R21 K31 [{"Size"}]
  GETIMPORT R22 K23 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  GETTABLEKS R26 R2 K82 ["checkBoxRowHeight"]
  CALL R22 4 1
  SETTABLEKS R22 R21 K17 ["Size"]
  NEWTABLE R22 0 4
  MOVE R23 R3
  LOADK R24 K39 ["::UIListLayout"]
  DUPTABLE R25 K41 [{"Padding"}]
  GETIMPORT R26 K29 [UDim.new]
  LOADN R27 0
  LOADN R28 8
  CALL R26 2 1
  SETTABLEKS R26 R25 K40 ["Padding"]
  CALL R23 2 1
  MOVE R24 R3
  LOADK R25 K83 [">> #CheckboxContainer"]
  DUPTABLE R26 K31 [{"Size"}]
  GETIMPORT R27 K23 [UDim2.new]
  LOADN R28 0
  LOADN R29 24
  LOADN R30 0
  GETTABLEKS R31 R2 K82 ["checkBoxRowHeight"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K17 ["Size"]
  CALL R24 2 1
  MOVE R25 R3
  LOADK R26 K84 [">> .Component-Checkbox"]
  DUPTABLE R27 K85 [{"Position"}]
  GETIMPORT R28 K23 [UDim2.new]
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  GETTABLEKS R34 R2 K82 ["checkBoxRowHeight"]
  DIVK R33 R34 K87 [2]
  SUBK R32 R33 K86 [12]
  CALL R28 4 1
  SETTABLEKS R28 R27 K64 ["Position"]
  CALL R25 2 1
  MOVE R26 R3
  LOADK R27 K88 [">> .Component-CheckboxButton"]
  DUPTABLE R28 K89 [{"TextColor3", "Size", "BackgroundTransparency", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADK R29 K24 ["$TextPrimary"]
  SETTABLEKS R29 R28 K19 ["TextColor3"]
  GETIMPORT R29 K23 [UDim2.new]
  LOADN R30 1
  LOADN R31 156
  LOADN R32 0
  GETTABLEKS R33 R2 K82 ["checkBoxRowHeight"]
  CALL R29 4 1
  SETTABLEKS R29 R28 K17 ["Size"]
  LOADN R29 1
  SETTABLEKS R29 R28 K50 ["BackgroundTransparency"]
  GETTABLEKS R29 R2 K69 ["normalFontSize"]
  SETTABLEKS R29 R28 K51 ["TextSize"]
  GETIMPORT R29 K72 [Enum.TextXAlignment.Left]
  SETTABLEKS R29 R28 K65 ["TextXAlignment"]
  GETIMPORT R29 K74 [Enum.TextYAlignment.Center]
  SETTABLEKS R29 R28 K66 ["TextYAlignment"]
  CALL R26 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
