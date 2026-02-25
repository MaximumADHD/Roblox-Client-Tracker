PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnAbsoluteSizeChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setToolIndex"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R4 K2 [Vector2.new]
        2 GETUPVAL                         R8 0
        3 GETTABLEKS                       R7 R8 K3 ["CellSize"]
        5 GETTABLEKS                       R6 R7 K4 ["X"]
        7 GETTABLEKS                       R5 R6 K5 ["Offset"]
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R8 R9 K3 ["CellSize"]
       12 GETTABLEKS                       R7 R8 K6 ["Y"]
       14 GETTABLEKS                       R6 R7 K5 ["Offset"]
       16 CALL                             R4 2 1
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R7 R0 K7 ["name"]
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K8 ["TextSize"]
       23 GETIMPORT                        R9 K12 [Enum.Font.SourceSans]
       25 MOVE                             R10 R4
       26 NAMECALL                         R5 R5 K13 ["GetTextSize"]
       28 CALL                             R5 5 1
       29 GETTABLEKS                       R7 R5 K4 ["X"]
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R8 R9 K14 ["OverflowThreshold"]
       34 JUMPIFNOTLT                      R8 R7 ; [+5]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R6 R7 K15 ["OverflowTextSize"]
       39 JUMP                             ; [+3]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R6 R7 K8 ["TextSize"]
       43 DUPTABLE                         R7 K23 [{"Icon", "Key", "Name", "OnClick", "Position", "Selected", "Size", "TextSize"}]
       44 GETTABLEKS                       R8 R0 K24 ["icon"]
       46 SETTABLEKS                       R8 R7 K16 ["Icon"]
       48 SETTABLEKS                       R1 R7 K17 ["Key"]
       50 GETTABLEKS                       R8 R0 K7 ["name"]
       52 SETTABLEKS                       R8 R7 K18 ["Name"]
       54 NEWCLOSURE                       R8 P0
       55 CAPTURE                          UPVAL U2
       56 SETTABLEKS                       R8 R7 K19 ["OnClick"]
       58 SETTABLEKS                       R2 R7 K20 ["Position"]
       60 GETUPVAL                         R9 3
       61 GETTABLEKS                       R8 R9 K25 ["ToolIndex"]
       63 SETTABLEKS                       R8 R7 K21 ["Selected"]
       65 SETTABLEKS                       R3 R7 K22 ["Size"]
       67 SETTABLEKS                       R6 R7 K8 ["TextSize"]
       69 RETURN                           R7 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["Key"]
        3 NAMECALL                         R1 R1 K1 ["setTabIndex"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Toolbar"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["new"]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K1 ["use"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 3
       14 MOVE                             R5 R3
       15 CALL                             R4 1 1
       16 NEWTABLE                         R5 0 0
       18 GETTABLEKS                       R6 R4 K3 ["Tools"]
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 FORGPREP                         R6
       23 DUPTABLE                         R11 K6 [{"icon", "name"}]
       24 DUPTABLE                         R12 K9 [{"Image", "Size"}]
       25 GETIMPORT                        R13 K12 [string.format]
       27 GETTABLEKS                       R15 R10 K4 ["icon"]
       29 GETTABLEKS                       R14 R15 K7 ["Image"]
       31 GETTABLEKS                       R15 R1 K13 ["StudioTheme"]
       33 CALL                             R13 2 1
       34 SETTABLEKS                       R13 R12 K7 ["Image"]
       36 GETTABLEKS                       R13 R1 K14 ["IconSize"]
       38 SETTABLEKS                       R13 R12 K8 ["Size"]
       40 SETTABLEKS                       R12 R11 K4 ["icon"]
       42 GETTABLEKS                       R12 R10 K5 ["name"]
       44 SETTABLEKS                       R12 R11 K5 ["name"]
       46 SETTABLE                         R11 R5 R9
       47 FORGLOOP                         R6 2 ; [-25]
       49 NEWCLOSURE                       R6 P0
       50 CAPTURE                          VAL R0
       51 NEWCLOSURE                       R7 P1
       52 CAPTURE                          VAL R1
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 NEWCLOSURE                       R8 P2
       57 CAPTURE                          VAL R3
       58 GETUPVAL                         R10 5
       59 GETTABLEKS                       R9 R10 K15 ["createElement"]
       61 GETUPVAL                         R10 6
       62 NEWTABLE                         R11 8 0
       64 GETIMPORT                        R12 K19 [Enum.AutomaticSize.Y]
       66 SETTABLEKS                       R12 R11 K17 ["AutomaticSize"]
       68 GETIMPORT                        R12 K22 [Enum.HorizontalAlignment.Left]
       70 SETTABLEKS                       R12 R11 K20 ["HorizontalAlignment"]
       72 GETIMPORT                        R12 K25 [Enum.FillDirection.Vertical]
       74 SETTABLEKS                       R12 R11 K26 ["Layout"]
       76 GETTABLEKS                       R12 R0 K27 ["LayoutOrder"]
       78 SETTABLEKS                       R12 R11 K27 ["LayoutOrder"]
       80 GETIMPORT                        R12 K30 [Enum.VerticalAlignment.Top]
       82 SETTABLEKS                       R12 R11 K28 ["VerticalAlignment"]
       84 GETUPVAL                         R14 5
       85 GETTABLEKS                       R13 R14 K31 ["Change"]
       87 GETTABLEKS                       R12 R13 K32 ["AbsoluteSize"]
       89 SETTABLE                         R6 R11 R12
       90 DUPTABLE                         R12 K34 [{"Category", "Tools"}]
       91 GETUPVAL                         R14 5
       92 GETTABLEKS                       R13 R14 K15 ["createElement"]
       94 GETUPVAL                         R14 6
       95 DUPTABLE                         R15 K36 [{"AutomaticSize", "BackgroundColor", "LayoutOrder", "Size"}]
       96 GETIMPORT                        R16 K19 [Enum.AutomaticSize.Y]
       98 SETTABLEKS                       R16 R15 K17 ["AutomaticSize"]
      100 GETTABLEKS                       R16 R1 K37 ["TabBackgroundColor"]
      102 SETTABLEKS                       R16 R15 K35 ["BackgroundColor"]
      104 NAMECALL                         R16 R2 K38 ["getNextOrder"]
      106 CALL                             R16 1 1
      107 SETTABLEKS                       R16 R15 K27 ["LayoutOrder"]
      109 GETIMPORT                        R16 K41 [UDim2.fromScale]
      111 LOADN                            R17 1
      112 LOADN                            R18 0
      113 CALL                             R16 2 1
      114 SETTABLEKS                       R16 R15 K8 ["Size"]
      116 DUPTABLE                         R16 K43 [{"Tabs"}]
      117 GETUPVAL                         R18 5
      118 GETTABLEKS                       R17 R18 K15 ["createElement"]
      120 GETUPVAL                         R18 7
      121 DUPTABLE                         R19 K46 [{"LayoutOrder", "OnTabSelected", "SelectedTab", "Tabs"}]
      122 NAMECALL                         R20 R2 K38 ["getNextOrder"]
      124 CALL                             R20 1 1
      125 SETTABLEKS                       R20 R19 K27 ["LayoutOrder"]
      127 SETTABLEKS                       R8 R19 K44 ["OnTabSelected"]
      129 GETTABLEKS                       R20 R4 K47 ["TabIndex"]
      131 SETTABLEKS                       R20 R19 K45 ["SelectedTab"]
      133 GETTABLEKS                       R20 R4 K42 ["Tabs"]
      135 SETTABLEKS                       R20 R19 K42 ["Tabs"]
      137 CALL                             R17 2 1
      138 SETTABLEKS                       R17 R16 K42 ["Tabs"]
      140 CALL                             R13 3 1
      141 SETTABLEKS                       R13 R12 K33 ["Category"]
      143 GETUPVAL                         R14 5
      144 GETTABLEKS                       R13 R14 K15 ["createElement"]
      146 GETUPVAL                         R14 6
      147 DUPTABLE                         R15 K48 [{"AutomaticSize", "LayoutOrder", "Size"}]
      148 GETIMPORT                        R16 K19 [Enum.AutomaticSize.Y]
      150 SETTABLEKS                       R16 R15 K17 ["AutomaticSize"]
      152 NAMECALL                         R16 R2 K38 ["getNextOrder"]
      154 CALL                             R16 1 1
      155 SETTABLEKS                       R16 R15 K27 ["LayoutOrder"]
      157 GETIMPORT                        R16 K41 [UDim2.fromScale]
      159 LOADN                            R17 1
      160 LOADN                            R18 0
      161 CALL                             R16 2 1
      162 SETTABLEKS                       R16 R15 K8 ["Size"]
      164 DUPTABLE                         R16 K50 [{"Grid"}]
      165 GETUPVAL                         R18 5
      166 GETTABLEKS                       R17 R18 K15 ["createElement"]
      168 GETUPVAL                         R18 8
      169 DUPTABLE                         R19 K57 [{"AutomaticSize", "Cells", "CellComponent", "CellPadding", "CellSize", "GetCellProps", "ScrollingDirection", "Size"}]
      170 GETIMPORT                        R20 K19 [Enum.AutomaticSize.Y]
      172 SETTABLEKS                       R20 R19 K17 ["AutomaticSize"]
      174 SETTABLEKS                       R5 R19 K51 ["Cells"]
      176 GETUPVAL                         R20 9
      177 SETTABLEKS                       R20 R19 K52 ["CellComponent"]
      179 GETTABLEKS                       R20 R1 K53 ["CellPadding"]
      181 SETTABLEKS                       R20 R19 K53 ["CellPadding"]
      183 GETTABLEKS                       R20 R1 K54 ["CellSize"]
      185 SETTABLEKS                       R20 R19 K54 ["CellSize"]
      187 SETTABLEKS                       R7 R19 K55 ["GetCellProps"]
      189 GETIMPORT                        R20 K58 [Enum.ScrollingDirection.Y]
      191 SETTABLEKS                       R20 R19 K56 ["ScrollingDirection"]
      193 GETIMPORT                        R20 K41 [UDim2.fromScale]
      195 LOADN                            R21 1
      196 LOADN                            R22 0
      197 CALL                             R20 2 1
      198 SETTABLEKS                       R20 R19 K8 ["Size"]
      200 CALL                             R17 2 1
      201 SETTABLEKS                       R17 R16 K49 ["Grid"]
      203 CALL                             R13 3 1
      204 SETTABLEKS                       R13 R12 K3 ["Tools"]
      206 CALL                             R9 3 -1
      207 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R4 K10 ["Stylizer"]
       25 GETTABLEKS                       R5 R1 K11 ["Util"]
       27 GETTABLEKS                       R4 R5 K12 ["LayoutOrderIterator"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETIMPORT                        R7 K1 [script]
       33 GETTABLEKS                       R6 R7 K13 ["Tile"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R1 K14 ["UI"]
       38 GETTABLEKS                       R7 R6 K15 ["Grid"]
       40 GETTABLEKS                       R8 R6 K16 ["Pane"]
       42 GETTABLEKS                       R9 R6 K17 ["Tabs"]
       44 GETIMPORT                        R10 K5 [require]
       46 GETTABLEKS                       R13 R0 K18 ["Src"]
       48 GETTABLEKS                       R12 R13 K19 ["Controllers"]
       50 GETTABLEKS                       R11 R12 K20 ["ToolController"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R14 R0 K18 ["Src"]
       57 GETTABLEKS                       R13 R14 K21 ["Hooks"]
       59 GETTABLEKS                       R12 R13 K22 ["useToolbar"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R15 R0 K18 ["Src"]
       66 GETTABLEKS                       R14 R15 K23 ["Resources"]
       68 GETTABLEKS                       R13 R14 K24 ["Theme"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K26 [game]
       73 LOADK                            R15 K27 ["TextService"]
       74 NAMECALL                         R13 R13 K28 ["GetService"]
       76 CALL                             R13 2 1
       77 DUPCLOSURE                       R14 K29 [PROTO_4]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R5
       88 RETURN                           R14 1
