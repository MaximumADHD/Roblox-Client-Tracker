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
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K9 [".Component-AnnotationPopover"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K10 ["> #Header"]
  DUPTABLE R9 K14 [{"BackgroundTransparency", "Size", "AutomaticSize"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K11 ["BackgroundTransparency"]
  GETIMPORT R10 K17 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Size"]
  GETIMPORT R10 K20 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K13 ["AutomaticSize"]
  NEWTABLE R10 0 4
  MOVE R11 R2
  LOADK R12 K21 ["::UIPadding"]
  DUPTABLE R13 K24 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K27 [UDim.new]
  LOADN R15 0
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["PaddingTop"]
  GETIMPORT R14 K27 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K23 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K28 ["::UIListLayout"]
  DUPTABLE R14 K33 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R15 K35 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K29 ["FillDirection"]
  GETIMPORT R15 K37 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R15 R14 K30 ["HorizontalAlignment"]
  GETIMPORT R15 K39 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K31 ["SortOrder"]
  GETIMPORT R15 K27 [UDim.new]
  LOADN R16 0
  LOADN R17 20
  CALL R15 2 1
  SETTABLEKS R15 R14 K32 ["Padding"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K40 ["> #Navigation"]
  DUPTABLE R15 K41 [{"BackgroundTransparency", "Size"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K11 ["BackgroundTransparency"]
  GETIMPORT R16 K42 [UDim2.new]
  LOADN R17 1
  LOADN R18 246
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K12 ["Size"]
  NEWTABLE R16 0 5
  MOVE R17 R2
  LOADK R18 K43 [">> ImageButton"]
  DUPTABLE R19 K46 [{"Size", "AnchorPoint", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R20 K48 [UDim2.fromOffset]
  LOADN R21 10
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K12 ["Size"]
  GETIMPORT R20 K50 [Vector2.new]
  LOADN R21 0
  LOADK R22 K51 [0.5]
  CALL R20 2 1
  SETTABLEKS R20 R19 K44 ["AnchorPoint"]
  LOADN R20 1
  SETTABLEKS R20 R19 K11 ["BackgroundTransparency"]
  LOADN R20 0
  SETTABLEKS R20 R19 K45 ["BorderSizePixel"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K52 ["> #BackIcon"]
  DUPTABLE R20 K55 [{"Image", "Position"}]
  LOADK R21 K56 ["$BackArrow"]
  SETTABLEKS R21 R20 K53 ["Image"]
  GETIMPORT R21 K42 [UDim2.new]
  LOADN R22 0
  LOADN R23 0
  LOADK R24 K51 [0.5]
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K54 ["Position"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K57 ["> #NextIcon"]
  DUPTABLE R21 K55 [{"Image", "Position"}]
  LOADK R22 K58 ["$NextArrow"]
  SETTABLEKS R22 R21 K53 ["Image"]
  GETIMPORT R22 K42 [UDim2.new]
  LOADN R23 0
  LOADN R24 24
  LOADK R25 K51 [0.5]
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K54 ["Position"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K59 ["> #MoreIcon"]
  DUPTABLE R22 K60 [{"Image", "Size", "Position"}]
  LOADK R23 K61 ["$MoreIcon"]
  SETTABLEKS R23 R22 K53 ["Image"]
  GETIMPORT R23 K48 [UDim2.fromOffset]
  LOADN R24 16
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K12 ["Size"]
  GETIMPORT R23 K42 [UDim2.new]
  LOADN R24 1
  LOADN R25 204
  LOADK R26 K51 [0.5]
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K54 ["Position"]
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K62 [":hover"]
  DUPTABLE R26 K64 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R27 0
  SETTABLEKS R27 R26 K11 ["BackgroundTransparency"]
  LOADK R27 K65 ["$ResolveIconBase"]
  SETTABLEKS R27 R26 K63 ["BackgroundColor3"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K66 [":pressed"]
  DUPTABLE R27 K64 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R28 0
  SETTABLEKS R28 R27 K11 ["BackgroundTransparency"]
  LOADK R28 K67 ["$ResolveIconSelected"]
  SETTABLEKS R28 R27 K63 ["BackgroundColor3"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K68 ["> #ResolveWrapper"]
  DUPTABLE R23 K70 [{"Text", "Size", "Position", "AnchorPoint", "BackgroundColor3", "BackgroundTransparency"}]
  LOADK R24 K71 [""]
  SETTABLEKS R24 R23 K69 ["Text"]
  GETIMPORT R24 K48 [UDim2.fromOffset]
  LOADN R25 24
  LOADN R26 24
  CALL R24 2 1
  SETTABLEKS R24 R23 K12 ["Size"]
  GETIMPORT R24 K17 [UDim2.fromScale]
  LOADN R25 1
  LOADK R26 K51 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K54 ["Position"]
  GETIMPORT R24 K50 [Vector2.new]
  LOADN R25 1
  LOADK R26 K51 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K44 ["AnchorPoint"]
  LOADK R24 K65 ["$ResolveIconBase"]
  SETTABLEKS R24 R23 K63 ["BackgroundColor3"]
  LOADK R24 K72 [0.3]
  SETTABLEKS R24 R23 K11 ["BackgroundTransparency"]
  NEWTABLE R24 0 4
  MOVE R25 R2
  LOADK R26 K62 [":hover"]
  DUPTABLE R27 K73 [{"BackgroundColor3"}]
  LOADK R28 K74 ["$ResolveIconHovered"]
  SETTABLEKS R28 R27 K63 ["BackgroundColor3"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K66 [":pressed"]
  DUPTABLE R28 K73 [{"BackgroundColor3"}]
  LOADK R29 K67 ["$ResolveIconSelected"]
  SETTABLEKS R29 R28 K63 ["BackgroundColor3"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K75 ["::UICorner"]
  DUPTABLE R29 K77 [{"CornerRadius"}]
  GETIMPORT R30 K27 [UDim.new]
  LOADN R31 1
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K76 ["CornerRadius"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K78 ["> #ResolveIcon"]
  DUPTABLE R30 K79 [{"Image", "Size", "BackgroundTransparency"}]
  LOADK R31 K80 ["$ResolveIcon"]
  SETTABLEKS R31 R30 K53 ["Image"]
  GETIMPORT R31 K48 [UDim2.fromOffset]
  LOADN R32 14
  LOADN R33 14
  CALL R31 2 1
  SETTABLEKS R31 R30 K12 ["Size"]
  LOADN R31 1
  SETTABLEKS R31 R30 K11 ["BackgroundTransparency"]
  CALL R28 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K81 ["> #Divider"]
  DUPTABLE R16 K73 [{"BackgroundColor3"}]
  LOADK R17 K82 ["$TextDisabled"]
  SETTABLEKS R17 R16 K63 ["BackgroundColor3"]
  CALL R14 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K83 ["> #ContentWrapper"]
  DUPTABLE R10 K84 [{"BackgroundTransparency"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K11 ["BackgroundTransparency"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K21 ["::UIPadding"]
  DUPTABLE R14 K86 [{"PaddingRight"}]
  GETIMPORT R15 K27 [UDim.new]
  LOADN R16 0
  LOADN R17 12
  CALL R15 2 1
  SETTABLEKS R15 R14 K85 ["PaddingRight"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
