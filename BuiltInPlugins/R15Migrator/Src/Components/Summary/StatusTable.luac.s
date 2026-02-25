PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Width"]
        4 GETTABLEKS                       R3 R1 K2 ["Row"]
        6 GETTABLEKS                       R4 R1 K3 ["Style"]
        8 GETTABLEKS                       R5 R1 K4 ["ColumnIndex"]
       10 GETTABLEKS                       R7 R1 K5 ["Emphasis"]
       12 JUMPIFNOT                        R7 ; [+3]
       13 GETTABLEKS                       R6 R4 K6 ["BackgroundOdd"]
       15 JUMP                             ; [+2]
       16 GETTABLEKS                       R6 R4 K7 ["BackgroundEven"]
       18 DUPTABLE                         R7 K15 [{"Layout", "VerticalAlignment", "LayoutOrder", "Style", "BackgroundColor", "BorderSizePixel", "BorderColor3", "Size"}]
       19 GETIMPORT                        R8 K19 [Enum.FillDirection.Horizontal]
       21 SETTABLEKS                       R8 R7 K8 ["Layout"]
       23 GETIMPORT                        R8 K21 [Enum.VerticalAlignment.Center]
       25 SETTABLEKS                       R8 R7 K9 ["VerticalAlignment"]
       27 SETTABLEKS                       R5 R7 K10 ["LayoutOrder"]
       29 LOADK                            R8 K22 ["Box"]
       30 SETTABLEKS                       R8 R7 K3 ["Style"]
       32 SETTABLEKS                       R6 R7 K11 ["BackgroundColor"]
       34 LOADN                            R8 1
       35 SETTABLEKS                       R8 R7 K12 ["BorderSizePixel"]
       37 GETTABLEKS                       R8 R4 K23 ["Border"]
       39 SETTABLEKS                       R8 R7 K13 ["BorderColor3"]
       41 GETIMPORT                        R8 K26 [UDim2.new]
       43 GETTABLEKS                       R9 R2 K27 ["Scale"]
       45 GETTABLEKS                       R10 R2 K28 ["Offset"]
       47 LOADN                            R11 1
       48 LOADN                            R12 0
       49 CALL                             R8 4 1
       50 SETTABLEKS                       R8 R7 K14 ["Size"]
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R8 R9 K29 ["TEXT_COLUMN_INDEX"]
       55 JUMPIFNOTEQ                      R5 R8 ; [+45]
       57 GETUPVAL                         R9 1
       58 GETTABLEKS                       R8 R9 K30 ["createElement"]
       60 GETUPVAL                         R9 2
       61 GETUPVAL                         R12 3
       62 GETTABLEKS                       R11 R12 K31 ["Dictionary"]
       64 GETTABLEKS                       R10 R11 K32 ["join"]
       66 MOVE                             R11 R7
       67 DUPTABLE                         R12 K35 [{"Padding", "HorizontalAlignment"}]
       68 DUPTABLE                         R13 K37 [{"Left"}]
       69 LOADN                            R14 24
       70 SETTABLEKS                       R14 R13 K36 ["Left"]
       72 SETTABLEKS                       R13 R12 K33 ["Padding"]
       74 GETIMPORT                        R13 K38 [Enum.HorizontalAlignment.Left]
       76 SETTABLEKS                       R13 R12 K34 ["HorizontalAlignment"]
       78 CALL                             R10 2 1
       79 DUPTABLE                         R11 K40 [{"Text"}]
       80 GETUPVAL                         R13 1
       81 GETTABLEKS                       R12 R13 K30 ["createElement"]
       83 GETUPVAL                         R13 4
       84 DUPTABLE                         R14 K42 [{"AutomaticSize", "LayoutOrder", "Text"}]
       85 GETIMPORT                        R15 K44 [Enum.AutomaticSize.XY]
       87 SETTABLEKS                       R15 R14 K41 ["AutomaticSize"]
       89 LOADN                            R15 2
       90 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
       92 GETTABLEKS                       R15 R3 K45 ["text"]
       94 SETTABLEKS                       R15 R14 K39 ["Text"]
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K39 ["Text"]
       99 CALL                             R8 3 -1
      100 RETURN                           R8 -1
      101 GETUPVAL                         R9 1
      102 GETTABLEKS                       R8 R9 K30 ["createElement"]
      104 GETUPVAL                         R9 2
      105 GETUPVAL                         R12 3
      106 GETTABLEKS                       R11 R12 K31 ["Dictionary"]
      108 GETTABLEKS                       R10 R11 K32 ["join"]
      110 MOVE                             R11 R7
      111 DUPTABLE                         R12 K46 [{"HorizontalAlignment"}]
      112 GETIMPORT                        R13 K47 [Enum.HorizontalAlignment.Center]
      114 SETTABLEKS                       R13 R12 K34 ["HorizontalAlignment"]
      116 CALL                             R10 2 1
      117 DUPTABLE                         R11 K49 [{"Image"}]
      118 GETUPVAL                         R13 1
      119 GETTABLEKS                       R12 R13 K30 ["createElement"]
      121 GETUPVAL                         R13 5
      122 DUPTABLE                         R14 K50 [{"Size", "Image"}]
      123 GETIMPORT                        R15 K52 [UDim2.fromOffset]
      125 LOADN                            R16 16
      126 LOADN                            R17 16
      127 CALL                             R15 2 1
      128 SETTABLEKS                       R15 R14 K14 ["Size"]
      130 GETTABLEKS                       R16 R3 K53 ["complete"]
      132 JUMPIFNOT                        R16 ; [+2]
      133 LOADK                            R15 K54 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
      134 JUMP                             ; [+1]
      135 LOADK                            R15 K55 ["rbxasset://textures/R15Migrator/Icon_Error_Checkmark.png"]
      136 SETTABLEKS                       R15 R14 K48 ["Image"]
      138 CALL                             R12 2 1
      139 SETTABLEKS                       R12 R11 K48 ["Image"]
      141 CALL                             R8 3 -1
      142 RETURN                           R8 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["target"]
        6 SETLIST                          R2 R3 1 [1]
        8 NAMECALL                         R0 R0 K1 ["Set"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Localization"]
        5 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        7 NAMECALL                         R3 R3 K3 ["get"]
        9 CALL                             R3 1 1
       10 NEWTABLE                         R4 0 1
       12 DUPTABLE                         R5 K7 [{"Text", "Enabled", "OnItemClicked"}]
       13 LOADK                            R8 K8 ["StatusTable"]
       14 LOADK                            R9 K9 ["RevealInExplorer"]
       15 NAMECALL                         R6 R2 K10 ["getText"]
       17 CALL                             R6 3 1
       18 SETTABLEKS                       R6 R5 K4 ["Text"]
       20 GETTABLEKS                       R7 R0 K11 ["target"]
       22 JUMPIFNOTEQKNIL                  R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 SETTABLEKS                       R6 R5 K5 ["Enabled"]
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R6 R5 K6 ["OnItemClicked"]
       33 SETLIST                          R4 R5 1 [1]
       35 GETUPVAL                         R5 2
       36 MOVE                             R6 R3
       37 MOVE                             R7 R4
       38 CALL                             R5 2 0
       39 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["showMenu"]
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Rows"]
        4 GETTABLEKS                       R3 R1 K2 ["Title"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["OnClick"]
       10 GETTABLEKS                       R6 R1 K5 ["HeaderCellComponent"]
       12 GETTABLEKS                       R7 R1 K6 ["Localization"]
       14 GETTABLEKS                       R8 R1 K7 ["Stylizer"]
       16 GETTABLEKS                       R9 R8 K8 ["RowHeight"]
       18 GETTABLEKS                       R10 R8 K9 ["MaxTableHeight"]
       20 GETTABLEKS                       R11 R8 K10 ["ColumnOffset"]
       22 LENGTH                           R14 R2
       23 ADDK                             R13 R14 K11 [1]
       24 MUL                              R12 R13 R9
       25 GETUPVAL                         R14 0
       26 GETTABLEKS                       R13 R14 K12 ["createElement"]
       28 GETUPVAL                         R14 1
       29 DUPTABLE                         R15 K21 [{"Size", "Scroll", "Rows", "RowHeight", "ColumnHeaderHeight", "Columns", "HeaderCellComponent", "CellComponent", "LayoutOrder", "OnSelectRow", "OnSortChange", "OnRightClickRow"}]
       30 GETIMPORT                        R16 K24 [UDim2.new]
       32 LOADN                            R17 1
       33 LOADN                            R18 0
       34 LOADN                            R19 0
       35 FASTCALL2                        MATH_MIN R10 R12 ; [+5]
       37 MOVE                             R21 R10
       38 MOVE                             R22 R12
       39 GETIMPORT                        R20 K27 [math.min]
       41 CALL                             R20 2 1
       42 CALL                             R16 4 1
       43 SETTABLEKS                       R16 R15 K13 ["Size"]
       45 JUMPIFLT                         R10 R12 ; [+2]
       47 LOADB                            R16 0 +1
       48 LOADB                            R16 1
       49 SETTABLEKS                       R16 R15 K14 ["Scroll"]
       51 SETTABLEKS                       R2 R15 K1 ["Rows"]
       53 SETTABLEKS                       R9 R15 K8 ["RowHeight"]
       55 SETTABLEKS                       R9 R15 K15 ["ColumnHeaderHeight"]
       57 NEWTABLE                         R16 2 0
       59 GETUPVAL                         R18 2
       60 GETTABLEKS                       R17 R18 K28 ["TEXT_COLUMN_INDEX"]
       62 DUPTABLE                         R18 K31 [{"Name", "Width"}]
       63 SETTABLEKS                       R3 R18 K29 ["Name"]
       65 GETIMPORT                        R19 K33 [UDim.new]
       67 LOADN                            R20 1
       68 MINUS                            R21 R11
       69 CALL                             R19 2 1
       70 SETTABLEKS                       R19 R18 K30 ["Width"]
       72 SETTABLE                         R18 R16 R17
       73 GETUPVAL                         R18 2
       74 GETTABLEKS                       R17 R18 K34 ["STATUS_COLUMN_INDEX"]
       76 DUPTABLE                         R18 K31 [{"Name", "Width"}]
       77 LOADK                            R21 K35 ["StatusTable"]
       78 LOADK                            R22 K36 ["Status"]
       79 NAMECALL                         R19 R7 K37 ["getText"]
       81 CALL                             R19 3 1
       82 SETTABLEKS                       R19 R18 K29 ["Name"]
       84 GETIMPORT                        R19 K33 [UDim.new]
       86 LOADN                            R20 0
       87 MOVE                             R21 R11
       88 CALL                             R19 2 1
       89 SETTABLEKS                       R19 R18 K30 ["Width"]
       91 SETTABLE                         R18 R16 R17
       92 SETTABLEKS                       R16 R15 K16 ["Columns"]
       94 SETTABLEKS                       R6 R15 K5 ["HeaderCellComponent"]
       96 GETUPVAL                         R16 3
       97 SETTABLEKS                       R16 R15 K17 ["CellComponent"]
       99 SETTABLEKS                       R4 R15 K3 ["LayoutOrder"]
      101 SETTABLEKS                       R5 R15 K18 ["OnSelectRow"]
      103 SETTABLEKS                       R5 R15 K19 ["OnSortChange"]
      105 GETTABLEKS                       R16 R0 K38 ["showMenu"]
      107 SETTABLEKS                       R16 R15 K20 ["OnRightClickRow"]
      109 CALL                             R13 2 -1
      110 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["R15Migrator"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Roact"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["Cryo"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R2 K14 ["ContextServices"]
       36 GETTABLEKS                       R6 R2 K15 ["UI"]
       38 GETTABLEKS                       R7 R6 K16 ["TextLabel"]
       40 GETTABLEKS                       R8 R6 K17 ["Image"]
       42 GETTABLEKS                       R9 R6 K18 ["Pane"]
       44 GETTABLEKS                       R10 R6 K19 ["showContextMenu"]
       46 GETTABLEKS                       R11 R6 K20 ["Table"]
       48 GETIMPORT                        R13 K9 [require]
       50 GETTABLEKS                       R16 R1 K21 ["Src"]
       52 GETTABLEKS                       R15 R16 K22 ["Resources"]
       54 GETTABLEKS                       R14 R15 K23 ["Constants"]
       56 CALL                             R13 1 1
       57 GETTABLEKS                       R12 R13 K24 ["StatusTableData"]
       59 GETTABLEKS                       R13 R3 K25 ["PureComponent"]
       61 LOADK                            R15 K26 ["StatusTable"]
       62 NAMECALL                         R13 R13 K27 ["extend"]
       64 CALL                             R13 2 1
       65 GETTABLEKS                       R14 R3 K25 ["PureComponent"]
       67 LOADK                            R16 K28 ["CellComponent"]
       68 NAMECALL                         R14 R14 K27 ["extend"]
       70 CALL                             R14 2 1
       71 DUPCLOSURE                       R15 K29 [PROTO_0]
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 SETTABLEKS                       R15 R14 K30 ["render"]
       80 DUPCLOSURE                       R15 K31 [PROTO_3]
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R10
       83 SETTABLEKS                       R15 R13 K32 ["init"]
       85 DUPCLOSURE                       R15 K33 [PROTO_4]
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R14
       90 SETTABLEKS                       R15 R13 K30 ["render"]
       92 GETTABLEKS                       R15 R5 K34 ["withContext"]
       94 DUPTABLE                         R16 K38 [{"Stylizer", "Localization", "Plugin"}]
       95 GETTABLEKS                       R17 R5 K35 ["Stylizer"]
       97 SETTABLEKS                       R17 R16 K35 ["Stylizer"]
       99 GETTABLEKS                       R17 R5 K36 ["Localization"]
      101 SETTABLEKS                       R17 R16 K36 ["Localization"]
      103 GETTABLEKS                       R17 R5 K37 ["Plugin"]
      105 SETTABLEKS                       R17 R16 K37 ["Plugin"]
      107 CALL                             R15 1 1
      108 MOVE                             R16 R13
      109 CALL                             R15 1 1
      110 MOVE                             R13 R15
      111 RETURN                           R13 1
