PROTO_0:
        0 DUPTABLE                         R1 K2 [{"text", "icon"}]
        1 LOADK                            R2 K3 ["Cell %d"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R2 R2 K4 ["format"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["text"]
        8 DUPTABLE                         R2 K8 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
        9 GETIMPORT                        R3 K11 [UDim2.new]
       11 LOADN                            R4 0
       12 LOADN                            R5 16
       13 LOADN                            R6 0
       14 LOADN                            R7 16
       15 CALL                             R3 4 1
       16 SETTABLEKS                       R3 R2 K7 ["Size"]
       18 SETTABLEKS                       R2 R1 K1 ["icon"]
       20 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LOADN                            R2 10000
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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K5 [{["Style"] = "BorderBox", ["Size"]}]
        7 GETIMPORT                        R5 K8 [UDim2.new]
        9 LOADN                            R6 1
       10 LOADN                            R7 0
       11 LOADN                            R8 0
       12 LOADN                            R9 400
       13 CALL                             R5 4 1
       14 SETTABLEKS                       R5 R4 K4 ["Size"]
       16 DUPTABLE                         R5 K10 [{"Grid"}]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K1 ["createElement"]
       20 GETUPVAL                         R7 2
       21 DUPTABLE                         R8 K13 [{"Cells", "CellPadding"}]
       22 GETTABLEKS                       R9 R1 K14 ["cells"]
       24 SETTABLEKS                       R9 R8 K11 ["Cells"]
       26 GETIMPORT                        R9 K16 [UDim2.fromOffset]
       28 LOADN                            R10 10
       29 LOADN                            R11 10
       30 CALL                             R9 2 1
       31 SETTABLEKS                       R9 R8 K12 ["CellPadding"]
       33 CALL                             R6 2 1
       34 SETTABLEKS                       R6 R5 K9 ["Grid"]
       36 CALL                             R2 3 -1
       37 RETURN                           R2 -1

PROTO_3:
        0 LOADN                            R1 10000
        1 SETTABLEKS                       R1 R0 K0 ["maxCellCount"]
        3 LOADN                            R1 400
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
       22 DUPTABLE                         R2 K8 [{["cells"], ["loading"] = False}]
       23 SETTABLEKS                       R1 R2 K5 ["cells"]
       25 SETTABLEKS                       R2 R0 K9 ["state"]
       27 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1], ["loading"] = False}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["cells"]
        5 NAMECALL                         R0 R0 K4 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["state"]
        3 GETTABLEKS                       R3 R3 K1 ["cells"]
        5 LENGTH                           R2 R3
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["maxCellCount"]
        9 JUMPIFNOTLE                      R3 R2 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["state"]
       15 GETTABLEKS                       R2 R2 K3 ["loading"]
       17 JUMPIFNOT                        R2 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 0
       20 DUPTABLE                         R4 K5 [{["loading"] = True}]
       21 NAMECALL                         R2 R2 K6 ["setState"]
       23 CALL                             R2 2 0
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K7 ["copy"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K0 ["state"]
       30 GETTABLEKS                       R3 R3 K1 ["cells"]
       32 CALL                             R2 1 1
       33 MOVE                             R5 R0
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K2 ["maxCellCount"]
       37 FASTCALL2                        MATH_MIN R1 R8 ; [+4]
       39 MOVE                             R7 R1
       40 GETIMPORT                        R6 K10 [math.min]
       42 CALL                             R6 2 1
       43 MOVE                             R3 R6
       44 LOADN                            R4 1
       45 FORNPREP                         R3
       46 GETTABLE                         R6 R2 R5
       47 JUMPIF                           R6 ; [+4]
       48 GETUPVAL                         R6 2
       49 MOVE                             R7 R5
       50 CALL                             R6 1 1
       51 SETTABLE                         R6 R2 R5
       52 FORNLOOP                         R3
       53 GETIMPORT                        R3 K13 [task.delay]
       55 LOADN                            R4 1
       56 NEWCLOSURE                       R5 P0
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          VAL R2
       59 CALL                             R3 2 0
       60 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{["Style"] = "None", ["AutomaticSize"], ["Size"]}]
        5 GETIMPORT                        R4 K8 [Enum.AutomaticSize.Y]
        7 SETTABLEKS                       R4 R3 K3 ["AutomaticSize"]
        9 GETIMPORT                        R4 K11 [UDim2.new]
       11 LOADN                            R5 1
       12 LOADN                            R6 0
       13 LOADN                            R7 0
       14 GETTABLEKS                       R8 R0 K12 ["width"]
       16 CALL                             R4 4 1
       17 SETTABLEKS                       R4 R3 K4 ["Size"]
       19 DUPTABLE                         R4 K17 [{"Layout", "GridPane", "Info", "LoadingIndicator"}]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["createElement"]
       23 LOADK                            R6 K18 ["UIListLayout"]
       24 DUPTABLE                         R7 K24 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
       25 GETIMPORT                        R8 K26 [Enum.FillDirection.Vertical]
       27 SETTABLEKS                       R8 R7 K19 ["FillDirection"]
       29 GETIMPORT                        R8 K28 [Enum.SortOrder.LayoutOrder]
       31 SETTABLEKS                       R8 R7 K20 ["SortOrder"]
       33 GETIMPORT                        R8 K30 [Enum.HorizontalAlignment.Center]
       35 SETTABLEKS                       R8 R7 K21 ["HorizontalAlignment"]
       37 GETIMPORT                        R8 K32 [Enum.VerticalAlignment.Top]
       39 SETTABLEKS                       R8 R7 K22 ["VerticalAlignment"]
       41 GETIMPORT                        R8 K34 [UDim.new]
       43 LOADN                            R9 0
       44 LOADN                            R10 10
       45 CALL                             R8 2 1
       46 SETTABLEKS                       R8 R7 K23 ["Padding"]
       48 CALL                             R5 2 1
       49 SETTABLEKS                       R5 R4 K13 ["Layout"]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K0 ["createElement"]
       54 GETUPVAL                         R6 1
       55 DUPTABLE                         R7 K37 [{["Style"] = "BorderBox", ["Size"], ["LayoutOrder"] = 1}]
       56 GETIMPORT                        R8 K11 [UDim2.new]
       58 LOADN                            R9 1
       59 LOADN                            R10 0
       60 LOADN                            R11 0
       61 GETTABLEKS                       R12 R0 K12 ["width"]
       63 CALL                             R8 4 1
       64 SETTABLEKS                       R8 R7 K4 ["Size"]
       66 DUPTABLE                         R8 K39 [{"Grid"}]
       67 GETUPVAL                         R9 0
       68 GETTABLEKS                       R9 R9 K0 ["createElement"]
       70 GETUPVAL                         R10 2
       71 DUPTABLE                         R11 K44 [{["Cells"], ["CellPadding"], ["OnLoadRange"], ["LayoutOrder"] = 2}]
       72 GETTABLEKS                       R12 R0 K45 ["state"]
       74 GETTABLEKS                       R12 R12 K46 ["cells"]
       76 SETTABLEKS                       R12 R11 K40 ["Cells"]
       78 GETIMPORT                        R12 K48 [UDim2.fromOffset]
       80 LOADN                            R13 10
       81 LOADN                            R14 10
       82 CALL                             R12 2 1
       83 SETTABLEKS                       R12 R11 K41 ["CellPadding"]
       85 NEWCLOSURE                       R12 P0
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U3
       88 CAPTURE                          UPVAL U4
       89 SETTABLEKS                       R12 R11 K42 ["OnLoadRange"]
       91 CALL                             R9 2 1
       92 SETTABLEKS                       R9 R8 K38 ["Grid"]
       94 CALL                             R5 3 1
       95 SETTABLEKS                       R5 R4 K14 ["GridPane"]
       97 GETUPVAL                         R5 0
       98 GETTABLEKS                       R5 R5 K0 ["createElement"]
      100 GETUPVAL                         R6 5
      101 DUPTABLE                         R7 K50 [{["AutomaticSize"], ["Text"], ["LayoutOrder"] = 2}]
      102 GETIMPORT                        R8 K52 [Enum.AutomaticSize.XY]
      104 SETTABLEKS                       R8 R7 K3 ["AutomaticSize"]
      106 LOADK                            R9 K53 ["Cells loaded: %*/%*"]
      107 GETTABLEKS                       R12 R0 K45 ["state"]
      109 GETTABLEKS                       R12 R12 K46 ["cells"]
      111 LENGTH                           R11 R12
      112 GETTABLEKS                       R12 R0 K54 ["maxCellCount"]
      114 NAMECALL                         R9 R9 K55 ["format"]
      116 CALL                             R9 3 1
      117 MOVE                             R8 R9
      118 SETTABLEKS                       R8 R7 K49 ["Text"]
      120 CALL                             R5 2 1
      121 SETTABLEKS                       R5 R4 K15 ["Info"]
      123 GETTABLEKS                       R6 R0 K45 ["state"]
      125 GETTABLEKS                       R6 R6 K56 ["loading"]
      127 JUMPIFNOT                        R6 ; [+7]
      128 GETUPVAL                         R5 0
      129 GETTABLEKS                       R5 R5 K0 ["createElement"]
      131 GETUPVAL                         R6 6
      132 DUPTABLE                         R7 K58 [{["LayoutOrder"] = 3}]
      133 CALL                             R5 2 1
      134 JUMP                             ; [+1]
      135 LOADNIL                          R5
      136 SETTABLEKS                       R5 R4 K16 ["LoadingIndicator"]
      138 CALL                             R1 3 -1
      139 RETURN                           R1 -1

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
       13 DUPTABLE                         R3 K7 [{["CellCount"], ["IsCollapsed"] = False, ["Text"]}]
       14 SETTABLEKS                       R0 R3 K3 ["CellCount"]
       16 SETTABLEKS                       R2 R3 K6 ["Text"]
       18 RETURN                           R3 1

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
        2 LOADN                            R2 1408
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{["OnClick"], ["Position"], ["Size"], ["Style"] = "Round", ["Text"]}]
        5 DUPCLOSURE                       R4 K8 [PROTO_12]
        6 SETTABLEKS                       R4 R3 K1 ["OnClick"]
        8 GETTABLEKS                       R4 R0 K2 ["Position"]
       10 SETTABLEKS                       R4 R3 K2 ["Position"]
       12 GETTABLEKS                       R4 R0 K3 ["Size"]
       14 SETTABLEKS                       R4 R3 K3 ["Size"]
       16 GETTABLEKS                       R4 R0 K9 ["Cell"]
       18 GETTABLEKS                       R4 R4 K10 ["text"]
       20 SETTABLEKS                       R4 R3 K6 ["Text"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_14:
        0 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["Style"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
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
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K1 ["createElement"]
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
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K1 ["createElement"]
       77 GETUPVAL                         R7 3
       78 DUPTABLE                         R8 K31 [{["AnchorPoint"], ["Count"], ["IsFavorited"] = False, ["OnClick"], ["Position"], ["Size"]}]
       79 GETIMPORT                        R9 K34 [Vector2.new]
       81 LOADN                            R10 1
       82 LOADK                            R11 K35 [0.5]
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K26 ["AnchorPoint"]
       86 GETTABLEKS                       R9 R0 K9 ["Favorites"]
       88 SETTABLEKS                       R9 R8 K27 ["Count"]
       90 DUPCLOSURE                       R9 K36 [PROTO_14]
       91 SETTABLEKS                       R9 R8 K30 ["OnClick"]
       93 GETIMPORT                        R9 K37 [UDim2.new]
       95 LOADN                            R10 1
       96 LOADN                            R11 -8
       97 LOADK                            R12 K35 [0.5]
       98 LOADN                            R13 0
       99 CALL                             R9 4 1
      100 SETTABLEKS                       R9 R8 K4 ["Position"]
      102 GETIMPORT                        R9 K21 [UDim2.fromOffset]
      104 LOADN                            R10 50
      105 LOADN                            R11 20
      106 CALL                             R9 2 1
      107 SETTABLEKS                       R9 R8 K5 ["Size"]
      109 CALL                             R6 2 1
      110 SETTABLEKS                       R6 R5 K9 ["Favorites"]
      112 CALL                             R2 3 -1
      113 RETURN                           R2 -1

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
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K9 [{"Cells", "CellGroups", "CellGroupHeader", "CellComponent", "CellPadding", "Size"}]
        9 GETTABLEKS                       R6 R2 K10 ["cells"]
       11 SETTABLEKS                       R6 R5 K3 ["Cells"]
       13 GETTABLEKS                       R6 R2 K11 ["groups"]
       15 SETTABLEKS                       R6 R5 K4 ["CellGroups"]
       17 GETUPVAL                         R6 2
       18 DUPTABLE                         R7 K15 [{["Collapsible"] = True, ["OnExpandCollapseClicked"]}]
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U2
       23 SETTABLEKS                       R8 R7 K14 ["OnExpandCollapseClicked"]
       25 GETTABLEKS                       R8 R1 K5 ["CellGroupHeader"]
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K5 ["CellGroupHeader"]
       30 GETUPVAL                         R6 4
       31 SETTABLEKS                       R6 R5 K6 ["CellComponent"]
       33 GETIMPORT                        R6 K18 [UDim2.fromOffset]
       35 LOADN                            R7 10
       36 LOADN                            R8 10
       37 CALL                             R6 2 1
       38 SETTABLEKS                       R6 R5 K7 ["CellPadding"]
       40 GETIMPORT                        R6 K20 [UDim2.new]
       42 LOADN                            R7 1
       43 LOADN                            R8 0
       44 LOADN                            R9 0
       45 LOADN                            R10 400
       46 CALL                             R6 4 1
       47 SETTABLEKS                       R6 R5 K8 ["Size"]
       49 CALL                             R3 2 -1
       50 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K2 ["UI"]
       18 GETTABLEKS                       R2 R2 K8 ["Components"]
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
       52 GETTABLEKS                       R10 R0 K4 ["Parent"]
       54 GETTABLEKS                       R10 R10 K15 ["Dash"]
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
      132 DUPTABLE                         R23 K42 [{["name"] = "Basic", ["story"]}]
      133 SETTABLEKS                       R13 R23 K41 ["story"]
      135 DUPTABLE                         R24 K44 [{["name"] = "Async autoload", ["story"]}]
      136 SETTABLEKS                       R14 R24 K41 ["story"]
      138 DUPTABLE                         R25 K46 [{["name"] = "CellGroups", ["story"]}]
      139 GETTABLEKS                       R26 R1 K47 ["createElement"]
      141 MOVE                             R27 R20
      142 DUPTABLE                         R28 K49 [{"Cells", "CellGroups"}]
      143 MOVE                             R29 R15
      144 LOADN                            R30 28
      145 CALL                             R29 1 1
      146 SETTABLEKS                       R29 R28 K48 ["Cells"]
      148 NEWTABLE                         R30 0 4
      150 LOADN                            R31 12
      151 LOADN                            R32 7
      152 LOADN                            R33 3
      153 LOADN                            R34 6
      154 SETLIST                          R30 R31 4 [1]
      156 LOADN                            R31 1
      157 MOVE                             R32 R11
      158 MOVE                             R33 R30
      159 NEWCLOSURE                       R34 P12
      160 CAPTURE                          REF R31
      161 CALL                             R32 2 1
      162 MOVE                             R29 R32
      163 CLOSEUPVALS                      R31
      164 SETTABLEKS                       R29 R28 K45 ["CellGroups"]
      166 CALL                             R26 2 1
      167 SETTABLEKS                       R26 R25 K41 ["story"]
      169 DUPTABLE                         R26 K51 [{["name"] = "CellGroupHeader", ["story"]}]
      170 GETTABLEKS                       R27 R1 K47 ["createElement"]
      172 MOVE                             R28 R20
      173 DUPTABLE                         R29 K52 [{"Cells", "CellGroups", "CellGroupHeader"}]
      174 MOVE                             R30 R15
      175 LOADN                            R31 24
      176 CALL                             R30 1 1
      177 SETTABLEKS                       R30 R29 K48 ["Cells"]
      179 MOVE                             R30 R17
      180 NEWTABLE                         R31 0 3
      182 LOADN                            R32 8
      183 LOADN                            R33 8
      184 LOADN                            R34 8
      185 SETLIST                          R31 R32 3 [1]
      187 CALL                             R30 1 1
      188 SETTABLEKS                       R30 R29 K45 ["CellGroups"]
      190 DUPTABLE                         R30 K58 [{["AfterContent"] = True, ["Collapsible"] = False, ["HeaderComponent"]}]
      191 SETTABLEKS                       R19 R30 K57 ["HeaderComponent"]
      193 SETTABLEKS                       R30 R29 K50 ["CellGroupHeader"]
      195 CALL                             R27 2 1
      196 SETTABLEKS                       R27 R26 K41 ["story"]
      198 SETLIST                          R22 R23 4 [1]
      200 SETTABLEKS                       R22 R21 K37 ["stories"]
      202 RETURN                           R21 1
