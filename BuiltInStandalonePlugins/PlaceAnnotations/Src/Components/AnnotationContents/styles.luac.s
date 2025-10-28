MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Component-AnnotationContents"]
  DUPTABLE R5 K15 [{"Size", "AutomaticSize", "BackgroundTransparency", "ClipsDescendants"}]
  GETIMPORT R6 K18 [UDim2.fromScale]
  LOADN R7 1
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["Size"]
  GETIMPORT R6 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R6 R5 K12 ["AutomaticSize"]
  LOADN R6 1
  SETTABLEKS R6 R5 K13 ["BackgroundTransparency"]
  LOADB R6 1
  SETTABLEKS R6 R5 K14 ["ClipsDescendants"]
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K22 ["::UIPadding"]
  DUPTABLE R9 K24 [{"PaddingRight"}]
  GETIMPORT R10 K27 [UDim.new]
  LOADN R11 0
  LOADN R12 4
  CALL R10 2 1
  SETTABLEKS R10 R9 K23 ["PaddingRight"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K28 [">> Frame"]
  DUPTABLE R10 K29 [{"BackgroundTransparency"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K13 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K30 ["> #TextColumn"]
  DUPTABLE R11 K31 [{"AutomaticSize"}]
  GETIMPORT R12 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K12 ["AutomaticSize"]
  NEWTABLE R12 0 5
  MOVE R13 R2
  LOADK R14 K32 ["::UIListLayout"]
  DUPTABLE R15 K36 [{"SortOrder", "FillDirection", "Padding"}]
  GETIMPORT R16 K38 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K33 ["SortOrder"]
  GETIMPORT R16 K40 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K34 ["FillDirection"]
  GETIMPORT R16 K27 [UDim.new]
  LOADN R17 0
  LOADN R18 4
  CALL R16 2 1
  SETTABLEKS R16 R15 K35 ["Padding"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K41 ["::UIFlexItem"]
  DUPTABLE R16 K43 [{"FlexMode"}]
  GETIMPORT R17 K46 [Enum.UIFlexMode.Grow]
  SETTABLEKS R17 R16 K42 ["FlexMode"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K47 [">> #UsernameRow"]
  DUPTABLE R17 K48 [{"Size", "AutomaticSize"}]
  GETIMPORT R18 K18 [UDim2.fromScale]
  LOADN R19 1
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K11 ["Size"]
  GETIMPORT R18 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R18 R17 K12 ["AutomaticSize"]
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K49 ["> Frame"]
  DUPTABLE R21 K31 [{"AutomaticSize"}]
  GETIMPORT R22 K51 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K12 ["AutomaticSize"]
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K52 ["> TextLabel"]
  DUPTABLE R25 K57 [{"AutomaticSize", "BackgroundTransparency", "TextScaled", "TextColor3", "TextSize", "Font"}]
  GETIMPORT R26 K51 [Enum.AutomaticSize.XY]
  SETTABLEKS R26 R25 K12 ["AutomaticSize"]
  LOADN R26 1
  SETTABLEKS R26 R25 K13 ["BackgroundTransparency"]
  LOADB R26 0
  SETTABLEKS R26 R25 K53 ["TextScaled"]
  LOADK R26 K58 ["$SecondaryContrast"]
  SETTABLEKS R26 R25 K54 ["TextColor3"]
  LOADN R26 16
  SETTABLEKS R26 R25 K55 ["TextSize"]
  LOADK R26 K59 ["$Font"]
  SETTABLEKS R26 R25 K56 ["Font"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K60 ["> #TaggedYou"]
  DUPTABLE R26 K63 [{"TextColor3", "TextSize", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
  LOADK R27 K64 ["$TextPrimary"]
  SETTABLEKS R27 R26 K54 ["TextColor3"]
  LOADK R27 K65 ["$FontSizeS"]
  SETTABLEKS R27 R26 K55 ["TextSize"]
  LOADN R27 0
  SETTABLEKS R27 R26 K13 ["BackgroundTransparency"]
  LOADK R27 K66 ["$ResolveIconBase"]
  SETTABLEKS R27 R26 K61 ["BackgroundColor3"]
  LOADN R27 0
  SETTABLEKS R27 R26 K62 ["BorderSizePixel"]
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K22 ["::UIPadding"]
  DUPTABLE R30 K70 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R31 K27 [UDim.new]
  LOADN R32 0
  LOADN R33 2
  CALL R31 2 1
  SETTABLEKS R31 R30 K67 ["PaddingTop"]
  GETIMPORT R31 K27 [UDim.new]
  LOADN R32 0
  LOADN R33 4
  CALL R31 2 1
  SETTABLEKS R31 R30 K68 ["PaddingLeft"]
  GETIMPORT R31 K27 [UDim.new]
  LOADN R32 0
  LOADN R33 4
  CALL R31 2 1
  SETTABLEKS R31 R30 K69 ["PaddingBottom"]
  GETIMPORT R31 K27 [UDim.new]
  LOADN R32 0
  LOADN R33 4
  CALL R31 2 1
  SETTABLEKS R31 R30 K23 ["PaddingRight"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K71 ["::UICorner"]
  DUPTABLE R31 K73 [{"CornerRadius"}]
  GETIMPORT R32 K27 [UDim.new]
  LOADN R33 0
  LOADN R34 2
  CALL R32 2 1
  SETTABLEKS R32 R31 K72 ["CornerRadius"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K74 ["> #MoreIcon"]
  DUPTABLE R22 K76 [{"Size", "Position"}]
  GETIMPORT R23 K78 [UDim2.fromOffset]
  LOADN R24 16
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K11 ["Size"]
  GETIMPORT R23 K79 [UDim2.new]
  LOADN R24 1
  LOADN R25 240
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K75 ["Position"]
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K80 [":hover"]
  DUPTABLE R26 K81 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R27 K82 ["$Shift200Transparency"]
  SETTABLEKS R27 R26 K13 ["BackgroundTransparency"]
  LOADK R27 K83 ["$Shift200Color"]
  SETTABLEKS R27 R26 K61 ["BackgroundColor3"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K84 [":press"]
  DUPTABLE R27 K81 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R28 K85 ["$Shift100Transparency"]
  SETTABLEKS R28 R27 K13 ["BackgroundTransparency"]
  LOADK R28 K83 ["$Shift200Color"]
  SETTABLEKS R28 R27 K61 ["BackgroundColor3"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K86 [">> TextLabel #Contents"]
  DUPTABLE R18 K91 [{"Size", "AutomaticSize", "TextWrapped", "TextColor3", "TextSize", "BackgroundTransparency", "LineHeight", "TextXAlignment", "RichText"}]
  GETIMPORT R19 K18 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K11 ["Size"]
  GETIMPORT R19 K51 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K12 ["AutomaticSize"]
  LOADB R19 1
  SETTABLEKS R19 R18 K87 ["TextWrapped"]
  LOADK R19 K64 ["$TextPrimary"]
  SETTABLEKS R19 R18 K54 ["TextColor3"]
  LOADK R19 K92 ["$FontSizeM"]
  SETTABLEKS R19 R18 K55 ["TextSize"]
  LOADN R19 1
  SETTABLEKS R19 R18 K13 ["BackgroundTransparency"]
  LOADK R19 K93 [1.2]
  SETTABLEKS R19 R18 K88 ["LineHeight"]
  GETIMPORT R19 K95 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K89 ["TextXAlignment"]
  LOADB R19 1
  SETTABLEKS R19 R18 K90 ["RichText"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K96 [">> TextBox"]
  DUPTABLE R19 K97 [{"TextSize"}]
  LOADN R20 16
  SETTABLEKS R20 R19 K55 ["TextSize"]
  CALL R17 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
