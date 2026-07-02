PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Columns"]
        2 GETTABLEKS                       R3 R0 K1 ["ColumnIndex"]
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOT                        R1 ; [+17]
        6 GETTABLEKS                       R2 R1 K2 ["HeaderCellComponent"]
        8 JUMPIFNOT                        R2 ; [+14]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["createElement"]
       12 GETTABLEKS                       R3 R1 K2 ["HeaderCellComponent"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["join"]
       17 MOVE                             R5 R0
       18 GETTABLEKS                       R6 R1 K5 ["HeaderCellComponentProps"]
       20 CALL                             R4 2 -1
       21 CALL                             R2 -1 -1
       22 RETURN                           R2 -1
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K3 ["createElement"]
       26 GETUPVAL                         R3 2
       27 MOVE                             R4 R0
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Columns"]
        2 GETTABLEKS                       R3 R0 K1 ["ColumnIndex"]
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOT                        R1 ; [+17]
        6 GETTABLEKS                       R2 R1 K2 ["CellComponent"]
        8 JUMPIFNOT                        R2 ; [+14]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["createElement"]
       12 GETTABLEKS                       R3 R1 K2 ["CellComponent"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["join"]
       17 MOVE                             R5 R0
       18 GETTABLEKS                       R6 R1 K5 ["CellComponentProps"]
       20 CALL                             R4 2 -1
       21 CALL                             R2 -1 -1
       22 RETURN                           R2 -1
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K3 ["createElement"]
       26 GETUPVAL                         R3 2
       27 MOVE                             R4 R0
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["join"]
        7 MOVE                             R4 R0
        8 GETUPVAL                         R5 3
        9 CALL                             R3 2 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K9 [{["LayoutOrder"], ["Columns"], ["Rows"], ["HeaderCellComponent"], ["CellComponent"], ["Scroll"] = True}]
        9 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       13 GETTABLEKS                       R6 R0 K3 ["Columns"]
       15 SETTABLEKS                       R6 R5 K3 ["Columns"]
       17 GETTABLEKS                       R6 R0 K4 ["Rows"]
       19 SETTABLEKS                       R6 R5 K4 ["Rows"]
       21 GETUPVAL                         R7 3
       22 DUPTABLE                         R8 K10 [{"Columns"}]
       23 GETTABLEKS                       R9 R0 K3 ["Columns"]
       25 SETTABLEKS                       R9 R8 K3 ["Columns"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R7
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R8
       32 SETTABLEKS                       R6 R5 K5 ["HeaderCellComponent"]
       34 GETUPVAL                         R6 4
       35 SETTABLEKS                       R6 R5 K6 ["CellComponent"]
       37 CALL                             R3 2 -1
       38 CALL                             R1 -1 -1
       39 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["UI"]
       30 GETTABLEKS                       R5 R4 K11 ["Table"]
       32 GETTABLEKS                       R6 R0 K12 ["Src"]
       34 GETTABLEKS                       R6 R6 K13 ["Components"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R6 K14 ["RichTable"]
       40 GETTABLEKS                       R8 R8 K15 ["Cells"]
       42 GETTABLEKS                       R8 R8 K16 ["TextHeaderCell"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R6 K14 ["RichTable"]
       49 GETTABLEKS                       R9 R9 K15 ["Cells"]
       51 GETTABLEKS                       R9 R9 K17 ["TextCell"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K18 [PROTO_0]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R7
       58 DUPCLOSURE                       R10 K19 [PROTO_1]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R8
       62 DUPCLOSURE                       R11 K20 [PROTO_3]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 DUPCLOSURE                       R12 K21 [PROTO_4]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R10
       71 RETURN                           R12 1
