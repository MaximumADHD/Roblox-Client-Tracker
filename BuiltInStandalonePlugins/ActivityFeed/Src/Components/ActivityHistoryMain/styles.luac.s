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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["StyleTips"]
  CALL R3 1 1
  GETIMPORT R4 K13 [game]
  LOADK R6 K14 ["ActivityHistoryCompactUI"]
  NAMECALL R4 R4 K15 ["GetFastFlag"]
  CALL R4 2 1
  GETTABLEKS R5 R3 K16 ["defaultPadding"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R6 R3 K17 ["filterHeaderHeight"]
  JUMPIF R6 [+4]
  GETTABLEKS R7 R3 K18 ["normalFontSize"]
  MULK R8 R5 K19 [2]
  ADD R6 R7 R8
  GETTABLEKS R7 R3 K20 ["smallPadding"]
  GETTABLEKS R8 R3 K21 ["defaultIconSize"]
  MOVE R9 R2
  LOADK R10 K22 [".Component-ActivityHistoryMain"]
  DUPTABLE R11 K25 [{"Size", "BackgroundColor3"}]
  GETIMPORT R12 K28 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K23 ["Size"]
  JUMPIFNOT R4 [+2]
  LOADK R12 K29 ["$FoundationColorsBackgroundPaper"]
  JUMP [+1]
  LOADK R12 K30 ["$BackgroundPaper"]
  SETTABLEKS R12 R11 K24 ["BackgroundColor3"]
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K31 ["> #EventList"]
  DUPTABLE R15 K32 [{"Size"}]
  GETIMPORT R16 K28 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  LOADK R20 K33 [0]
  CALL R16 4 1
  SETTABLEKS R16 R15 K23 ["Size"]
  NEWTABLE R16 0 5
  MOVE R17 R2
  LOADK R18 K34 ["::UIPadding"]
  DUPTABLE R19 K39 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R20 K41 [UDim.new]
  LOADN R21 0
  JUMPIFNOT R4 [+2]
  LOADN R22 1
  JUMP [+1]
  MOVE R22 R7
  CALL R20 2 1
  SETTABLEKS R20 R19 K35 ["PaddingTop"]
  GETIMPORT R20 K41 [UDim.new]
  LOADN R21 0
  JUMPIFNOT R4 [+2]
  LOADN R22 1
  JUMP [+1]
  MOVE R22 R7
  CALL R20 2 1
  SETTABLEKS R20 R19 K36 ["PaddingBottom"]
  GETIMPORT R20 K41 [UDim.new]
  LOADN R21 0
  JUMPIFNOT R4 [+2]
  LOADN R22 1
  JUMP [+1]
  MOVE R22 R7
  CALL R20 2 1
  SETTABLEKS R20 R19 K37 ["PaddingLeft"]
  GETIMPORT R20 K41 [UDim.new]
  LOADN R21 0
  JUMPIFNOT R4 [+2]
  LOADN R22 1
  JUMP [+1]
  MOVE R22 R7
  CALL R20 2 1
  SETTABLEKS R20 R19 K38 ["PaddingRight"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K42 ["> #Header"]
  DUPTABLE R20 K25 [{"Size", "BackgroundColor3"}]
  GETIMPORT R21 K28 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  MOVE R25 R6
  CALL R21 4 1
  SETTABLEKS R21 R20 K23 ["Size"]
  JUMPIFNOT R4 [+2]
  LOADK R21 K43 ["$FoundationColorsShift100"]
  JUMP [+1]
  LOADK R21 K30 ["$BackgroundPaper"]
  SETTABLEKS R21 R20 K24 ["BackgroundColor3"]
  NEWTABLE R21 0 3
  MOVE R22 R2
  LOADK R23 K44 ["::UICorner"]
  DUPTABLE R24 K46 [{"CornerRadius"}]
  GETIMPORT R25 K41 [UDim.new]
  LOADN R26 0
  GETTABLEKS R27 R3 K47 ["bubbleCornerRadius"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K45 ["CornerRadius"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K48 ["::UIStroke"]
  DUPTABLE R25 K51 [{"Color", "Thickness"}]
  JUMPIFNOT R4 [+2]
  LOADK R26 K52 ["$FoundationColorsShift300"]
  JUMP [+1]
  LOADK R26 K53 ["$Divider"]
  SETTABLEKS R26 R25 K49 ["Color"]
  LOADN R26 1
  SETTABLEKS R26 R25 K50 ["Thickness"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K54 ["> #FilterHeader"]
  DUPTABLE R26 K32 [{"Size"}]
  GETIMPORT R27 K28 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 1
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K23 ["Size"]
  NEWTABLE R27 0 3
  MOVE R28 R2
  LOADK R29 K55 ["::UIListLayout"]
  DUPTABLE R30 K57 [{"HorizontalFlex"}]
  GETIMPORT R31 K61 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R31 R30 K56 ["HorizontalFlex"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K62 ["> #FilterHeaderText"]
  DUPTABLE R31 K68 [{"TextColor3", "TextSize", "TextXAlignment", "RichText", "TextTruncate"}]
  JUMPIFNOT R4 [+2]
  LOADK R32 K69 ["$FoundationColorsContentEmphasis"]
  JUMP [+1]
  LOADK R32 K70 ["$TextPrimary"]
  SETTABLEKS R32 R31 K63 ["TextColor3"]
  GETTABLEKS R32 R3 K18 ["normalFontSize"]
  SETTABLEKS R32 R31 K64 ["TextSize"]
  GETIMPORT R32 K72 [Enum.TextXAlignment.Left]
  SETTABLEKS R32 R31 K65 ["TextXAlignment"]
  LOADB R32 1
  SETTABLEKS R32 R31 K66 ["RichText"]
  GETIMPORT R32 K74 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R32 R31 K67 ["TextTruncate"]
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K34 ["::UIPadding"]
  DUPTABLE R35 K75 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R36 K41 [UDim.new]
  LOADN R37 0
  MOVE R38 R5
  CALL R36 2 1
  SETTABLEKS R36 R35 K37 ["PaddingLeft"]
  GETIMPORT R36 K41 [UDim.new]
  LOADN R37 0
  JUMPIFNOT R4 [+2]
  LOADN R38 1
  JUMP [+1]
  MOVE R38 R5
  CALL R36 2 1
  SETTABLEKS R36 R35 K35 ["PaddingTop"]
  GETIMPORT R36 K41 [UDim.new]
  LOADN R37 0
  JUMPIFNOT R4 [+2]
  LOADN R38 2
  JUMP [+1]
  MOVE R38 R5
  CALL R36 2 1
  SETTABLEKS R36 R35 K36 ["PaddingBottom"]
  GETIMPORT R36 K41 [UDim.new]
  LOADN R37 0
  LOADN R38 0
  CALL R36 2 1
  SETTABLEKS R36 R35 K38 ["PaddingRight"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K76 ["::UIFlexItem"]
  DUPTABLE R36 K78 [{"FlexMode"}]
  GETIMPORT R37 K81 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R37 R36 K77 ["FlexMode"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K82 ["> #HeaderIcons"]
  DUPTABLE R32 K84 [{"AutomaticSize"}]
  GETIMPORT R33 K86 [Enum.AutomaticSize.XY]
  SETTABLEKS R33 R32 K83 ["AutomaticSize"]
  NEWTABLE R33 0 4
  MOVE R34 R2
  LOADK R35 K55 ["::UIListLayout"]
  DUPTABLE R36 K57 [{"HorizontalFlex"}]
  GETIMPORT R37 K88 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R37 R36 K56 ["HorizontalFlex"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K89 ["> .HeaderIcon"]
  DUPTABLE R37 K90 [{"Size", "AutomaticSize"}]
  GETIMPORT R38 K28 [UDim2.new]
  LOADN R39 0
  LOADN R40 0
  LOADN R41 1
  LOADN R42 0
  CALL R38 4 1
  SETTABLEKS R38 R37 K23 ["Size"]
  GETIMPORT R38 K92 [Enum.AutomaticSize.X]
  SETTABLEKS R38 R37 K83 ["AutomaticSize"]
  NEWTABLE R38 0 3
  MOVE R39 R2
  LOADK R40 K55 ["::UIListLayout"]
  DUPTABLE R41 K94 [{"VerticalAlignment"}]
  GETIMPORT R42 K96 [Enum.VerticalAlignment.Center]
  SETTABLEKS R42 R41 K93 ["VerticalAlignment"]
  CALL R39 2 1
  MOVE R40 R2
  LOADK R41 K34 ["::UIPadding"]
  DUPTABLE R42 K97 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R43 K41 [UDim.new]
  LOADN R44 0
  JUMPIFNOT R4 [+2]
  LOADN R45 2
  JUMP [+1]
  MOVE R45 R7
  CALL R43 2 1
  SETTABLEKS R43 R42 K37 ["PaddingLeft"]
  GETIMPORT R43 K41 [UDim.new]
  LOADN R44 0
  JUMPIFNOT R4 [+2]
  LOADN R45 2
  JUMP [+1]
  MOVE R45 R7
  CALL R43 2 1
  SETTABLEKS R43 R42 K38 ["PaddingRight"]
  CALL R40 2 1
  MOVE R41 R2
  LOADK R42 K98 ["> ImageLabel, > ImageButton"]
  DUPTABLE R43 K101 [{"Size", "BorderSizePixel", "BackgroundTransparency"}]
  GETIMPORT R44 K28 [UDim2.new]
  LOADN R45 0
  JUMPIFNOT R4 [+2]
  LOADN R46 14
  JUMP [+1]
  MOVE R46 R8
  LOADN R47 0
  JUMPIFNOT R4 [+2]
  LOADN R48 14
  JUMP [+1]
  MOVE R48 R8
  CALL R44 4 1
  SETTABLEKS R44 R43 K23 ["Size"]
  LOADN R44 0
  SETTABLEKS R44 R43 K99 ["BorderSizePixel"]
  LOADN R44 1
  SETTABLEKS R44 R43 K100 ["BackgroundTransparency"]
  CALL R41 2 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 1
  MOVE R36 R2
  LOADK R37 K102 [">> #ClearFiltersIcon"]
  DUPTABLE R38 K104 [{"Image"}]
  LOADK R39 K105 ["$close"]
  SETTABLEKS R39 R38 K103 ["Image"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K106 [">> #FilterHeaderIcon"]
  DUPTABLE R39 K104 [{"Image"}]
  LOADK R40 K107 ["$filter"]
  SETTABLEKS R40 R39 K103 ["Image"]
  CALL R37 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K108 ["> .HeaderHovered #Header"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K48 ["::UIStroke"]
  DUPTABLE R25 K109 [{"Color"}]
  JUMPIFNOT R4 [+2]
  LOADK R26 K110 ["$FoundationColorsShift200"]
  JUMP [+1]
  LOADK R26 K111 ["$ActionHover"]
  SETTABLEKS R26 R25 K49 ["Color"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K112 [">> #FilterHeaderIconContainer"]
  DUPTABLE R26 K113 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R27 0
  SETTABLEKS R27 R26 K100 ["BackgroundTransparency"]
  JUMPIFNOT R4 [+2]
  LOADK R27 K110 ["$FoundationColorsShift200"]
  JUMP [+1]
  LOADK R27 K111 ["$ActionHover"]
  SETTABLEKS R27 R26 K24 ["BackgroundColor3"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K114 ["> .HeaderDisabled #Header"]
  DUPTABLE R22 K116 [{"Interactable"}]
  LOADB R23 0
  SETTABLEKS R23 R22 K115 ["Interactable"]
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K117 [">> #FilterHeaderText"]
  DUPTABLE R26 K118 [{"TextColor3"}]
  JUMPIFNOT R4 [+2]
  LOADK R27 K119 ["$FoundationColorsContentMuted"]
  JUMP [+1]
  LOADK R27 K120 ["$TextSecondary"]
  SETTABLEKS R27 R26 K63 ["TextColor3"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K112 [">> #FilterHeaderIconContainer"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K121 ["> #FilterHeaderIcon"]
  DUPTABLE R31 K104 [{"Image"}]
  LOADK R32 K122 ["$filterdisabled"]
  SETTABLEKS R32 R31 K103 ["Image"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K123 ["> #ActivityHistoryBubbleListContainer"]
  DUPTABLE R23 K125 [{"Size", "ZIndex"}]
  GETIMPORT R24 K28 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 1
  MINUS R28 R6
  CALL R24 4 1
  SETTABLEKS R24 R23 K23 ["Size"]
  LOADN R24 0
  SETTABLEKS R24 R23 K124 ["ZIndex"]
  CALL R21 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K126 ["> #FilterMenu"]
  DUPTABLE R16 K32 [{"Size"}]
  GETIMPORT R17 K28 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K23 ["Size"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  RETURN R9 -1
