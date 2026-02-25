PROTO_0:
        0 DUPTABLE                         R1 K2 [{"text", "icon"}]
        1 LOADK                            R2 K3 ["Cell %d"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R2 R2 K4 ["format"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["text"]
        8 DUPTABLE                         R2 K7 [{"Image", "Size"}]
        9 LOADK                            R3 K8 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
       10 SETTABLEKS                       R3 R2 K5 ["Image"]
       12 GETIMPORT                        R3 K11 [UDim2.new]
       14 LOADN                            R4 0
       15 LOADN                            R5 16
       16 LOADN                            R6 0
       17 LOADN                            R7 16
       18 CALL                             R3 4 1
       19 SETTABLEKS                       R3 R2 K6 ["Size"]
       21 SETTABLEKS                       R2 R1 K1 ["icon"]
       23 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LOADN                            R2 16
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 GETUPVAL                         R7 0
        7 MOVE                             R8 R4
        8 CALL                             R7 1 1
        9 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       11 MOVE                             R6 R1
       12 GETIMPORT                        R5 K2 [table.insert]
       14 CALL                             R5 2 0
       15 FORNLOOP                         R2
       16 DUPTABLE                         R2 K4 [{"cells"}]
       17 SETTABLEKS                       R1 R2 K3 ["cells"]
       19 SETTABLEKS                       R2 R0 K5 ["state"]
       21 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{"Style", "Size"}]
        7 LOADK                            R5 K5 ["BorderBox"]
        8 SETTABLEKS                       R5 R4 K2 ["Style"]
       10 GETIMPORT                        R5 K8 [UDim2.new]
       12 LOADN                            R6 1
       13 LOADN                            R7 0
       14 LOADN                            R8 0
       15 LOADN                            R9 144
       16 CALL                             R5 4 1
       17 SETTABLEKS                       R5 R4 K3 ["Size"]
       19 DUPTABLE                         R5 K10 [{"Grid"}]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K1 ["createElement"]
       23 GETUPVAL                         R7 2
       24 DUPTABLE                         R8 K13 [{"Cells", "CellPadding"}]
       25 GETTABLEKS                       R9 R1 K14 ["cells"]
       27 SETTABLEKS                       R9 R8 K11 ["Cells"]
       29 GETIMPORT                        R9 K16 [UDim2.fromOffset]
       31 LOADN                            R10 10
       32 LOADN                            R11 10
       33 CALL                             R9 2 1
       34 SETTABLEKS                       R9 R8 K12 ["CellPadding"]
       36 CALL                             R6 2 1
       37 SETTABLEKS                       R6 R5 K9 ["Grid"]
       39 CALL                             R2 3 -1
       40 RETURN                           R2 -1

PROTO_3:
        0 LOADN                            R1 16
        1 SETTABLEKS                       R1 R0 K0 ["maxCellCount"]
        3 LOADN                            R1 144
        4 SETTABLEKS                       R1 R0 K1 ["width"]
        6 NEWTABLE                         R1 0 0
        8 LOADN                            R4 1
        9 LOADN                            R2 50
       10 LOADN                            R3 1
       11 FORNPREP                         R2
       12 GETUPVAL                         R7 0
       13 MOVE                             R8 R4
       14 CALL                             R7 1 1
       15 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       17 MOVE                             R6 R1
       18 GETIMPORT                        R5 K4 [table.insert]
       20 CALL                             R5 2 0
       21 FORNLOOP                         R2
       22 DUPTABLE                         R2 K7 [{"cells", "loading"}]
       23 SETTABLEKS                       R1 R2 K5 ["cells"]
       25 LOADB                            R3 0
       26 SETTABLEKS                       R3 R2 K6 ["loading"]
       28 SETTABLEKS                       R2 R0 K8 ["state"]
       30 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"cells", "loading"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["cells"]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K1 ["loading"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["state"]
        3 GETTABLEKS                       R3 R4 K1 ["cells"]
        5 LENGTH                           R2 R3
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["maxCellCount"]
        9 JUMPIFNOTLE                      R3 R2 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["state"]
       15 GETTABLEKS                       R2 R3 K3 ["loading"]
       17 JUMPIFNOT                        R2 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 0
       20 DUPTABLE                         R4 K4 [{"loading"}]
       21 LOADB                            R5 1
       22 SETTABLEKS                       R5 R4 K3 ["loading"]
       24 NAMECALL                         R2 R2 K5 ["setState"]
       26 CALL                             R2 2 0
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K6 ["copy"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K0 ["state"]
       33 GETTABLEKS                       R3 R4 K1 ["cells"]
       35 CALL                             R2 1 1
       36 MOVE                             R5 R0
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R8 R9 K2 ["maxCellCount"]
       40 FASTCALL2                        MATH_MIN R1 R8 ; [+4]
       42 MOVE                             R7 R1
       43 GETIMPORT                        R6 K9 [math.min]
       45 CALL                             R6 2 1
       46 MOVE                             R3 R6
       47 LOADN                            R4 1
       48 FORNPREP                         R3
       49 GETTABLE                         R6 R2 R5
       50 JUMPIF                           R6 ; [+4]
       51 GETUPVAL                         R6 2
       52 MOVE                             R7 R5
       53 CALL                             R6 1 1
       54 SETTABLE                         R6 R2 R5
       55 FORNLOOP                         R3
       56 GETIMPORT                        R3 K12 [task.delay]
       58 LOADN                            R4 1
       59 NEWCLOSURE                       R5 P0
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          VAL R2
       62 CALL                             R3 2 0
       63 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"Style", "AutomaticSize", "Size"}]
        5 LOADK                            R4 K5 ["None"]
        6 SETTABLEKS                       R4 R3 K1 ["Style"]
        8 GETIMPORT                        R4 K8 [Enum.AutomaticSize.Y]
       10 SETTABLEKS                       R4 R3 K2 ["AutomaticSize"]
       12 GETIMPORT                        R4 K11 [UDim2.new]
       14 LOADN                            R5 1
       15 LOADN                            R6 0
       16 LOADN                            R7 0
       17 GETTABLEKS                       R8 R0 K12 ["width"]
       19 CALL                             R4 4 1
       20 SETTABLEKS                       R4 R3 K3 ["Size"]
       22 DUPTABLE                         R4 K17 [{"Layout", "GridPane", "Info", "LoadingIndicator"}]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K0 ["createElement"]
       26 LOADK                            R6 K18 ["UIListLayout"]
       27 DUPTABLE                         R7 K24 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
       28 GETIMPORT                        R8 K26 [Enum.FillDirection.Vertical]
       30 SETTABLEKS                       R8 R7 K19 ["FillDirection"]
       32 GETIMPORT                        R8 K28 [Enum.SortOrder.LayoutOrder]
       34 SETTABLEKS                       R8 R7 K20 ["SortOrder"]
       36 GETIMPORT                        R8 K30 [Enum.HorizontalAlignment.Center]
       38 SETTABLEKS                       R8 R7 K21 ["HorizontalAlignment"]
       40 GETIMPORT                        R8 K32 [Enum.VerticalAlignment.Top]
       42 SETTABLEKS                       R8 R7 K22 ["VerticalAlignment"]
       44 GETIMPORT                        R8 K34 [UDim.new]
       46 LOADN                            R9 0
       47 LOADN                            R10 10
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K23 ["Padding"]
       51 CALL                             R5 2 1
       52 SETTABLEKS                       R5 R4 K13 ["Layout"]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R5 R6 K0 ["createElement"]
       57 GETUPVAL                         R6 1
       58 DUPTABLE                         R7 K35 [{"Style", "Size", "LayoutOrder"}]
       59 LOADK                            R8 K36 ["BorderBox"]
       60 SETTABLEKS                       R8 R7 K1 ["Style"]
       62 GETIMPORT                        R8 K11 [UDim2.new]
       64 LOADN                            R9 1
       65 LOADN                            R10 0
       66 LOADN                            R11 0
       67 GETTABLEKS                       R12 R0 K12 ["width"]
       69 CALL                             R8 4 1
       70 SETTABLEKS                       R8 R7 K3 ["Size"]
       72 LOADN                            R8 1
       73 SETTABLEKS                       R8 R7 K27 ["LayoutOrder"]
       75 DUPTABLE                         R8 K38 [{"Grid"}]
       76 GETUPVAL                         R10 0
       77 GETTABLEKS                       R9 R10 K0 ["createElement"]
       79 GETUPVAL                         R10 2
       80 DUPTABLE                         R11 K42 [{"Cells", "CellPadding", "OnLoadRange", "LayoutOrder"}]
       81 GETTABLEKS                       R13 R0 K43 ["state"]
       83 GETTABLEKS                       R12 R13 K44 ["cells"]
       85 SETTABLEKS                       R12 R11 K39 ["Cells"]
       87 GETIMPORT                        R12 K46 [UDim2.fromOffset]
       89 LOADN                            R13 10
       90 LOADN                            R14 10
       91 CALL                             R12 2 1
       92 SETTABLEKS                       R12 R11 K40 ["CellPadding"]
       94 NEWCLOSURE                       R12 P0
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U3
       97 CAPTURE                          UPVAL U4
       98 SETTABLEKS                       R12 R11 K41 ["OnLoadRange"]
      100 LOADN                            R12 2
      101 SETTABLEKS                       R12 R11 K27 ["LayoutOrder"]
      103 CALL                             R9 2 1
      104 SETTABLEKS                       R9 R8 K37 ["Grid"]
      106 CALL                             R5 3 1
      107 SETTABLEKS                       R5 R4 K14 ["GridPane"]
      109 GETUPVAL                         R6 0
      110 GETTABLEKS                       R5 R6 K0 ["createElement"]
      112 GETUPVAL                         R6 5
      113 DUPTABLE                         R7 K48 [{"AutomaticSize", "Text", "LayoutOrder"}]
      114 GETIMPORT                        R8 K50 [Enum.AutomaticSize.XY]
      116 SETTABLEKS                       R8 R7 K2 ["AutomaticSize"]
      118 LOADK                            R9 K51 ["Cells loaded: %*/%*"]
      119 GETTABLEKS                       R13 R0 K43 ["state"]
      121 GETTABLEKS                       R12 R13 K44 ["cells"]
      123 LENGTH                           R11 R12
      124 GETTABLEKS                       R12 R0 K52 ["maxCellCount"]
      126 NAMECALL                         R9 R9 K53 ["format"]
      128 CALL                             R9 3 1
      129 MOVE                             R8 R9
      130 SETTABLEKS                       R8 R7 K47 ["Text"]
      132 LOADN                            R8 2
      133 SETTABLEKS                       R8 R7 K27 ["LayoutOrder"]
      135 CALL                             R5 2 1
      136 SETTABLEKS                       R5 R4 K15 ["Info"]
      138 GETTABLEKS                       R7 R0 K43 ["state"]
      140 GETTABLEKS                       R6 R7 K54 ["loading"]
      142 JUMPIFNOT                        R6 ; [+10]
      143 GETUPVAL                         R6 0
      144 GETTABLEKS                       R5 R6 K0 ["createElement"]
      146 GETUPVAL                         R6 6
      147 DUPTABLE                         R7 K55 [{"LayoutOrder"}]
      148 LOADN                            R8 3
      149 SETTABLEKS                       R8 R7 K27 ["LayoutOrder"]
      151 CALL                             R5 2 1
      152 JUMP                             ; [+1]
      153 LOADNIL                          R5
      154 SETTABLEKS                       R5 R4 K16 ["LoadingIndicator"]
      156 CALL                             R1 3 -1
      157 RETURN                           R1 -1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 MOVE                             R2 R0
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 DUPTABLE                         R7 K1 [{"text"}]
        7 LOADK                            R9 K2 ["Cell %*"]
        8 MOVE                             R11 R4
        9 NAMECALL                         R9 R9 K3 ["format"]
       11 CALL                             R9 2 1
       12 MOVE                             R8 R9
       13 SETTABLEKS                       R8 R7 K0 ["text"]
       15 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       17 MOVE                             R6 R1
       18 GETIMPORT                        R5 K6 [table.insert]
       20 CALL                             R5 2 0
       21 FORNLOOP                         R2
       22 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 ADD                              R2 R3 R0
        2 SUBK                             R1 R2 K0 [1]
        3 LOADK                            R3 K1 ["Cells %* - %*"]
        4 GETUPVAL                         R5 0
        5 MOVE                             R6 R1
        6 NAMECALL                         R3 R3 K2 ["format"]
        8 CALL                             R3 3 1
        9 MOVE                             R2 R3
       10 GETUPVAL                         R3 0
       11 ADD                              R3 R3 R0
       12 SETUPVAL                         R3 0
       13 DUPTABLE                         R3 K6 [{"CellCount", "IsCollapsed", "Text"}]
       14 SETTABLEKS                       R0 R3 K3 ["CellCount"]
       16 LOADB                            R4 0
       17 SETTABLEKS                       R4 R3 K4 ["IsCollapsed"]
       19 SETTABLEKS                       R2 R3 K5 ["Text"]
       21 RETURN                           R3 1

PROTO_9:
        0 LOADN                            R1 1
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          REF R1
        5 CALL                             R2 2 -1
        6 CLOSEUPVALS                      R1
        7 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"Favorites", "Text"}]
        3 GETUPVAL                         R6 1
        4 GETTABLE                         R5 R6 R1
        5 SETTABLEKS                       R5 R4 K0 ["Favorites"]
        7 LOADK                            R6 K3 ["Group %*"]
        8 MOVE                             R8 R1
        9 NAMECALL                         R6 R6 K4 ["format"]
       11 CALL                             R6 2 1
       12 MOVE                             R5 R6
       13 SETTABLEKS                       R5 R4 K1 ["Text"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_11:
        0 NEWTABLE                         R1 0 3
        2 LOADN                            R2 128
        3 LOADN                            R3 137
        4 LOADN                            R4 42
        5 SETLIST                          R1 R2 3 [1]
        7 GETUPVAL                         R2 0
        8 LOADN                            R4 1
        9 GETUPVAL                         R5 0
       10 MOVE                             R6 R0
       11 NEWCLOSURE                       R7 P0
       12 CAPTURE                          REF R4
       13 CALL                             R5 2 1
       14 MOVE                             R3 R5
       15 CLOSEUPVALS                      R4
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R1
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"OnClick", "Position", "Size", "Style", "Text"}]
        5 DUPCLOSURE                       R4 K7 [PROTO_12]
        6 SETTABLEKS                       R4 R3 K1 ["OnClick"]
        8 GETTABLEKS                       R4 R0 K2 ["Position"]
       10 SETTABLEKS                       R4 R3 K2 ["Position"]
       12 GETTABLEKS                       R4 R0 K3 ["Size"]
       14 SETTABLEKS                       R4 R3 K3 ["Size"]
       16 LOADK                            R4 K8 ["Round"]
       17 SETTABLEKS                       R4 R3 K4 ["Style"]
       19 GETTABLEKS                       R5 R0 K9 ["Cell"]
       21 GETTABLEKS                       R4 R5 K10 ["text"]
       23 SETTABLEKS                       R4 R3 K5 ["Text"]
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1

PROTO_14:
        0 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["Style"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K7 [{"BackgroundColor", "BorderColor", "Position", "Size", "Spacing", "Style"}]
        7 GETTABLEKS                       R5 R1 K2 ["BackgroundColor"]
        9 SETTABLEKS                       R5 R4 K2 ["BackgroundColor"]
       11 GETTABLEKS                       R5 R1 K3 ["BorderColor"]
       13 SETTABLEKS                       R5 R4 K3 ["BorderColor"]
       15 GETTABLEKS                       R5 R0 K4 ["Position"]
       17 SETTABLEKS                       R5 R4 K4 ["Position"]
       19 GETTABLEKS                       R5 R0 K5 ["Size"]
       21 SETTABLEKS                       R5 R4 K5 ["Size"]
       23 GETTABLEKS                       R5 R1 K6 ["Spacing"]
       25 SETTABLEKS                       R5 R4 K6 ["Spacing"]
       27 GETTABLEKS                       R5 R1 K0 ["Style"]
       29 SETTABLEKS                       R5 R4 K0 ["Style"]
       31 DUPTABLE                         R5 K10 [{"Text", "Favorites"}]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K1 ["createElement"]
       35 GETUPVAL                         R7 2
       36 DUPTABLE                         R8 K15 [{"AutomaticSize", "Position", "Size", "Text", "TextColor", "TextSize", "TextYAlignment"}]
       37 GETIMPORT                        R9 K18 [Enum.AutomaticSize.X]
       39 SETTABLEKS                       R9 R8 K11 ["AutomaticSize"]
       41 GETIMPORT                        R9 K21 [UDim2.fromOffset]
       43 LOADN                            R10 8
       44 LOADN                            R11 0
       45 CALL                             R9 2 1
       46 SETTABLEKS                       R9 R8 K4 ["Position"]
       48 GETIMPORT                        R9 K23 [UDim2.fromScale]
       50 LOADN                            R10 0
       51 LOADN                            R11 1
       52 CALL                             R9 2 1
       53 SETTABLEKS                       R9 R8 K5 ["Size"]
       55 GETTABLEKS                       R9 R0 K8 ["Text"]
       57 SETTABLEKS                       R9 R8 K8 ["Text"]
       59 GETTABLEKS                       R9 R1 K12 ["TextColor"]
       61 SETTABLEKS                       R9 R8 K12 ["TextColor"]
       63 GETTABLEKS                       R9 R1 K13 ["TextSize"]
       65 SETTABLEKS                       R9 R8 K13 ["TextSize"]
       67 GETIMPORT                        R9 K25 [Enum.TextYAlignment.Center]
       69 SETTABLEKS                       R9 R8 K14 ["TextYAlignment"]
       71 CALL                             R6 2 1
       72 SETTABLEKS                       R6 R5 K8 ["Text"]
       74 GETUPVAL                         R7 0
       75 GETTABLEKS                       R6 R7 K1 ["createElement"]
       77 GETUPVAL                         R7 3
       78 DUPTABLE                         R8 K30 [{"AnchorPoint", "Count", "IsFavorited", "OnClick", "Position", "Size"}]
       79 GETIMPORT                        R9 K33 [Vector2.new]
       81 LOADN                            R10 1
       82 LOADK                            R11 K34 [0.5]
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K26 ["AnchorPoint"]
       86 GETTABLEKS                       R9 R0 K9 ["Favorites"]
       88 SETTABLEKS                       R9 R8 K27 ["Count"]
       90 LOADB                            R9 0
       91 SETTABLEKS                       R9 R8 K28 ["IsFavorited"]
       93 DUPCLOSURE                       R9 K35 [PROTO_14]
       94 SETTABLEKS                       R9 R8 K29 ["OnClick"]
       96 GETIMPORT                        R9 K36 [UDim2.new]
       98 LOADN                            R10 1
       99 LOADN                            R11 248
      100 LOADK                            R12 K34 [0.5]
      101 LOADN                            R13 0
      102 CALL                             R9 4 1
      103 SETTABLEKS                       R9 R8 K4 ["Position"]
      105 GETIMPORT                        R9 K21 [UDim2.fromOffset]
      107 LOADN                            R10 50
      108 LOADN                            R11 20
      109 CALL                             R9 2 1
      110 SETTABLEKS                       R9 R8 K5 ["Size"]
      112 CALL                             R6 2 1
      113 SETTABLEKS                       R6 R5 K9 ["Favorites"]
      115 CALL                             R2 3 -1
      116 RETURN                           R2 -1

PROTO_16:
        0 DUPTABLE                         R4 K2 [{"cells", "groups"}]
        1 GETTABLEKS                       R5 R1 K3 ["Cells"]
        3 SETTABLEKS                       R5 R4 K0 ["cells"]
        5 GETTABLEKS                       R5 R1 K4 ["CellGroups"]
        7 SETTABLEKS                       R5 R4 K1 ["groups"]
        9 NAMECALL                         R2 R0 K5 ["setState"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R2 R1 ; [+11]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K1 [{"IsCollapsed"}]
        6 GETTABLEKS                       R6 R0 K0 ["IsCollapsed"]
        8 NOT                              R5 R6
        9 SETTABLEKS                       R5 R4 K0 ["IsCollapsed"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1
       13 RETURN                           R0 1

PROTO_18:
        0 DUPTABLE                         R1 K1 [{"groups"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R0 K0 ["groups"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K0 ["groups"]
       10 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 NAMECALL                         R1 R1 K0 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K9 [{"Cells", "CellGroups", "CellGroupHeader", "CellComponent", "CellPadding", "Size"}]
        9 GETTABLEKS                       R6 R2 K10 ["cells"]
       11 SETTABLEKS                       R6 R5 K3 ["Cells"]
       13 GETTABLEKS                       R6 R2 K11 ["groups"]
       15 SETTABLEKS                       R6 R5 K4 ["CellGroups"]
       17 GETUPVAL                         R6 2
       18 DUPTABLE                         R7 K14 [{"Collapsible", "OnExpandCollapseClicked"}]
       19 LOADB                            R8 1
       20 SETTABLEKS                       R8 R7 K12 ["Collapsible"]
       22 NEWCLOSURE                       R8 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U2
       26 SETTABLEKS                       R8 R7 K13 ["OnExpandCollapseClicked"]
       28 GETTABLEKS                       R8 R1 K5 ["CellGroupHeader"]
       30 CALL                             R6 2 1
       31 SETTABLEKS                       R6 R5 K5 ["CellGroupHeader"]
       33 GETUPVAL                         R6 4
       34 SETTABLEKS                       R6 R5 K6 ["CellComponent"]
       36 GETIMPORT                        R6 K17 [UDim2.fromOffset]
       38 LOADN                            R7 10
       39 LOADN                            R8 10
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K7 ["CellPadding"]
       43 GETIMPORT                        R6 K19 [UDim2.new]
       45 LOADN                            R7 1
       46 LOADN                            R8 0
       47 LOADN                            R9 0
       48 LOADN                            R10 144
       49 CALL                             R6 4 1
       50 SETTABLEKS                       R6 R5 K8 ["Size"]
       52 CALL                             R3 2 -1
       53 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R0 K2 ["UI"]
       18 GETTABLEKS                       R2 R3 K8 ["Components"]
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R2 K9 ["DEPRECATED_Button"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R2 K10 ["Favorites"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R2 K11 ["Grid"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R2 K12 ["Pane"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R2 K13 ["TextLabel"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R2 K14 ["LoadingIndicator"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R11 R0 K4 ["Parent"]
       54 GETTABLEKS                       R10 R11 K15 ["Dash"]
       56 CALL                             R9 1 1
       57 GETTABLEKS                       R10 R9 K16 ["join"]
       59 GETTABLEKS                       R11 R9 K17 ["map"]
       61 DUPCLOSURE                       R12 K18 [PROTO_0]
       62 GETTABLEKS                       R13 R1 K19 ["PureComponent"]
       64 LOADK                            R15 K20 ["GridStory"]
       65 NAMECALL                         R13 R13 K21 ["extend"]
       67 CALL                             R13 2 1
       68 DUPCLOSURE                       R14 K22 [PROTO_1]
       69 CAPTURE                          VAL R12
       70 SETTABLEKS                       R14 R13 K23 ["init"]
       72 DUPCLOSURE                       R14 K24 [PROTO_2]
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R5
       76 SETTABLEKS                       R14 R13 K25 ["render"]
       78 GETTABLEKS                       R14 R1 K19 ["PureComponent"]
       80 LOADK                            R16 K26 ["AutoloadGridStory"]
       81 NAMECALL                         R14 R14 K21 ["extend"]
       83 CALL                             R14 2 1
       84 DUPCLOSURE                       R15 K27 [PROTO_3]
       85 CAPTURE                          VAL R12
       86 SETTABLEKS                       R15 R14 K23 ["init"]
       88 DUPCLOSURE                       R15 K28 [PROTO_6]
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R8
       96 SETTABLEKS                       R15 R14 K25 ["render"]
       98 DUPCLOSURE                       R15 K29 [PROTO_7]
       99 DUPCLOSURE                       R16 K30 [PROTO_9]
      100 CAPTURE                          VAL R11
      101 DUPCLOSURE                       R17 K31 [PROTO_11]
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R10
      104 DUPCLOSURE                       R18 K32 [PROTO_13]
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R3
      107 DUPCLOSURE                       R19 K33 [PROTO_15]
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R4
      112 GETTABLEKS                       R20 R1 K19 ["PureComponent"]
      114 LOADK                            R22 K34 ["CellGroupsStory"]
      115 NAMECALL                         R20 R20 K21 ["extend"]
      117 CALL                             R20 2 1
      118 DUPCLOSURE                       R21 K35 [PROTO_16]
      119 SETTABLEKS                       R21 R20 K23 ["init"]
      121 DUPCLOSURE                       R21 K36 [PROTO_20]
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R18
      127 SETTABLEKS                       R21 R20 K25 ["render"]
      129 DUPTABLE                         R21 K38 [{"stories"}]
      130 NEWTABLE                         R22 0 4
      132 DUPTABLE                         R23 K41 [{"name", "story"}]
      133 LOADK                            R24 K42 ["Basic"]
      134 SETTABLEKS                       R24 R23 K39 ["name"]
      136 SETTABLEKS                       R13 R23 K40 ["story"]
      138 DUPTABLE                         R24 K41 [{"name", "story"}]
      139 LOADK                            R25 K43 ["Async autoload"]
      140 SETTABLEKS                       R25 R24 K39 ["name"]
      142 SETTABLEKS                       R14 R24 K40 ["story"]
      144 DUPTABLE                         R25 K41 [{"name", "story"}]
      145 LOADK                            R26 K44 ["CellGroups"]
      146 SETTABLEKS                       R26 R25 K39 ["name"]
      148 GETTABLEKS                       R26 R1 K45 ["createElement"]
      150 MOVE                             R27 R20
      151 DUPTABLE                         R28 K47 [{"Cells", "CellGroups"}]
      152 MOVE                             R29 R15
      153 LOADN                            R30 28
      154 CALL                             R29 1 1
      155 SETTABLEKS                       R29 R28 K46 ["Cells"]
      157 NEWTABLE                         R30 0 4
      159 LOADN                            R31 12
      160 LOADN                            R32 7
      161 LOADN                            R33 3
      162 LOADN                            R34 6
      163 SETLIST                          R30 R31 4 [1]
      165 LOADN                            R31 1
      166 MOVE                             R32 R11
      167 MOVE                             R33 R30
      168 NEWCLOSURE                       R34 P12
      169 CAPTURE                          REF R31
      170 CALL                             R32 2 1
      171 MOVE                             R29 R32
      172 CLOSEUPVALS                      R31
      173 SETTABLEKS                       R29 R28 K44 ["CellGroups"]
      175 CALL                             R26 2 1
      176 SETTABLEKS                       R26 R25 K40 ["story"]
      178 DUPTABLE                         R26 K41 [{"name", "story"}]
      179 LOADK                            R27 K48 ["CellGroupHeader"]
      180 SETTABLEKS                       R27 R26 K39 ["name"]
      182 GETTABLEKS                       R27 R1 K45 ["createElement"]
      184 MOVE                             R28 R20
      185 DUPTABLE                         R29 K49 [{"Cells", "CellGroups", "CellGroupHeader"}]
      186 MOVE                             R30 R15
      187 LOADN                            R31 24
      188 CALL                             R30 1 1
      189 SETTABLEKS                       R30 R29 K46 ["Cells"]
      191 MOVE                             R30 R17
      192 NEWTABLE                         R31 0 3
      194 LOADN                            R32 8
      195 LOADN                            R33 8
      196 LOADN                            R34 8
      197 SETLIST                          R31 R32 3 [1]
      199 CALL                             R30 1 1
      200 SETTABLEKS                       R30 R29 K44 ["CellGroups"]
      202 DUPTABLE                         R30 K53 [{"AfterContent", "Collapsible", "HeaderComponent"}]
      203 LOADB                            R31 1
      204 SETTABLEKS                       R31 R30 K50 ["AfterContent"]
      206 LOADB                            R31 0
      207 SETTABLEKS                       R31 R30 K51 ["Collapsible"]
      209 SETTABLEKS                       R19 R30 K52 ["HeaderComponent"]
      211 SETTABLEKS                       R30 R29 K48 ["CellGroupHeader"]
      213 CALL                             R27 2 1
      214 SETTABLEKS                       R27 R26 K40 ["story"]
      216 SETLIST                          R22 R23 4 [1]
      218 SETTABLEKS                       R22 R21 K37 ["stories"]
      220 RETURN                           R21 1
