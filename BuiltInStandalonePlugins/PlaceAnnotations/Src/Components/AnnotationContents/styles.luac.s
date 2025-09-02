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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Bin"]
  GETTABLEKS R5 R6 K11 ["Common"]
  GETTABLEKS R4 R5 K12 ["defineLuaFlags"]
  CALL R3 1 1
  MOVE R4 R2
  LOADK R5 K13 [".Component-AnnotationContents"]
  DUPTABLE R6 K18 [{"Size", "AutomaticSize", "BackgroundTransparency", "ClipsDescendants"}]
  GETIMPORT R7 K21 [UDim2.fromScale]
  LOADN R8 1
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Size"]
  GETIMPORT R7 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K15 ["AutomaticSize"]
  LOADN R7 1
  SETTABLEKS R7 R6 K16 ["BackgroundTransparency"]
  LOADB R7 1
  SETTABLEKS R7 R6 K17 ["ClipsDescendants"]
  NEWTABLE R7 0 3
  MOVE R8 R2
  LOADK R9 K25 ["::UIPadding"]
  DUPTABLE R10 K27 [{"PaddingRight"}]
  GETIMPORT R11 K30 [UDim.new]
  LOADN R12 0
  LOADN R13 4
  CALL R11 2 1
  SETTABLEKS R11 R10 K26 ["PaddingRight"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K31 [">> Frame"]
  DUPTABLE R11 K32 [{"BackgroundTransparency"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K16 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K33 ["> #TextColumn"]
  DUPTABLE R12 K34 [{"AutomaticSize"}]
  GETIMPORT R13 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K15 ["AutomaticSize"]
  NEWTABLE R13 0 5
  MOVE R14 R2
  LOADK R15 K35 ["::UIListLayout"]
  DUPTABLE R16 K39 [{"SortOrder", "FillDirection", "Padding"}]
  GETIMPORT R17 K41 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K36 ["SortOrder"]
  GETIMPORT R17 K43 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K37 ["FillDirection"]
  GETIMPORT R17 K30 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K38 ["Padding"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K44 ["::UIFlexItem"]
  DUPTABLE R17 K46 [{"FlexMode"}]
  GETIMPORT R18 K49 [Enum.UIFlexMode.Grow]
  SETTABLEKS R18 R17 K45 ["FlexMode"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K50 [">> #UsernameRow"]
  DUPTABLE R18 K51 [{"Size", "AutomaticSize"}]
  GETIMPORT R19 K21 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K14 ["Size"]
  GETIMPORT R19 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K15 ["AutomaticSize"]
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K52 ["> Frame"]
  DUPTABLE R22 K34 [{"AutomaticSize"}]
  GETIMPORT R23 K54 [Enum.AutomaticSize.XY]
  SETTABLEKS R23 R22 K15 ["AutomaticSize"]
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K55 ["> TextLabel"]
  DUPTABLE R26 K60 [{"AutomaticSize", "BackgroundTransparency", "TextScaled", "TextColor3", "TextSize", "Font"}]
  GETIMPORT R27 K54 [Enum.AutomaticSize.XY]
  SETTABLEKS R27 R26 K15 ["AutomaticSize"]
  LOADN R27 1
  SETTABLEKS R27 R26 K16 ["BackgroundTransparency"]
  LOADB R27 0
  SETTABLEKS R27 R26 K56 ["TextScaled"]
  LOADK R27 K61 ["$SecondaryContrast"]
  SETTABLEKS R27 R26 K57 ["TextColor3"]
  LOADN R27 16
  SETTABLEKS R27 R26 K58 ["TextSize"]
  LOADK R27 K62 ["$Font"]
  SETTABLEKS R27 R26 K59 ["Font"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K63 ["> #TaggedYou"]
  DUPTABLE R27 K66 [{"TextColor3", "TextSize", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
  LOADK R28 K67 ["$TextPrimary"]
  SETTABLEKS R28 R27 K57 ["TextColor3"]
  LOADK R28 K68 ["$FontSizeS"]
  SETTABLEKS R28 R27 K58 ["TextSize"]
  LOADN R28 0
  SETTABLEKS R28 R27 K16 ["BackgroundTransparency"]
  LOADK R28 K69 ["$ResolveIconBase"]
  SETTABLEKS R28 R27 K64 ["BackgroundColor3"]
  LOADN R28 0
  SETTABLEKS R28 R27 K65 ["BorderSizePixel"]
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K25 ["::UIPadding"]
  DUPTABLE R31 K73 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R32 K30 [UDim.new]
  LOADN R33 0
  LOADN R34 2
  CALL R32 2 1
  SETTABLEKS R32 R31 K70 ["PaddingTop"]
  GETIMPORT R32 K30 [UDim.new]
  LOADN R33 0
  LOADN R34 4
  CALL R32 2 1
  SETTABLEKS R32 R31 K71 ["PaddingLeft"]
  GETIMPORT R32 K30 [UDim.new]
  LOADN R33 0
  LOADN R34 4
  CALL R32 2 1
  SETTABLEKS R32 R31 K72 ["PaddingBottom"]
  GETIMPORT R32 K30 [UDim.new]
  LOADN R33 0
  LOADN R34 4
  CALL R32 2 1
  SETTABLEKS R32 R31 K26 ["PaddingRight"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K74 ["::UICorner"]
  DUPTABLE R32 K76 [{"CornerRadius"}]
  GETIMPORT R33 K30 [UDim.new]
  LOADN R34 0
  LOADN R35 2
  CALL R33 2 1
  SETTABLEKS R33 R32 K75 ["CornerRadius"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K77 ["> #MoreIcon"]
  DUPTABLE R23 K79 [{"Size", "Position"}]
  GETIMPORT R24 K81 [UDim2.fromOffset]
  LOADN R25 16
  LOADN R26 16
  CALL R24 2 1
  SETTABLEKS R24 R23 K14 ["Size"]
  GETIMPORT R24 K82 [UDim2.new]
  LOADN R25 1
  LOADN R26 240
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K78 ["Position"]
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K83 [":hover"]
  DUPTABLE R27 K84 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R28 K85 ["$Shift200Transparency"]
  SETTABLEKS R28 R27 K16 ["BackgroundTransparency"]
  LOADK R28 K86 ["$Shift200Color"]
  SETTABLEKS R28 R27 K64 ["BackgroundColor3"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K87 [":press"]
  DUPTABLE R28 K84 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R29 K88 ["$Shift100Transparency"]
  SETTABLEKS R29 R28 K16 ["BackgroundTransparency"]
  LOADK R29 K86 ["$Shift200Color"]
  SETTABLEKS R29 R28 K64 ["BackgroundColor3"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K89 [">> TextLabel #Contents"]
  DUPTABLE R19 K94 [{"Size", "AutomaticSize", "TextWrapped", "TextColor3", "TextSize", "BackgroundTransparency", "LineHeight", "TextXAlignment", "RichText"}]
  GETIMPORT R20 K21 [UDim2.fromScale]
  LOADN R21 1
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K14 ["Size"]
  GETIMPORT R20 K54 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K15 ["AutomaticSize"]
  LOADB R20 1
  SETTABLEKS R20 R19 K90 ["TextWrapped"]
  LOADK R20 K67 ["$TextPrimary"]
  SETTABLEKS R20 R19 K57 ["TextColor3"]
  LOADK R20 K95 ["$FontSizeM"]
  SETTABLEKS R20 R19 K58 ["TextSize"]
  LOADN R20 1
  SETTABLEKS R20 R19 K16 ["BackgroundTransparency"]
  GETTABLEKS R21 R3 K96 ["fflagCOLLAB9036DecreaseLineHeight"]
  JUMPIFNOT R21 [+2]
  LOADK R20 K97 [1.2]
  JUMP [+1]
  LOADK R20 K98 [1.5]
  SETTABLEKS R20 R19 K91 ["LineHeight"]
  GETIMPORT R20 K100 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K92 ["TextXAlignment"]
  LOADB R20 1
  SETTABLEKS R20 R19 K93 ["RichText"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K101 [">> TextBox"]
  DUPTABLE R20 K102 [{"TextSize"}]
  LOADN R21 16
  SETTABLEKS R21 R20 K58 ["TextSize"]
  CALL R18 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
