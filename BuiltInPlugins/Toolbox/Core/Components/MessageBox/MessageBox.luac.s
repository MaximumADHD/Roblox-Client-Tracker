PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isDead"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["Enabled"]
  JUMPIF R1 [+12]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K3 ["onClose"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K3 ["onClose"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["isDead"]
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  JUMPIF R2 [+12]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["onClose"]
  JUMPIFNOT R3 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["onClose"]
  CALL R3 0 0
  RETURN R0 0

PROTO_2:
  LOADB R2 0
  SETTABLEKS R2 R0 K0 ["isDead"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K1 ["onEnabledChanged"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K2 ["onAncestryChanged"]
  RETURN R0 0

PROTO_3:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["isDead"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["Title"]
  ORK R3 R4 K2 [""]
  GETTABLEKS R5 R1 K4 ["Name"]
  OR R4 R5 R3
  GETTABLEKS R6 R1 K6 ["Id"]
  ORK R5 R6 K5 []
  GETTABLEKS R7 R1 K7 ["Text"]
  ORK R6 R7 K2 [""]
  GETTABLEKS R8 R1 K8 ["InformativeText"]
  ORK R7 R8 K2 [""]
  GETTABLEKS R9 R1 K9 ["Icon"]
  ORK R8 R9 K2 [""]
  LENGTH R10 R7
  JUMPIFNOTEQKN R10 K10 [0] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  JUMPIFNOTEQKS R8 K2 [""] [+2]
  LOADB R10 0 +1
  LOADB R10 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K11 ["FONT"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K12 ["FONT_SIZE_SMALL"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K11 ["FONT"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K12 ["FONT_SIZE_SMALL"]
  GETTABLEKS R15 R2 K13 ["messageBox"]
  GETTABLEKS R16 R1 K14 ["buttons"]
  JUMPIF R16 [+2]
  NEWTABLE R16 0 0
  LENGTH R17 R16
  JUMPIFNOTEQKN R17 K10 [0] [+13]
  NEWTABLE R17 0 1
  DUPTABLE R18 K16 [{"Text", "action"}]
  LOADK R19 K17 ["Ok"]
  SETTABLEKS R19 R18 K7 ["Text"]
  LOADK R19 K18 ["ok"]
  SETTABLEKS R19 R18 K15 ["action"]
  SETLIST R17 R18 1 [1]
  MOVE R16 R17
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K19 ["MESSAGE_BOX_BUTTON_WIDTH"]
  NEWTABLE R18 1 0
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K20 ["createElement"]
  LOADK R20 K21 ["UIListLayout"]
  DUPTABLE R21 K27 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Padding"}]
  GETIMPORT R22 K30 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K22 ["SortOrder"]
  GETIMPORT R22 K32 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R22 R21 K23 ["HorizontalAlignment"]
  GETIMPORT R22 K34 [Enum.VerticalAlignment.Top]
  SETTABLEKS R22 R21 K24 ["VerticalAlignment"]
  GETIMPORT R22 K36 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K25 ["FillDirection"]
  GETIMPORT R22 K39 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K26 ["Padding"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K21 ["UIListLayout"]
  GETIMPORT R19 K41 [ipairs]
  MOVE R20 R16
  CALL R19 1 3
  FORGPREP_INEXT R19
  GETTABLEKS R25 R23 K15 ["action"]
  MOVE R26 R22
  CONCAT R24 R25 R26
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K20 ["createElement"]
  GETUPVAL R26 2
  DUPTABLE R27 K44 [{"index", "Text", "action", "onButtonClicked"}]
  SETTABLEKS R22 R27 K42 ["index"]
  GETTABLEKS R28 R23 K7 ["Text"]
  SETTABLEKS R28 R27 K7 ["Text"]
  GETTABLEKS R28 R23 K15 ["action"]
  SETTABLEKS R28 R27 K15 ["action"]
  GETTABLEKS R29 R0 K0 ["props"]
  GETTABLEKS R28 R29 K43 ["onButtonClicked"]
  SETTABLEKS R28 R27 K43 ["onButtonClicked"]
  CALL R25 2 1
  SETTABLE R25 R18 R24
  FORGLOOP R19 2 [inext] [-28]
  GETUPVAL R19 3
  MOVE R20 R6
  MOVE R21 R12
  MOVE R22 R11
  GETIMPORT R23 K46 [Vector2.new]
  LOADN R24 0
  LOADN R25 0
  CALL R23 2 -1
  CALL R19 -1 1
  GETUPVAL R20 3
  MOVE R21 R7
  MOVE R22 R14
  MOVE R23 R13
  GETIMPORT R24 K46 [Vector2.new]
  LOADN R25 0
  LOADN R26 0
  CALL R24 2 -1
  CALL R20 -1 1
  GETTABLEKS R23 R19 K47 ["X"]
  FASTCALL2K MATH_MIN R23 K48 [+4]
  LOADK R24 K48 [424]
  GETIMPORT R22 K51 [math.min]
  CALL R22 2 1
  GETTABLEKS R24 R20 K47 ["X"]
  FASTCALL2K MATH_MIN R24 K52 [+4]
  LOADK R25 K52 [192]
  GETIMPORT R23 K51 [math.min]
  CALL R23 2 1
  FASTCALL2 MATH_MAX R22 R23 [+3]
  GETIMPORT R21 K54 [math.max]
  CALL R21 2 1
  JUMPIFNOT R10 [+2]
  LOADN R22 32
  JUMP [+1]
  LOADN R22 0
  ADDK R23 R22 K55 [20]
  ADD R24 R23 R21
  GETTABLEKS R26 R1 K56 ["IconColor"]
  JUMPIFNOT R26 [+3]
  GETTABLEKS R25 R1 K56 ["IconColor"]
  JUMP [+1]
  LOADNIL R25
  LENGTH R28 R16
  MUL R27 R28 R17
  LENGTH R30 R16
  SUBK R29 R30 K58 [1]
  MULK R28 R29 K57 [8]
  ADD R26 R27 R28
  FASTCALL2 MATH_MAX R26 R24 [+5]
  MOVE R29 R26
  MOVE R30 R24
  GETIMPORT R28 K54 [math.max]
  CALL R28 2 1
  FASTCALL2K MATH_MAX R28 K59 [+4]
  LOADK R29 K59 [120]
  GETIMPORT R27 K54 [math.max]
  CALL R27 2 1
  SUB R28 R27 R23
  GETUPVAL R29 3
  MOVE R30 R6
  MOVE R31 R12
  MOVE R32 R11
  GETIMPORT R33 K46 [Vector2.new]
  MOVE R34 R28
  LOADN R35 232
  CALL R33 2 -1
  CALL R29 -1 1
  GETUPVAL R30 3
  MOVE R31 R7
  MOVE R32 R14
  MOVE R33 R13
  GETIMPORT R34 K46 [Vector2.new]
  MOVE R35 R28
  LOADN R36 232
  CALL R34 2 -1
  CALL R30 -1 1
  GETTABLEKS R31 R29 K60 ["Y"]
  GETTABLEKS R32 R30 K60 ["Y"]
  JUMPIFNOT R9 [+3]
  LOADN R37 8
  ADD R36 R37 R32
  JUMPIF R36 [+1]
  LOADN R36 0
  ADD R35 R31 R36
  FASTCALL2 MATH_MAX R22 R35 [+4]
  MOVE R34 R22
  GETIMPORT R33 K54 [math.max]
  CALL R33 2 1
  LOADN R36 12
  ADD R35 R36 R27
  ADDK R34 R35 K61 [12]
  LOADN R39 8
  ADD R38 R39 R33
  ADDK R37 R38 K61 [12]
  ADDK R36 R37 K62 [23]
  ADDK R35 R36 K61 [12]
  GETUPVAL R37 1
  GETTABLEKS R36 R37 K20 ["createElement"]
  GETUPVAL R37 4
  NEWTABLE R38 16 0
  SETTABLEKS R4 R38 K4 ["Name"]
  SETTABLEKS R3 R38 K3 ["Title"]
  SETTABLEKS R5 R38 K6 ["Id"]
  GETIMPORT R39 K46 [Vector2.new]
  MOVE R40 R34
  MOVE R41 R35
  CALL R39 2 1
  SETTABLEKS R39 R38 K63 ["Size"]
  GETIMPORT R39 K66 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R39 R38 K64 ["ZIndexBehavior"]
  LOADB R39 1
  SETTABLEKS R39 R38 K67 ["Modal"]
  GETTABLEKS R40 R0 K0 ["props"]
  GETTABLEKS R39 R40 K68 ["Plugin"]
  NAMECALL R39 R39 K69 ["get"]
  CALL R39 1 1
  SETTABLEKS R39 R38 K70 ["plugin"]
  GETUPVAL R41 1
  GETTABLEKS R40 R41 K71 ["Change"]
  GETTABLEKS R39 R40 K72 ["Enabled"]
  GETTABLEKS R40 R0 K73 ["onEnabledChanged"]
  SETTABLE R40 R38 R39
  GETUPVAL R41 1
  GETTABLEKS R40 R41 K74 ["Event"]
  GETTABLEKS R39 R40 K75 ["AncestryChanged"]
  GETTABLEKS R40 R0 K76 ["onAncestryChanged"]
  SETTABLE R40 R38 R39
  DUPTABLE R39 K78 [{"Background"}]
  GETUPVAL R41 1
  GETTABLEKS R40 R41 K20 ["createElement"]
  LOADK R41 K79 ["Frame"]
  DUPTABLE R42 K83 [{"AutomaticSize", "Position", "Size", "BackgroundColor3"}]
  GETUPVAL R44 5
  CALL R44 0 1
  JUMPIFNOT R44 [+3]
  GETIMPORT R43 K84 [Enum.AutomaticSize.Y]
  JUMP [+1]
  LOADNIL R43
  SETTABLEKS R43 R42 K80 ["AutomaticSize"]
  GETIMPORT R43 K86 [UDim2.new]
  LOADN R44 0
  LOADN R45 0
  LOADN R46 0
  LOADN R47 0
  CALL R43 4 1
  SETTABLEKS R43 R42 K81 ["Position"]
  GETIMPORT R43 K86 [UDim2.new]
  LOADN R44 1
  LOADN R45 0
  LOADN R46 1
  LOADN R47 0
  CALL R43 4 1
  SETTABLEKS R43 R42 K63 ["Size"]
  GETTABLEKS R43 R15 K87 ["backgroundColor"]
  SETTABLEKS R43 R42 K82 ["BackgroundColor3"]
  DUPTABLE R43 K91 [{"UIPadding", "UIListLayout", "Information", "Buttons"}]
  GETUPVAL R45 1
  GETTABLEKS R44 R45 K20 ["createElement"]
  LOADK R45 K88 ["UIPadding"]
  DUPTABLE R46 K96 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R47 K39 [UDim.new]
  LOADN R48 0
  LOADN R49 12
  CALL R47 2 1
  SETTABLEKS R47 R46 K92 ["PaddingBottom"]
  GETIMPORT R47 K39 [UDim.new]
  LOADN R48 0
  LOADN R49 12
  CALL R47 2 1
  SETTABLEKS R47 R46 K93 ["PaddingLeft"]
  GETIMPORT R47 K39 [UDim.new]
  LOADN R48 0
  LOADN R49 12
  CALL R47 2 1
  SETTABLEKS R47 R46 K94 ["PaddingRight"]
  GETIMPORT R47 K39 [UDim.new]
  LOADN R48 0
  LOADN R49 8
  CALL R47 2 1
  SETTABLEKS R47 R46 K95 ["PaddingTop"]
  CALL R44 2 1
  SETTABLEKS R44 R43 K88 ["UIPadding"]
  GETUPVAL R45 1
  GETTABLEKS R44 R45 K20 ["createElement"]
  LOADK R45 K21 ["UIListLayout"]
  DUPTABLE R46 K97 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R47 K30 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R47 R46 K22 ["SortOrder"]
  GETIMPORT R47 K99 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R47 R46 K23 ["HorizontalAlignment"]
  GETIMPORT R47 K34 [Enum.VerticalAlignment.Top]
  SETTABLEKS R47 R46 K24 ["VerticalAlignment"]
  GETIMPORT R47 K39 [UDim.new]
  LOADN R48 0
  LOADN R49 12
  CALL R47 2 1
  SETTABLEKS R47 R46 K26 ["Padding"]
  CALL R44 2 1
  SETTABLEKS R44 R43 K21 ["UIListLayout"]
  GETUPVAL R45 1
  GETTABLEKS R44 R45 K20 ["createElement"]
  LOADK R45 K79 ["Frame"]
  DUPTABLE R46 K101 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder"}]
  GETUPVAL R48 5
  CALL R48 0 1
  JUMPIFNOT R48 [+3]
  GETIMPORT R47 K84 [Enum.AutomaticSize.Y]
  JUMP [+1]
  LOADNIL R47
  SETTABLEKS R47 R46 K80 ["AutomaticSize"]
  GETIMPORT R47 K86 [UDim2.new]
  LOADN R48 1
  LOADN R49 0
  LOADN R50 0
  MOVE R51 R33
  CALL R47 4 1
  SETTABLEKS R47 R46 K63 ["Size"]
  LOADN R47 1
  SETTABLEKS R47 R46 K100 ["BackgroundTransparency"]
  LOADN R47 1
  SETTABLEKS R47 R46 K29 ["LayoutOrder"]
  DUPTABLE R47 K103 [{"UIListLayout", "Icon", "Texts"}]
  GETUPVAL R49 1
  GETTABLEKS R48 R49 K20 ["createElement"]
  LOADK R49 K21 ["UIListLayout"]
  DUPTABLE R50 K104 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding", "FillDirection"}]
  GETIMPORT R51 K30 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R51 R50 K22 ["SortOrder"]
  GETIMPORT R51 K106 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R51 R50 K23 ["HorizontalAlignment"]
  GETIMPORT R51 K34 [Enum.VerticalAlignment.Top]
  SETTABLEKS R51 R50 K24 ["VerticalAlignment"]
  GETIMPORT R51 K39 [UDim.new]
  LOADN R52 0
  LOADN R53 20
  CALL R51 2 1
  SETTABLEKS R51 R50 K26 ["Padding"]
  GETIMPORT R51 K36 [Enum.FillDirection.Horizontal]
  SETTABLEKS R51 R50 K25 ["FillDirection"]
  CALL R48 2 1
  SETTABLEKS R48 R47 K21 ["UIListLayout"]
  GETUPVAL R49 1
  GETTABLEKS R48 R49 K20 ["createElement"]
  LOADK R49 K107 ["ImageLabel"]
  DUPTABLE R50 K110 [{"Size", "BackgroundTransparency", "LayoutOrder", "Image", "ImageColor3"}]
  GETIMPORT R51 K86 [UDim2.new]
  LOADN R52 0
  MOVE R53 R22
  LOADN R54 0
  MOVE R55 R22
  CALL R51 4 1
  SETTABLEKS R51 R50 K63 ["Size"]
  LOADN R51 1
  SETTABLEKS R51 R50 K100 ["BackgroundTransparency"]
  LOADN R51 0
  SETTABLEKS R51 R50 K29 ["LayoutOrder"]
  SETTABLEKS R8 R50 K108 ["Image"]
  SETTABLEKS R25 R50 K109 ["ImageColor3"]
  CALL R48 2 1
  SETTABLEKS R48 R47 K9 ["Icon"]
  GETUPVAL R49 1
  GETTABLEKS R48 R49 K20 ["createElement"]
  LOADK R49 K79 ["Frame"]
  DUPTABLE R50 K111 [{"AutomaticSize", "LayoutOrder", "Size", "BackgroundTransparency"}]
  GETUPVAL R52 5
  CALL R52 0 1
  JUMPIFNOT R52 [+3]
  GETIMPORT R51 K84 [Enum.AutomaticSize.Y]
  JUMP [+1]
  LOADNIL R51
  SETTABLEKS R51 R50 K80 ["AutomaticSize"]
  LOADN R51 1
  SETTABLEKS R51 R50 K29 ["LayoutOrder"]
  GETIMPORT R51 K86 [UDim2.new]
  LOADN R52 1
  MINUS R53 R23
  GETUPVAL R55 5
  CALL R55 0 1
  JUMPIFNOT R55 [+2]
  LOADN R54 0
  JUMP [+1]
  LOADN R54 1
  LOADN R55 0
  CALL R51 4 1
  SETTABLEKS R51 R50 K63 ["Size"]
  LOADN R51 1
  SETTABLEKS R51 R50 K100 ["BackgroundTransparency"]
  DUPTABLE R51 K114 [{"UIListLayout", "TextLabel", "InformativeLabel"}]
  GETUPVAL R53 1
  GETTABLEKS R52 R53 K20 ["createElement"]
  LOADK R53 K21 ["UIListLayout"]
  DUPTABLE R54 K104 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding", "FillDirection"}]
  GETIMPORT R55 K30 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R55 R54 K22 ["SortOrder"]
  GETIMPORT R55 K106 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R55 R54 K23 ["HorizontalAlignment"]
  GETIMPORT R55 K34 [Enum.VerticalAlignment.Top]
  SETTABLEKS R55 R54 K24 ["VerticalAlignment"]
  GETIMPORT R55 K39 [UDim.new]
  LOADN R56 0
  LOADN R57 8
  CALL R55 2 1
  SETTABLEKS R55 R54 K26 ["Padding"]
  GETIMPORT R55 K116 [Enum.FillDirection.Vertical]
  SETTABLEKS R55 R54 K25 ["FillDirection"]
  CALL R52 2 1
  SETTABLEKS R52 R51 K21 ["UIListLayout"]
  GETUPVAL R53 1
  GETTABLEKS R52 R53 K20 ["createElement"]
  LOADK R53 K112 ["TextLabel"]
  DUPTABLE R54 K123 [{"AutomaticSize", "LayoutOrder", "Size", "BackgroundTransparency", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
  GETUPVAL R56 5
  CALL R56 0 1
  JUMPIFNOT R56 [+3]
  GETIMPORT R55 K84 [Enum.AutomaticSize.Y]
  JUMP [+1]
  LOADNIL R55
  SETTABLEKS R55 R54 K80 ["AutomaticSize"]
  LOADN R55 0
  SETTABLEKS R55 R54 K29 ["LayoutOrder"]
  GETIMPORT R55 K86 [UDim2.new]
  LOADN R56 1
  LOADN R57 0
  LOADN R58 0
  MOVE R59 R31
  CALL R55 4 1
  SETTABLEKS R55 R54 K63 ["Size"]
  LOADN R55 1
  SETTABLEKS R55 R54 K100 ["BackgroundTransparency"]
  SETTABLEKS R6 R54 K7 ["Text"]
  SETTABLEKS R11 R54 K117 ["Font"]
  SETTABLEKS R12 R54 K118 ["TextSize"]
  GETTABLEKS R55 R15 K124 ["textColor"]
  SETTABLEKS R55 R54 K119 ["TextColor3"]
  GETIMPORT R55 K125 [Enum.TextXAlignment.Left]
  SETTABLEKS R55 R54 K120 ["TextXAlignment"]
  GETIMPORT R55 K126 [Enum.TextYAlignment.Top]
  SETTABLEKS R55 R54 K121 ["TextYAlignment"]
  LOADB R55 1
  SETTABLEKS R55 R54 K122 ["TextWrapped"]
  CALL R52 2 1
  SETTABLEKS R52 R51 K112 ["TextLabel"]
  MOVE R52 R9
  JUMPIFNOT R52 [+51]
  GETUPVAL R53 1
  GETTABLEKS R52 R53 K20 ["createElement"]
  LOADK R53 K112 ["TextLabel"]
  DUPTABLE R54 K123 [{"AutomaticSize", "LayoutOrder", "Size", "BackgroundTransparency", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
  GETUPVAL R56 5
  CALL R56 0 1
  JUMPIFNOT R56 [+3]
  GETIMPORT R55 K84 [Enum.AutomaticSize.Y]
  JUMP [+1]
  LOADNIL R55
  SETTABLEKS R55 R54 K80 ["AutomaticSize"]
  LOADN R55 1
  SETTABLEKS R55 R54 K29 ["LayoutOrder"]
  GETIMPORT R55 K86 [UDim2.new]
  LOADN R56 1
  LOADN R57 0
  LOADN R58 0
  MOVE R59 R32
  CALL R55 4 1
  SETTABLEKS R55 R54 K63 ["Size"]
  LOADN R55 1
  SETTABLEKS R55 R54 K100 ["BackgroundTransparency"]
  SETTABLEKS R7 R54 K7 ["Text"]
  SETTABLEKS R13 R54 K117 ["Font"]
  SETTABLEKS R14 R54 K118 ["TextSize"]
  GETTABLEKS R55 R15 K127 ["informativeTextColor"]
  SETTABLEKS R55 R54 K119 ["TextColor3"]
  GETIMPORT R55 K125 [Enum.TextXAlignment.Left]
  SETTABLEKS R55 R54 K120 ["TextXAlignment"]
  GETIMPORT R55 K126 [Enum.TextYAlignment.Top]
  SETTABLEKS R55 R54 K121 ["TextYAlignment"]
  LOADB R55 1
  SETTABLEKS R55 R54 K122 ["TextWrapped"]
  CALL R52 2 1
  SETTABLEKS R52 R51 K113 ["InformativeLabel"]
  CALL R48 3 1
  SETTABLEKS R48 R47 K102 ["Texts"]
  CALL R44 3 1
  SETTABLEKS R44 R43 K89 ["Information"]
  GETUPVAL R45 1
  GETTABLEKS R44 R45 K20 ["createElement"]
  LOADK R45 K79 ["Frame"]
  DUPTABLE R46 K128 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R47 K86 [UDim2.new]
  LOADN R48 1
  LOADN R49 0
  LOADN R50 0
  LOADN R51 23
  CALL R47 4 1
  SETTABLEKS R47 R46 K63 ["Size"]
  LOADN R47 1
  SETTABLEKS R47 R46 K100 ["BackgroundTransparency"]
  LOADN R47 2
  SETTABLEKS R47 R46 K29 ["LayoutOrder"]
  MOVE R47 R18
  CALL R44 3 1
  SETTABLEKS R44 R43 K90 ["Buttons"]
  CALL R40 3 1
  SETTABLEKS R40 R39 K77 ["Background"]
  CALL R36 3 -1
  RETURN R36 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Core"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K10 ["Constants"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETTABLEKS R8 R3 K9 ["Util"]
  GETTABLEKS R7 R8 K13 ["GetTextSize"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K8 ["Core"]
  GETTABLEKS R11 R12 K14 ["Components"]
  GETTABLEKS R10 R11 K15 ["PluginWidget"]
  GETTABLEKS R9 R10 K16 ["Dialog"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K8 ["Core"]
  GETTABLEKS R12 R13 K14 ["Components"]
  GETTABLEKS R11 R12 K17 ["MessageBox"]
  GETTABLEKS R10 R11 K18 ["MessageBoxButton"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K8 ["Core"]
  GETTABLEKS R13 R14 K9 ["Util"]
  GETTABLEKS R12 R13 K19 ["SharedFlags"]
  GETTABLEKS R11 R12 K20 ["getFFlagToolboxFixMessageBoxSize"]
  CALL R10 1 1
  GETTABLEKS R11 R2 K21 ["PureComponent"]
  LOADK R13 K17 ["MessageBox"]
  NAMECALL R11 R11 K22 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K23 [PROTO_2]
  SETTABLEKS R12 R11 K24 ["init"]
  DUPCLOSURE R12 K25 [PROTO_3]
  SETTABLEKS R12 R11 K26 ["willUnmount"]
  DUPCLOSURE R12 K27 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K28 ["render"]
  MOVE R12 R6
  DUPTABLE R13 K31 [{"Plugin", "Stylizer"}]
  GETTABLEKS R14 R5 K29 ["Plugin"]
  SETTABLEKS R14 R13 K29 ["Plugin"]
  GETTABLEKS R14 R5 K30 ["Stylizer"]
  SETTABLEKS R14 R13 K30 ["Stylizer"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1
