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
        9 GETTABLEKS                       R6 R0 K6 ["props"]
       11 GETTABLEKS                       R6 R6 K7 ["Stylizer"]
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
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K9 ["createElement"]
       28 GETUPVAL                         R9 3
       29 GETUPVAL                         R10 4
       30 DUPTABLE                         R11 K20 [{"AutomaticSize", "InitialCanvasPosition", "GetCellProps", "CellSize", "CellComponent", "CellGroups", "CellGroupHeader", "Cells", "ScrollingDirection", "SpecialCells"}]
       31 GETTABLEKS                       R12 R1 K10 ["AutomaticSize"]
       33 SETTABLEKS                       R12 R11 K10 ["AutomaticSize"]
       35 GETTABLEKS                       R12 R1 K11 ["InitialCanvasPosition"]
       37 SETTABLEKS                       R12 R11 K11 ["InitialCanvasPosition"]
       39 SETTABLEKS                       R2 R11 K12 ["GetCellProps"]
       41 SETTABLEKS                       R6 R11 K13 ["CellSize"]
       43 GETTABLEKS                       R12 R1 K21 ["RowComponent"]
       45 JUMPIF                           R12 ; [+1]
       46 GETUPVAL                         R12 5
       47 SETTABLEKS                       R12 R11 K14 ["CellComponent"]
       49 GETTABLEKS                       R12 R1 K22 ["RowGroups"]
       51 SETTABLEKS                       R12 R11 K15 ["CellGroups"]
       53 GETTABLEKS                       R12 R1 K23 ["RowGroupHeader"]
       55 SETTABLEKS                       R12 R11 K16 ["CellGroupHeader"]
       57 SETTABLEKS                       R5 R11 K17 ["Cells"]
       59 GETTABLEKS                       R12 R1 K18 ["ScrollingDirection"]
       61 SETTABLEKS                       R12 R11 K18 ["ScrollingDirection"]
       63 GETTABLEKS                       R12 R1 K24 ["SpecialRows"]
       65 SETTABLEKS                       R12 R11 K19 ["SpecialCells"]
       67 GETTABLEKS                       R12 R3 K25 ["ScrollingFrame"]
       69 MOVE                             R13 R7
       70 CALL                             R10 3 -1
       71 CALL                             R8 -1 -1
       72 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["ContextServices"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["withContext"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K4 ["Parent"]
       22 GETTABLEKS                       R4 R4 K9 ["Dash"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K10 ["join"]
       27 GETTABLEKS                       R5 R3 K11 ["omit"]
       29 GETTABLEKS                       R6 R0 K12 ["Util"]
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R6 K13 ["prioritize"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R0 K14 ["Wrappers"]
       40 GETTABLEKS                       R9 R9 K15 ["withForwardRef"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R0 K4 ["Parent"]
       47 GETTABLEKS                       R10 R10 K16 ["Roact"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETIMPORT                        R11 K1 [script]
       54 GETTABLEKS                       R11 R11 K17 ["ListRow"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETIMPORT                        R12 K1 [script]
       61 GETTABLEKS                       R12 R12 K4 ["Parent"]
       63 GETTABLEKS                       R12 R12 K18 ["Grid"]
       65 CALL                             R11 1 1
       66 NEWTABLE                         R12 0 9
       68 LOADK                            R13 K19 ["InitialCanvasPosition"]
       69 LOADK                            R14 K20 ["GetRowProps"]
       70 LOADK                            R15 K21 ["Rows"]
       71 LOADK                            R16 K22 ["RowGroupHeader"]
       72 LOADK                            R17 K23 ["RowGroups"]
       73 LOADK                            R18 K24 ["RowHeight"]
       74 LOADK                            R19 K25 ["RowComponent"]
       75 LOADK                            R20 K26 ["Stylizer"]
       76 LOADK                            R21 K27 ["SpecialRows"]
       77 SETLIST                          R12 R13 9 [1]
       79 GETTABLEKS                       R13 R9 K28 ["PureComponent"]
       81 LOADK                            R15 K29 ["List"]
       82 NAMECALL                         R13 R13 K30 ["extend"]
       84 CALL                             R13 2 1
       85 DUPCLOSURE                       R14 K31 [PROTO_1]
       86 SETTABLEKS                       R14 R13 K32 ["init"]
       88 DUPCLOSURE                       R14 K33 [PROTO_2]
       89 CAPTURE                          VAL R7
       90 SETTABLEKS                       R14 R13 K34 ["_getRowHeight"]
       92 DUPCLOSURE                       R14 K35 [PROTO_3]
       93 SETTABLEKS                       R14 R13 K36 ["getDefaultRowProps"]
       95 DUPCLOSURE                       R14 K37 [PROTO_4]
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R10
      102 SETTABLEKS                       R14 R13 K38 ["render"]
      104 MOVE                             R14 R2
      105 DUPTABLE                         R15 K39 [{"Stylizer"}]
      106 GETTABLEKS                       R16 R1 K26 ["Stylizer"]
      108 SETTABLEKS                       R16 R15 K26 ["Stylizer"]
      110 CALL                             R14 1 1
      111 MOVE                             R15 R13
      112 CALL                             R14 1 1
      113 MOVE                             R13 R14
      114 MOVE                             R14 R8
      115 MOVE                             R15 R13
      116 CALL                             R14 1 -1
      117 RETURN                           R14 -1
