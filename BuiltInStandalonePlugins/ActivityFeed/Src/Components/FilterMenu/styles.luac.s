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
  NEWTABLE R7 0 4
  MOVE R8 R3
  LOADK R9 K16 [">> TextLabel"]
  DUPTABLE R10 K18 [{"TextColor3"}]
  LOADK R11 K19 ["$TextPrimary"]
  SETTABLEKS R11 R10 K17 ["TextColor3"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K20 [">> .Component-OptionButton"]
  DUPTABLE R11 K22 [{"TextColor3", "BackgroundColor3", "TextSize"}]
  LOADK R12 K23 ["$TextContrast"]
  SETTABLEKS R12 R11 K17 ["TextColor3"]
  LOADK R12 K24 ["$PrimaryMain"]
  SETTABLEKS R12 R11 K13 ["BackgroundColor3"]
  GETTABLEKS R12 R2 K25 ["buttonFontSize"]
  SETTABLEKS R12 R11 K21 ["TextSize"]
  NEWTABLE R12 0 2
  MOVE R13 R3
  LOADK R14 K26 [":hover"]
  DUPTABLE R15 K14 [{"BackgroundColor3"}]
  LOADK R16 K27 ["$PrimaryHoverBackground"]
  SETTABLEKS R16 R15 K13 ["BackgroundColor3"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K28 ["::UICorner"]
  DUPTABLE R16 K30 [{"CornerRadius"}]
  GETIMPORT R17 K33 [UDim.new]
  LOADN R18 0
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K29 ["CornerRadius"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R3
  LOADK R11 K34 [">> #Header"]
  DUPTABLE R12 K36 [{"Size", "BackgroundColor3"}]
  GETIMPORT R13 K38 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  GETTABLEKS R17 R2 K39 ["filterHeaderHeight"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K35 ["Size"]
  LOADK R13 K40 ["$SecondaryMain"]
  SETTABLEKS R13 R12 K13 ["BackgroundColor3"]
  NEWTABLE R13 0 4
  MOVE R14 R3
  LOADK R15 K41 ["::UIPadding"]
  DUPTABLE R16 K44 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R17 K33 [UDim.new]
  LOADN R18 0
  LOADN R19 5
  CALL R17 2 1
  SETTABLEKS R17 R16 K42 ["PaddingTop"]
  GETIMPORT R17 K33 [UDim.new]
  LOADN R18 0
  LOADN R19 5
  CALL R17 2 1
  SETTABLEKS R17 R16 K43 ["PaddingBottom"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K45 ["::UIListLayout"]
  DUPTABLE R17 K47 [{"Padding"}]
  GETIMPORT R18 K33 [UDim.new]
  LOADN R19 0
  LOADN R20 5
  CALL R18 2 1
  SETTABLEKS R18 R17 K46 ["Padding"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K48 [">> TextButton"]
  DUPTABLE R18 K49 [{"Size"}]
  GETIMPORT R19 K38 [UDim2.new]
  LOADN R20 0
  LOADN R21 50
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K35 ["Size"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K50 ["> TextLabel"]
  DUPTABLE R19 K52 [{"Size", "BackgroundTransparency", "TextSize", "TextColor3"}]
  GETIMPORT R20 K38 [UDim2.new]
  LOADN R21 1
  LOADN R22 146
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K35 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K51 ["BackgroundTransparency"]
  GETTABLEKS R20 R2 K53 ["headerFontSize"]
  SETTABLEKS R20 R19 K21 ["TextSize"]
  LOADK R20 K54 ["$TextSecondary"]
  SETTABLEKS R20 R19 K17 ["TextColor3"]
  CALL R17 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R3
  LOADK R12 K55 ["> #Contents"]
  DUPTABLE R13 K57 [{"Size", "BorderSizePixel"}]
  GETIMPORT R14 K38 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  GETTABLEKS R19 R2 K39 ["filterHeaderHeight"]
  MINUS R18 R19
  CALL R14 4 1
  SETTABLEKS R14 R13 K35 ["Size"]
  LOADN R14 0
  SETTABLEKS R14 R13 K56 ["BorderSizePixel"]
  NEWTABLE R14 0 4
  MOVE R15 R3
  LOADK R16 K41 ["::UIPadding"]
  DUPTABLE R17 K60 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R18 K33 [UDim.new]
  LOADN R19 0
  LOADN R20 8
  CALL R18 2 1
  SETTABLEKS R18 R17 K58 ["PaddingLeft"]
  GETIMPORT R18 K33 [UDim.new]
  LOADN R19 0
  LOADN R20 8
  CALL R18 2 1
  SETTABLEKS R18 R17 K59 ["PaddingRight"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K61 ["> #ByDateRangeFilter"]
  DUPTABLE R18 K49 [{"Size"}]
  GETIMPORT R19 K38 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 40
  CALL R19 4 1
  SETTABLEKS R19 R18 K35 ["Size"]
  NEWTABLE R19 0 0
  CALL R16 3 1
  MOVE R17 R3
  LOADK R18 K62 ["> .Component-FilterMenu-By"]
  DUPTABLE R19 K63 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R20 K38 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  LOADN R24 30
  CALL R20 4 1
  SETTABLEKS R20 R19 K35 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K51 ["BackgroundTransparency"]
  NEWTABLE R20 0 2
  MOVE R21 R3
  LOADK R22 K41 ["::UIPadding"]
  DUPTABLE R23 K64 [{"PaddingLeft"}]
  GETIMPORT R24 K33 [UDim.new]
  LOADN R25 0
  LOADN R26 8
  CALL R24 2 1
  SETTABLEKS R24 R23 K58 ["PaddingLeft"]
  CALL R21 2 1
  MOVE R22 R3
  LOADK R23 K50 ["> TextLabel"]
  DUPTABLE R24 K67 [{"Size", "TextSize", "TextXAlignment", "TextYAlignment", "BackgroundTransparency"}]
  GETIMPORT R25 K38 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 1
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K35 ["Size"]
  GETTABLEKS R25 R2 K68 ["normalFontSize"]
  SETTABLEKS R25 R24 K21 ["TextSize"]
  GETIMPORT R25 K71 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K65 ["TextXAlignment"]
  GETIMPORT R25 K73 [Enum.TextYAlignment.Center]
  SETTABLEKS R25 R24 K66 ["TextYAlignment"]
  LOADN R25 1
  SETTABLEKS R25 R24 K51 ["BackgroundTransparency"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R3
  LOADK R19 K74 [">> .Component-FilterMenu-CheckBoxes"]
  DUPTABLE R20 K49 [{"Size"}]
  GETIMPORT R21 K38 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  GETTABLEKS R25 R2 K75 ["checkBoxRowHeight"]
  CALL R21 4 1
  SETTABLEKS R21 R20 K35 ["Size"]
  NEWTABLE R21 0 3
  MOVE R22 R3
  LOADK R23 K45 ["::UIListLayout"]
  DUPTABLE R24 K47 [{"Padding"}]
  GETIMPORT R25 K33 [UDim.new]
  LOADN R26 0
  LOADN R27 4
  CALL R25 2 1
  SETTABLEKS R25 R24 K46 ["Padding"]
  CALL R22 2 1
  MOVE R23 R3
  LOADK R24 K76 [">> .Component-Checkbox"]
  NEWTABLE R25 0 0
  CALL R23 2 1
  MOVE R24 R3
  LOADK R25 K77 [">> .Component-CheckboxButton"]
  DUPTABLE R26 K78 [{"TextColor3", "Size", "BackgroundTransparency", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADK R27 K19 ["$TextPrimary"]
  SETTABLEKS R27 R26 K17 ["TextColor3"]
  GETIMPORT R27 K38 [UDim2.new]
  LOADN R28 1
  LOADN R29 156
  LOADN R30 0
  GETTABLEKS R31 R2 K75 ["checkBoxRowHeight"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K35 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K51 ["BackgroundTransparency"]
  GETTABLEKS R27 R2 K68 ["normalFontSize"]
  SETTABLEKS R27 R26 K21 ["TextSize"]
  GETIMPORT R27 K71 [Enum.TextXAlignment.Left]
  SETTABLEKS R27 R26 K65 ["TextXAlignment"]
  GETIMPORT R27 K73 [Enum.TextYAlignment.Center]
  SETTABLEKS R27 R26 K66 ["TextYAlignment"]
  CALL R24 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
