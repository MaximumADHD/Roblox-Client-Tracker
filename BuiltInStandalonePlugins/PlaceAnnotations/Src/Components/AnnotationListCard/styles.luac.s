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
  GETTABLEKS R5 R0 K7 ["Bin"]
  GETTABLEKS R4 R5 K8 ["Common"]
  GETTABLEKS R3 R4 K9 ["defineLuaFlags"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  MOVE R4 R3
  LOADK R5 K12 [".Component-AnnotationListCard"]
  DUPTABLE R6 K16 [{"Size", "AutomaticSize", "BackgroundColor3"}]
  GETIMPORT R7 K19 [UDim2.fromScale]
  LOADN R8 1
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K13 ["Size"]
  GETIMPORT R7 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K14 ["AutomaticSize"]
  GETTABLEKS R8 R2 K23 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K24 ["$SemanticColorSurface200"]
  JUMP [+1]
  LOADK R7 K25 ["$ForegroundContrast"]
  SETTABLEKS R7 R6 K15 ["BackgroundColor3"]
  NEWTABLE R7 0 4
  MOVE R8 R3
  LOADK R9 K26 [".Selected"]
  DUPTABLE R10 K27 [{"BackgroundColor3"}]
  GETTABLEKS R12 R2 K23 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R12 [+2]
  LOADK R11 K28 ["$SemanticColorActionPrimaryFill"]
  JUMP [+1]
  LOADK R11 K29 ["$TextPrimary"]
  SETTABLEKS R11 R10 K15 ["BackgroundColor3"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K30 ["::UIPadding"]
  DUPTABLE R11 K35 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R12 K38 [UDim.new]
  LOADN R13 0
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K31 ["PaddingTop"]
  GETIMPORT R12 K38 [UDim.new]
  LOADN R13 0
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K32 ["PaddingLeft"]
  GETIMPORT R12 K38 [UDim.new]
  LOADN R13 0
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K33 ["PaddingBottom"]
  GETIMPORT R12 K38 [UDim.new]
  LOADN R13 0
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K34 ["PaddingRight"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K39 ["::UICorner"]
  DUPTABLE R12 K41 [{"CornerRadius"}]
  LOADN R13 18
  SETTABLEKS R13 R12 K40 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K42 ["> Frame"]
  DUPTABLE R13 K44 [{"BackgroundColor3", "ZIndex", "Size", "AutomaticSize"}]
  GETTABLEKS R15 R2 K23 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R15 [+2]
  LOADK R14 K24 ["$SemanticColorSurface200"]
  JUMP [+1]
  LOADK R14 K25 ["$ForegroundContrast"]
  SETTABLEKS R14 R13 K15 ["BackgroundColor3"]
  LOADN R14 255
  SETTABLEKS R14 R13 K43 ["ZIndex"]
  GETIMPORT R14 K19 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K13 ["Size"]
  GETIMPORT R14 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K14 ["AutomaticSize"]
  NEWTABLE R14 0 2
  MOVE R15 R3
  LOADK R16 K39 ["::UICorner"]
  DUPTABLE R17 K41 [{"CornerRadius"}]
  LOADN R18 18
  SETTABLEKS R18 R17 K40 ["CornerRadius"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K45 ["> TextButton"]
  DUPTABLE R18 K47 [{"BackgroundColor3", "BackgroundTransparency", "Size", "AutomaticSize"}]
  GETTABLEKS R20 R2 K23 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R20 [+2]
  LOADK R19 K24 ["$SemanticColorSurface200"]
  JUMP [+1]
  LOADK R19 K25 ["$ForegroundContrast"]
  SETTABLEKS R19 R18 K15 ["BackgroundColor3"]
  LOADN R19 0
  SETTABLEKS R19 R18 K46 ["BackgroundTransparency"]
  GETIMPORT R19 K19 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K13 ["Size"]
  GETIMPORT R19 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K14 ["AutomaticSize"]
  NEWTABLE R19 0 7
  MOVE R20 R3
  LOADK R21 K39 ["::UICorner"]
  DUPTABLE R22 K41 [{"CornerRadius"}]
  LOADN R23 18
  SETTABLEKS R23 R22 K40 ["CornerRadius"]
  CALL R20 2 1
  MOVE R21 R3
  LOADK R22 K30 ["::UIPadding"]
  DUPTABLE R23 K35 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R24 K38 [UDim.new]
  LOADN R25 0
  LOADN R26 11
  CALL R24 2 1
  SETTABLEKS R24 R23 K31 ["PaddingTop"]
  GETIMPORT R24 K38 [UDim.new]
  LOADN R25 0
  LOADN R26 15
  CALL R24 2 1
  SETTABLEKS R24 R23 K32 ["PaddingLeft"]
  GETIMPORT R24 K38 [UDim.new]
  LOADN R25 0
  LOADN R26 15
  CALL R24 2 1
  SETTABLEKS R24 R23 K33 ["PaddingBottom"]
  GETIMPORT R24 K38 [UDim.new]
  LOADN R25 0
  LOADN R26 15
  CALL R24 2 1
  SETTABLEKS R24 R23 K34 ["PaddingRight"]
  CALL R21 2 1
  MOVE R22 R3
  LOADK R23 K48 [":pressed"]
  DUPTABLE R24 K49 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R26 R2 K23 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R26 [+2]
  LOADK R25 K50 ["$SemanticColorStateLayerHover"]
  JUMP [+1]
  LOADK R25 K51 ["$ActionHover"]
  SETTABLEKS R25 R24 K15 ["BackgroundColor3"]
  GETTABLEKS R26 R2 K23 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R26 [+2]
  LOADK R25 K52 ["$SemanticColorStateLayerHoverTransparency"]
  JUMP [+1]
  LOADN R25 0
  SETTABLEKS R25 R24 K46 ["BackgroundTransparency"]
  CALL R22 2 1
  MOVE R23 R3
  LOADK R24 K53 [".Hovered"]
  DUPTABLE R25 K49 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R27 R2 K23 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R27 [+2]
  LOADK R26 K50 ["$SemanticColorStateLayerHover"]
  JUMP [+1]
  LOADK R26 K51 ["$ActionHover"]
  SETTABLEKS R26 R25 K15 ["BackgroundColor3"]
  GETTABLEKS R27 R2 K23 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R27 [+2]
  LOADK R26 K52 ["$SemanticColorStateLayerHoverTransparency"]
  JUMP [+1]
  LOADN R26 0
  SETTABLEKS R26 R25 K46 ["BackgroundTransparency"]
  CALL R23 2 1
  MOVE R24 R3
  LOADK R25 K26 [".Selected"]
  DUPTABLE R26 K49 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R28 R2 K23 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R28 [+2]
  LOADK R27 K54 ["$SemanticColorStatesSelected"]
  JUMP [+1]
  LOADK R27 K51 ["$ActionHover"]
  SETTABLEKS R27 R26 K15 ["BackgroundColor3"]
  GETTABLEKS R28 R2 K23 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R28 [+2]
  LOADK R27 K55 ["$SemanticColorStatesSelectedTransparency"]
  JUMP [+1]
  LOADN R27 0
  SETTABLEKS R27 R26 K46 ["BackgroundTransparency"]
  CALL R24 2 1
  MOVE R25 R3
  LOADK R26 K56 ["> #Header"]
  DUPTABLE R27 K57 [{"BackgroundTransparency", "Size", "AutomaticSize"}]
  LOADN R28 1
  SETTABLEKS R28 R27 K46 ["BackgroundTransparency"]
  GETIMPORT R28 K19 [UDim2.fromScale]
  LOADN R29 1
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K13 ["Size"]
  GETIMPORT R28 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R28 R27 K14 ["AutomaticSize"]
  NEWTABLE R28 0 3
  MOVE R29 R3
  LOADK R30 K30 ["::UIPadding"]
  DUPTABLE R31 K58 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R32 K38 [UDim.new]
  LOADN R33 0
  LOADN R34 10
  CALL R32 2 1
  SETTABLEKS R32 R31 K31 ["PaddingTop"]
  GETIMPORT R32 K38 [UDim.new]
  LOADN R33 0
  LOADN R34 8
  CALL R32 2 1
  SETTABLEKS R32 R31 K33 ["PaddingBottom"]
  CALL R29 2 1
  MOVE R30 R3
  LOADK R31 K59 ["::UIListLayout"]
  DUPTABLE R32 K64 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R33 K66 [Enum.FillDirection.Vertical]
  SETTABLEKS R33 R32 K60 ["FillDirection"]
  GETIMPORT R33 K68 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R33 R32 K61 ["HorizontalAlignment"]
  GETIMPORT R33 K70 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R33 R32 K62 ["SortOrder"]
  GETIMPORT R33 K38 [UDim.new]
  LOADN R34 0
  LOADN R35 20
  CALL R33 2 1
  SETTABLEKS R33 R32 K63 ["Padding"]
  CALL R30 2 1
  MOVE R31 R3
  LOADK R32 K71 ["> #Navigation"]
  DUPTABLE R33 K72 [{"BackgroundTransparency", "Size"}]
  LOADN R34 1
  SETTABLEKS R34 R33 K46 ["BackgroundTransparency"]
  GETIMPORT R34 K73 [UDim2.new]
  LOADN R35 1
  LOADN R36 246
  LOADN R37 0
  LOADN R38 0
  CALL R34 4 1
  SETTABLEKS R34 R33 K13 ["Size"]
  NEWTABLE R34 0 3
  MOVE R35 R3
  LOADK R36 K74 ["> TextLabel"]
  DUPTABLE R37 K83 [{"TextColor3", "AutomaticSize", "Size", "Font", "AnchorPoint", "Position", "BackgroundTransparency", "TextSize", "TextXAlignment", "TextTruncate", "TextWrapped"}]
  LOADK R38 K29 ["$TextPrimary"]
  SETTABLEKS R38 R37 K75 ["TextColor3"]
  GETIMPORT R38 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R38 R37 K14 ["AutomaticSize"]
  GETIMPORT R38 K73 [UDim2.new]
  LOADN R39 1
  LOADN R40 200
  LOADN R41 0
  LOADN R42 0
  CALL R38 4 1
  SETTABLEKS R38 R37 K13 ["Size"]
  LOADK R38 K84 ["$FontBold"]
  SETTABLEKS R38 R37 K76 ["Font"]
  GETIMPORT R38 K86 [Vector2.new]
  LOADN R39 0
  LOADK R40 K87 [0.5]
  CALL R38 2 1
  SETTABLEKS R38 R37 K77 ["AnchorPoint"]
  GETIMPORT R38 K19 [UDim2.fromScale]
  LOADN R39 0
  LOADK R40 K87 [0.5]
  CALL R38 2 1
  SETTABLEKS R38 R37 K78 ["Position"]
  LOADN R38 1
  SETTABLEKS R38 R37 K46 ["BackgroundTransparency"]
  LOADK R38 K88 ["$FontSizeM"]
  SETTABLEKS R38 R37 K79 ["TextSize"]
  GETIMPORT R38 K90 [Enum.TextXAlignment.Left]
  SETTABLEKS R38 R37 K80 ["TextXAlignment"]
  GETIMPORT R38 K92 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R38 R37 K81 ["TextTruncate"]
  LOADB R38 0
  SETTABLEKS R38 R37 K82 ["TextWrapped"]
  CALL R35 2 1
  MOVE R36 R3
  LOADK R37 K93 [">> ImageButton"]
  DUPTABLE R38 K95 [{"Size", "AnchorPoint", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R39 K97 [UDim2.fromOffset]
  LOADN R40 10
  LOADN R41 10
  CALL R39 2 1
  SETTABLEKS R39 R38 K13 ["Size"]
  GETIMPORT R39 K86 [Vector2.new]
  LOADN R40 0
  LOADK R41 K87 [0.5]
  CALL R39 2 1
  SETTABLEKS R39 R38 K77 ["AnchorPoint"]
  LOADN R39 1
  SETTABLEKS R39 R38 K46 ["BackgroundTransparency"]
  LOADN R39 0
  SETTABLEKS R39 R38 K94 ["BorderSizePixel"]
  CALL R36 2 1
  MOVE R37 R3
  LOADK R38 K98 ["> #MoreIcon"]
  DUPTABLE R39 K100 [{"Image", "Size", "Position"}]
  LOADK R40 K101 ["$MoreIcon"]
  SETTABLEKS R40 R39 K99 ["Image"]
  GETIMPORT R40 K97 [UDim2.fromOffset]
  LOADN R41 16
  LOADN R42 16
  CALL R40 2 1
  SETTABLEKS R40 R39 K13 ["Size"]
  GETIMPORT R40 K73 [UDim2.new]
  LOADN R41 1
  LOADN R42 204
  LOADK R43 K87 [0.5]
  LOADN R44 0
  CALL R40 4 1
  SETTABLEKS R40 R39 K78 ["Position"]
  NEWTABLE R40 0 2
  MOVE R41 R3
  LOADK R42 K102 [":hover"]
  DUPTABLE R43 K103 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R44 0
  SETTABLEKS R44 R43 K46 ["BackgroundTransparency"]
  LOADK R44 K104 ["$ResolveIconBase"]
  SETTABLEKS R44 R43 K15 ["BackgroundColor3"]
  CALL R41 2 1
  MOVE R42 R3
  LOADK R43 K48 [":pressed"]
  DUPTABLE R44 K103 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R45 0
  SETTABLEKS R45 R44 K46 ["BackgroundTransparency"]
  LOADK R45 K105 ["$ResolveIconSelected"]
  SETTABLEKS R45 R44 K15 ["BackgroundColor3"]
  CALL R42 2 -1
  SETLIST R40 R41 -1 [1]
  CALL R37 3 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R3
  LOADK R27 K74 ["> TextLabel"]
  DUPTABLE R28 K106 [{"TextColor3", "TextSize", "Font", "TextXAlignment", "Size", "AutomaticSize", "BackgroundTransparency"}]
  LOADK R29 K107 ["$TextSecondary"]
  SETTABLEKS R29 R28 K75 ["TextColor3"]
  LOADK R29 K108 ["$FontSizeS"]
  SETTABLEKS R29 R28 K79 ["TextSize"]
  LOADK R29 K109 ["$Font"]
  SETTABLEKS R29 R28 K76 ["Font"]
  GETIMPORT R29 K90 [Enum.TextXAlignment.Left]
  SETTABLEKS R29 R28 K80 ["TextXAlignment"]
  GETIMPORT R29 K19 [UDim2.fromScale]
  LOADN R30 1
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K13 ["Size"]
  GETIMPORT R29 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R29 R28 K14 ["AutomaticSize"]
  LOADN R29 1
  SETTABLEKS R29 R28 K46 ["BackgroundTransparency"]
  NEWTABLE R29 0 1
  MOVE R30 R3
  LOADK R31 K30 ["::UIPadding"]
  DUPTABLE R32 K110 [{"PaddingLeft"}]
  GETIMPORT R33 K38 [UDim.new]
  LOADN R34 0
  LOADN R35 42
  CALL R33 2 1
  SETTABLEKS R33 R32 K32 ["PaddingLeft"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
