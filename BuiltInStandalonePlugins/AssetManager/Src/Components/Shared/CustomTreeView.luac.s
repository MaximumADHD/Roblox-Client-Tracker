PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K3 [{"index", "depth", "item"}]
        2 GETUPVAL                         R7 0
        3 LENGTH                           R6 R7
        4 ADDK                             R5 R6 K4 [1]
        5 SETTABLEKS                       R5 R4 K0 ["index"]
        7 SETTABLEKS                       R1 R4 K1 ["depth"]
        9 SETTABLEKS                       R0 R4 K2 ["item"]
       11 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       13 GETIMPORT                        R2 K7 [table.insert]
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 GETUPVAL                         R4 2
       20 GETTABLE                         R3 R4 R2
       21 JUMPIFNOT                        R3 ; [+13]
       22 GETUPVAL                         R3 3
       23 MOVE                             R4 R0
       24 CALL                             R3 1 1
       25 MOVE                             R4 R3
       26 LOADNIL                          R5
       27 LOADNIL                          R6
       28 FORGPREP                         R4
       29 GETUPVAL                         R9 4
       30 MOVE                             R10 R8
       31 ADDK                             R11 R1 K4 [1]
       32 CALL                             R9 2 0
       33 FORGLOOP                         R4 2 ; [-5]
       35 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R4 0 0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R4
        4 CAPTURE                          VAL R3
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R5
        8 MOVE                             R6 R0
        9 LOADNIL                          R7
       10 LOADNIL                          R8
       11 FORGPREP                         R6
       12 MOVE                             R11 R5
       13 MOVE                             R12 R10
       14 LOADN                            R13 0
       15 CALL                             R11 2 0
       16 FORGLOOP                         R6 2 ; [-5]
       18 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["RootItems"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Expansion"]
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 CALL                             R0 4 1
       10 RETURN                           R0 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["GetChildren"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K1 ["GetItemId"]
        6 JUMPIF                           R2 ; [+1]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R5 0 4
       18 GETTABLEKS                       R6 R0 K3 ["RootItems"]
       20 GETTABLEKS                       R7 R0 K4 ["Expansion"]
       22 MOVE                             R8 R1
       23 MOVE                             R9 R2
       24 SETLIST                          R5 R6 4 [1]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K5 ["createElement"]
       30 GETUPVAL                         R5 4
       31 DUPTABLE                         R6 K9 [{"Size", "LayoutOrder", "ZIndex"}]
       32 GETTABLEKS                       R7 R0 K6 ["Size"]
       34 SETTABLEKS                       R7 R6 K6 ["Size"]
       36 GETTABLEKS                       R7 R0 K7 ["LayoutOrder"]
       38 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       40 GETTABLEKS                       R7 R0 K8 ["ZIndex"]
       42 SETTABLEKS                       R7 R6 K8 ["ZIndex"]
       44 DUPTABLE                         R7 K11 [{"List"}]
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R8 R8 K5 ["createElement"]
       48 GETUPVAL                         R9 5
       49 DUPTABLE                         R10 K21 [{["Rows"], ["GetRowProps"], ["RowHeight"], ["RowComponent"], ["ScrollBarThickness"] = 0, ["ScrollingDirection"], ["ScrollingEnabled"] = False}]
       50 SETTABLEKS                       R3 R10 K12 ["Rows"]
       52 GETTABLEKS                       R11 R0 K13 ["GetRowProps"]
       54 SETTABLEKS                       R11 R10 K13 ["GetRowProps"]
       56 GETTABLEKS                       R11 R0 K14 ["RowHeight"]
       58 SETTABLEKS                       R11 R10 K14 ["RowHeight"]
       60 GETTABLEKS                       R11 R0 K15 ["RowComponent"]
       62 SETTABLEKS                       R11 R10 K15 ["RowComponent"]
       64 GETIMPORT                        R11 K24 [Enum.ScrollingDirection.Y]
       66 SETTABLEKS                       R11 R10 K18 ["ScrollingDirection"]
       68 CALL                             R8 2 1
       69 SETTABLEKS                       R8 R7 K10 ["List"]
       71 CALL                             R4 3 -1
       72 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["Pane"]
       25 GETTABLEKS                       R5 R3 K11 ["List"]
       27 DUPCLOSURE                       R6 K12 [PROTO_0]
       28 DUPCLOSURE                       R7 K13 [PROTO_1]
       29 DUPCLOSURE                       R8 K14 [PROTO_3]
       30 DUPCLOSURE                       R9 K15 [PROTO_5]
       31 CAPTURE                          VAL R6
       32 CAPTURE                          VAL R7
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R8
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 RETURN                           R9 1
