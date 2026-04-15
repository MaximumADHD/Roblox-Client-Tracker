PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["OnSizeChange"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["props"]
        9 GETTABLEKS                       R1 R2 K1 ["OnSizeChange"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K0 ["props"]
       16 GETTABLEKS                       R1 R2 K2 ["Stylizer"]
       18 GETTABLEKS                       R4 R1 K3 ["RowHeight"]
       20 DIV                              R3 R0 R4
       21 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       22 GETIMPORT                        R2 K6 [math.floor]
       24 CALL                             R2 1 1
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K0 ["props"]
       28 GETTABLEKS                       R3 R4 K7 ["OnPageSizeChange"]
       30 JUMPIFNOT                        R3 ; [+13]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K0 ["props"]
       34 GETTABLEKS                       R3 R4 K7 ["OnPageSizeChange"]
       36 LOADN                            R5 1
       37 FASTCALL2                        MATH_MAX R5 R2 ; [+4]
       39 MOVE                             R6 R2
       40 GETIMPORT                        R4 K9 [math.max]
       42 CALL                             R4 2 1
       43 CALL                             R3 1 0
       44 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onSizeChange"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K2 ["PageCount"]
        4 ORK                              R2 R3 K1 [1]
        5 GETTABLEKS                       R4 R1 K3 ["PageIndex"]
        7 ORK                              R3 R4 K1 [1]
        8 LOADB                            R4 1
        9 LOADN                            R5 1
       10 JUMPIFLT                         R5 R2 ; [+7]
       12 GETTABLEKS                       R5 R1 K4 ["Footer"]
       14 JUMPIFNOTEQKNIL                  R5 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 LOADN                            R6 1
       19 JUMPIFNOTLT                      R6 R2 ; [+43]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K5 ["createElement"]
       24 GETUPVAL                         R6 1
       25 DUPTABLE                         R7 K9 [{"AutomaticSize", "Position", "AnchorPoint"}]
       26 GETIMPORT                        R8 K12 [Enum.AutomaticSize.XY]
       28 SETTABLEKS                       R8 R7 K6 ["AutomaticSize"]
       30 GETIMPORT                        R8 K15 [UDim2.fromScale]
       32 LOADN                            R9 1
       33 LOADN                            R10 0
       34 CALL                             R8 2 1
       35 SETTABLEKS                       R8 R7 K7 ["Position"]
       37 GETIMPORT                        R8 K18 [Vector2.new]
       39 LOADN                            R9 1
       40 LOADN                            R10 0
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K8 ["AnchorPoint"]
       44 DUPTABLE                         R8 K20 [{"Child"}]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R9 R10 K5 ["createElement"]
       48 GETUPVAL                         R10 2
       49 DUPTABLE                         R11 K22 [{"PageIndex", "PageCount", "OnPageChange"}]
       50 SETTABLEKS                       R3 R11 K3 ["PageIndex"]
       52 SETTABLEKS                       R2 R11 K2 ["PageCount"]
       54 GETTABLEKS                       R12 R1 K21 ["OnPageChange"]
       56 SETTABLEKS                       R12 R11 K21 ["OnPageChange"]
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K19 ["Child"]
       61 CALL                             R5 3 1
       62 JUMPIF                           R5 ; [+1]
       63 LOADNIL                          R5
       64 DUPTABLE                         R6 K24 [{"Footer", "PageNavigation"}]
       65 GETTABLEKS                       R7 R1 K4 ["Footer"]
       67 SETTABLEKS                       R7 R6 K4 ["Footer"]
       69 SETTABLEKS                       R5 R6 K23 ["PageNavigation"]
       71 GETUPVAL                         R8 0
       72 GETTABLEKS                       R7 R8 K5 ["createElement"]
       74 GETUPVAL                         R8 3
       75 DUPTABLE                         R9 K43 [{"Rows", "Columns", "Size", "Position", "SelectedRow", "SortIndex", "SortOrder", "Footer", "ShowFooter", "ShowHeader", "OnHoverRow", "OnMouseLeave", "OnSelectRow", "OnSizeChange", "OnSortChange", "RowComponent", "CellComponent", "RowHeight", "CellProps", "GetRowHeight", "AutomaticSize"}]
       76 GETTABLEKS                       R10 R1 K25 ["Rows"]
       78 SETTABLEKS                       R10 R9 K25 ["Rows"]
       80 GETTABLEKS                       R10 R1 K26 ["Columns"]
       82 SETTABLEKS                       R10 R9 K26 ["Columns"]
       84 GETTABLEKS                       R10 R1 K27 ["Size"]
       86 SETTABLEKS                       R10 R9 K27 ["Size"]
       88 GETTABLEKS                       R10 R1 K7 ["Position"]
       90 SETTABLEKS                       R10 R9 K7 ["Position"]
       92 GETTABLEKS                       R10 R1 K28 ["SelectedRow"]
       94 SETTABLEKS                       R10 R9 K28 ["SelectedRow"]
       96 GETTABLEKS                       R10 R1 K29 ["SortIndex"]
       98 SETTABLEKS                       R10 R9 K29 ["SortIndex"]
      100 GETTABLEKS                       R10 R1 K30 ["SortOrder"]
      102 SETTABLEKS                       R10 R9 K30 ["SortOrder"]
      104 JUMPIFNOT                        R4 ; [+6]
      105 GETUPVAL                         R11 0
      106 GETTABLEKS                       R10 R11 K44 ["createFragment"]
      108 MOVE                             R11 R6
      109 CALL                             R10 1 1
      110 JUMPIF                           R10 ; [+1]
      111 LOADNIL                          R10
      112 SETTABLEKS                       R10 R9 K4 ["Footer"]
      114 SETTABLEKS                       R4 R9 K31 ["ShowFooter"]
      116 GETTABLEKS                       R10 R1 K32 ["ShowHeader"]
      118 SETTABLEKS                       R10 R9 K32 ["ShowHeader"]
      120 GETTABLEKS                       R10 R1 K33 ["OnHoverRow"]
      122 SETTABLEKS                       R10 R9 K33 ["OnHoverRow"]
      124 GETTABLEKS                       R10 R1 K34 ["OnMouseLeave"]
      126 SETTABLEKS                       R10 R9 K34 ["OnMouseLeave"]
      128 GETTABLEKS                       R10 R1 K35 ["OnSelectRow"]
      130 SETTABLEKS                       R10 R9 K35 ["OnSelectRow"]
      132 GETTABLEKS                       R10 R0 K45 ["onSizeChange"]
      134 SETTABLEKS                       R10 R9 K36 ["OnSizeChange"]
      136 GETTABLEKS                       R10 R1 K37 ["OnSortChange"]
      138 SETTABLEKS                       R10 R9 K37 ["OnSortChange"]
      140 GETTABLEKS                       R10 R1 K38 ["RowComponent"]
      142 SETTABLEKS                       R10 R9 K38 ["RowComponent"]
      144 GETTABLEKS                       R10 R1 K39 ["CellComponent"]
      146 SETTABLEKS                       R10 R9 K39 ["CellComponent"]
      148 GETTABLEKS                       R10 R1 K40 ["RowHeight"]
      150 SETTABLEKS                       R10 R9 K40 ["RowHeight"]
      152 GETTABLEKS                       R10 R1 K41 ["CellProps"]
      154 SETTABLEKS                       R10 R9 K41 ["CellProps"]
      156 GETTABLEKS                       R10 R1 K42 ["GetRowHeight"]
      158 SETTABLEKS                       R10 R9 K42 ["GetRowHeight"]
      160 GETTABLEKS                       R10 R1 K6 ["AutomaticSize"]
      162 SETTABLEKS                       R10 R9 K6 ["AutomaticSize"]
      164 CALL                             R7 2 -1
      165 RETURN                           R7 -1

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
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["Typecheck"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R5 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R5 K10 ["ContextServices"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K11 ["withContext"]
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R8 R0 K2 ["UI"]
       36 GETTABLEKS                       R7 R8 K12 ["Components"]
       38 GETTABLEKS                       R6 R7 K13 ["PageNavigation"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R9 R0 K2 ["UI"]
       45 GETTABLEKS                       R8 R9 K12 ["Components"]
       47 GETTABLEKS                       R7 R8 K14 ["Pane"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R10 R0 K2 ["UI"]
       54 GETTABLEKS                       R9 R10 K12 ["Components"]
       56 GETTABLEKS                       R8 R9 K15 ["Table"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R8 R1 K16 ["PureComponent"]
       61 LOADK                            R10 K17 ["PaginatedTable"]
       62 NAMECALL                         R8 R8 K18 ["extend"]
       64 CALL                             R8 2 1
       65 GETTABLEKS                       R9 R2 K19 ["wrap"]
       67 MOVE                             R10 R8
       68 GETIMPORT                        R11 K1 [script]
       70 CALL                             R9 2 0
       71 DUPCLOSURE                       R9 K20 [PROTO_1]
       72 SETTABLEKS                       R9 R8 K21 ["init"]
       74 DUPCLOSURE                       R9 K22 [PROTO_2]
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R7
       79 SETTABLEKS                       R9 R8 K23 ["render"]
       81 MOVE                             R9 R4
       82 DUPTABLE                         R10 K25 [{"Stylizer"}]
       83 GETTABLEKS                       R11 R3 K24 ["Stylizer"]
       85 SETTABLEKS                       R11 R10 K24 ["Stylizer"]
       87 CALL                             R9 1 1
       88 MOVE                             R10 R8
       89 CALL                             R9 1 1
       90 MOVE                             R8 R9
       91 RETURN                           R8 1
