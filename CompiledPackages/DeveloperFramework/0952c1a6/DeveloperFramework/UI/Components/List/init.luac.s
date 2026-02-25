PROTO_0:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 NAMECALL                         R4 R4 K0 ["getDefaultRowProps"]
        7 CALL                             R4 5 -1
        8 RETURN                           R4 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["_getRowProps"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R1 K2 ["RowHeight"]
        7 GETTABLEKS                       R5 R2 K2 ["RowHeight"]
        9 CALL                             R3 2 -1
       10 RETURN                           R3 -1

PROTO_3:
        0 DUPTABLE                         R5 K5 [{"Key", "Position", "Row", "Size", "Style"}]
        1 SETTABLEKS                       R2 R5 K0 ["Key"]
        3 SETTABLEKS                       R3 R5 K1 ["Position"]
        5 SETTABLEKS                       R1 R5 K2 ["Row"]
        7 SETTABLEKS                       R4 R5 K3 ["Size"]
        9 GETTABLEKS                       R7 R0 K6 ["props"]
       11 GETTABLEKS                       R6 R7 K7 ["Stylizer"]
       13 SETTABLEKS                       R6 R5 K4 ["Style"]
       15 RETURN                           R5 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["GetRowProps"]
        4 JUMPIF                           R2 ; [+2]
        5 GETTABLEKS                       R2 R0 K2 ["_getRowProps"]
        7 GETTABLEKS                       R3 R1 K3 ["Stylizer"]
        9 NAMECALL                         R4 R0 K4 ["_getRowHeight"]
       11 CALL                             R4 1 1
       12 GETTABLEKS                       R5 R1 K5 ["Rows"]
       14 GETIMPORT                        R6 K8 [UDim2.new]
       16 LOADN                            R7 1
       17 LOADN                            R8 0
       18 LOADN                            R9 0
       19 MOVE                             R10 R4
       20 CALL                             R6 4 1
       21 GETUPVAL                         R7 0
       22 MOVE                             R8 R1
       23 GETUPVAL                         R9 1
       24 CALL                             R7 2 1
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R8 R9 K9 ["createElement"]
       28 GETUPVAL                         R9 3
       29 GETUPVAL                         R10 4
       30 DUPTABLE                         R11 K20 [{"AutomaticSize", "InitialCanvasPosition", "GetCellProps", "CellSize", "CellComponent", "CellGroups", "CellGroupHeader", "Cells", "ScrollingDirection", "SpecialCells"}]
       31 GETTABLEKS                       R12 R1 K10 ["AutomaticSize"]
       33 SETTABLEKS                       R12 R11 K10 ["AutomaticSize"]
       35 GETUPVAL                         R13 5
       36 CALL                             R13 0 1
       37 JUMPIFNOT                        R13 ; [+3]
       38 GETTABLEKS                       R12 R1 K11 ["InitialCanvasPosition"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R12
       42 SETTABLEKS                       R12 R11 K11 ["InitialCanvasPosition"]
       44 SETTABLEKS                       R2 R11 K12 ["GetCellProps"]
       46 SETTABLEKS                       R6 R11 K13 ["CellSize"]
       48 GETTABLEKS                       R12 R1 K21 ["RowComponent"]
       50 JUMPIF                           R12 ; [+1]
       51 GETUPVAL                         R12 6
       52 SETTABLEKS                       R12 R11 K14 ["CellComponent"]
       54 GETTABLEKS                       R12 R1 K22 ["RowGroups"]
       56 SETTABLEKS                       R12 R11 K15 ["CellGroups"]
       58 GETTABLEKS                       R12 R1 K23 ["RowGroupHeader"]
       60 SETTABLEKS                       R12 R11 K16 ["CellGroupHeader"]
       62 SETTABLEKS                       R5 R11 K17 ["Cells"]
       64 GETTABLEKS                       R12 R1 K18 ["ScrollingDirection"]
       66 SETTABLEKS                       R12 R11 K18 ["ScrollingDirection"]
       68 GETTABLEKS                       R12 R1 K24 ["SpecialRows"]
       70 SETTABLEKS                       R12 R11 K19 ["SpecialCells"]
       72 GETTABLEKS                       R12 R3 K25 ["ScrollingFrame"]
       74 MOVE                             R13 R7
       75 CALL                             R10 3 -1
       76 CALL                             R8 -1 -1
       77 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R3 K7 ["ContextServices"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["withContext"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R5 R0 K4 ["Parent"]
       22 GETTABLEKS                       R4 R5 K9 ["Dash"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K10 ["join"]
       27 GETTABLEKS                       R5 R3 K11 ["omit"]
       29 GETTABLEKS                       R6 R0 K12 ["Util"]
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R6 K13 ["prioritize"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R10 R0 K14 ["Wrappers"]
       40 GETTABLEKS                       R9 R10 K15 ["withForwardRef"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R11 R0 K4 ["Parent"]
       47 GETTABLEKS                       R10 R11 K16 ["Roact"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETIMPORT                        R12 K1 [script]
       54 GETTABLEKS                       R11 R12 K17 ["ListRow"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETIMPORT                        R14 K1 [script]
       61 GETTABLEKS                       R13 R14 K4 ["Parent"]
       63 GETTABLEKS                       R12 R13 K18 ["Grid"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R13 K6 [require]
       68 GETTABLEKS                       R14 R0 K19 ["SharedFlags"]
       70 CALL                             R13 1 1
       71 GETTABLEKS                       R12 R13 K20 ["getFFlagDevFrameworkMaterialPickerImprovedScroll"]
       73 NEWTABLE                         R13 0 9
       75 LOADK                            R14 K21 ["InitialCanvasPosition"]
       76 LOADK                            R15 K22 ["GetRowProps"]
       77 LOADK                            R16 K23 ["Rows"]
       78 LOADK                            R17 K24 ["RowGroupHeader"]
       79 LOADK                            R18 K25 ["RowGroups"]
       80 LOADK                            R19 K26 ["RowHeight"]
       81 LOADK                            R20 K27 ["RowComponent"]
       82 LOADK                            R21 K28 ["Stylizer"]
       83 LOADK                            R22 K29 ["SpecialRows"]
       84 SETLIST                          R13 R14 9 [1]
       86 GETTABLEKS                       R14 R9 K30 ["PureComponent"]
       88 LOADK                            R16 K31 ["List"]
       89 NAMECALL                         R14 R14 K32 ["extend"]
       91 CALL                             R14 2 1
       92 DUPCLOSURE                       R15 K33 [PROTO_1]
       93 SETTABLEKS                       R15 R14 K34 ["init"]
       95 DUPCLOSURE                       R15 K35 [PROTO_2]
       96 CAPTURE                          VAL R7
       97 SETTABLEKS                       R15 R14 K36 ["_getRowHeight"]
       99 DUPCLOSURE                       R15 K37 [PROTO_3]
      100 SETTABLEKS                       R15 R14 K38 ["getDefaultRowProps"]
      102 DUPCLOSURE                       R15 K39 [PROTO_4]
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R10
      110 SETTABLEKS                       R15 R14 K40 ["render"]
      112 MOVE                             R15 R2
      113 DUPTABLE                         R16 K41 [{"Stylizer"}]
      114 GETTABLEKS                       R17 R1 K28 ["Stylizer"]
      116 SETTABLEKS                       R17 R16 K28 ["Stylizer"]
      118 CALL                             R15 1 1
      119 MOVE                             R16 R14
      120 CALL                             R15 1 1
      121 MOVE                             R14 R15
      122 MOVE                             R15 R8
      123 MOVE                             R16 R14
      124 CALL                             R15 1 -1
      125 RETURN                           R15 -1
